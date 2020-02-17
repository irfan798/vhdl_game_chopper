-- author: Furkan Cayci - Irfan Bilaloglu - Atakan Tatli, 2019
-- description: object buffer that holds the objects to display
--    object locations can be controlled from upper level
--    example contains a wall, a rectanble box and a round ball

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity displaybuffer is
    generic (
        OBJECT_SIZE : natural := 16;
        OBJE_SAYISI : natural := 50; --max obje sayisi
        PIXEL_SIZE : natural := 24;
        UPSIZE : natural := 5
    );
    port (    
        clk                : in  std_logic;
        video_active       : in  std_logic;
        pixel_x, pixel_y   : in  std_logic_vector(OBJECT_SIZE-1 downto 0);
        rgb                : out std_logic_vector(PIXEL_SIZE-1 downto 0);           
        
        -- Bram
        bram_enb    : out std_logic;
        bram_addrb  : out std_logic_vector(0 to 31);
        bram_doutb  : in  std_logic_vector(0 to 31);
        bram_wenb   : out std_logic_vector(0 to 3);
        bram_dinb   : out std_logic_vector(0 to 31);
        bram_rstb : out std_logic;
        
        counter_out : out integer;
        obj_x_out   : out unsigned(OBJECT_SIZE-1 downto 0);
        obj_w_out   : out unsigned(OBJECT_SIZE-1 downto 0);
        obj_render_bit : out std_logic               
        
    );
end displaybuffer;

architecture rtl of displaybuffer is

	signal bram_data_buffer : std_logic_vector(0 to 31);
    signal bram_addr_buffer : std_logic_vector(0 to 31);
    
    constant ADAM_BUYUKLUK : integer := 40;
    
    
    --Object type.
    type OBJECT_TYPE is record
      x  : unsigned(OBJECT_SIZE-1 downto 0);
      y  : unsigned(OBJECT_SIZE-1 downto 0);
      width  : unsigned(OBJECT_SIZE-1 downto 0);
      height  : unsigned(OBJECT_SIZE-1 downto 0);
      color  : std_logic_vector(23 downto 0);
      typ : unsigned (7 downto 0);
    end record OBJECT_TYPE;
    
    type t_objeler is array (OBJE_SAYISI-1 downto 0) of OBJECT_TYPE;
    
    signal objeler : t_objeler;
    
    signal i : integer;
    signal object_prop : std_logic_vector(0 to 1);
    
    signal counter : integer range 0 to 5000 := 0;
    signal user_obj_number : integer; --ilk objenin reservedden al
          
    -- signals that holds the x, y coordinates
    signal pix_x, pix_y: unsigned (OBJECT_SIZE-1 downto 0);
    
    signal rgb_bu : std_logic_vector(PIXEL_SIZE-1 downto 0);
    
    
    

    type adam_type is array (0 to 40) of std_logic_vector(0 to 40);
    type texture_1d is array(0 to 9) of std_logic_vector(0 to 23); 
    type texture is array(0 to 9) of texture_1d;

    
    constant ADAM_IDLE: adam_type := (
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00111111000000000000000000000000000000000",
    "00101111100000000000000000000000000000000",
    "00101111100000000000000000000000000000000",
    "00101111100000000000000000000000000000000",
    "00111111100000000000000000000000000000000",
    "00011111100000000000000000000000000000000",
    "00000010100000011100000000000000000000000",
    "00000010100000111110000000000000000000000",
    "00000010100001111111000000000000000000000",
    "00001111110001100111000000000000000000000",
    "00001000010001000001000000000000000000000",
    "00001000011110110101111111000000000000000",
    "00001000011111100111111111100000000000000",
    "00001000011111111111111111110000000000000",
    "00001111111111111111111111110000000000000",
    "00000111111111111111111111110000000000000",
    "00001111111111111111111111110000000000000",
    "00001000000001111111111111110000000000000",
    "00001000000001111111111111110000000000000",
    "00001000000001111111111111110000000000000",
    "00001000000001111111111111110000000000000",
    "00001111111111111111111111110000000000000",
    "00000111111111111111111111110000000000000",
    "00000111111111111111111111110000000000000",
    "00000111111111111111111111110000000000000",
    "00000111111111111111111111110000000000000",
    "00000011111111111111111111100000000000000",
    "00000011111111110011111111100000000000000",
    "00000011111111111111111111100000000000000",
    "00000011111111111111111111000000000000000",
    "00000001111000000000011110000000000000000",
    "00000001110000000000001100000000000000000",
    "00000000100000000000000100000000000000000",
    "00000000111111111111111110000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000"
    );

    constant ADAM_CHOP: adam_type := (
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000001111000000000000000000000000000",
    "00000000011111100000000000000000000000000",
    "00000000111001100000000000000000000000000",
    "00000000110000100000000000000000000000000",
    "00111111101001011111110000000000000000000",
    "01111111111001111111110000000000000000000",
    "11111111110001111111111000000000000000000",
    "11111111111111111111111000000000000000000",
    "11111111111111111111111000000000000000000",
    "11111111111111111111111111110000000000000",
    "11111111111000000000111111111111111111000",
    "11111111101000000000011100001111111111100",
    "11111111101000000000011100001000111111100",
    "11111111101000000000011100001111111111100",
    "11111111101000000000011100001000000000000",
    "11111111111111111111111111110000000000000",
    "11111111111111111111111100000000000000000",
    "11111111111111111111111100000000000000000",
    "11111111111111111111111100000000000000000",
    "01111111111111111111111000000000000000000",
    "01111111111000111111111000000000000000000",
    "01111111111111111111111000000000000000000",
    "01111111111111111111110000000000000000000",
    "00111111111111111111100000000000000000000",
    "00011100000000000111000000000000000000000",
    "00011000000000000010000000000000000000000",
    "00001100000000000011000000000000000000000",
    "00001111111111111111100000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000"
    );    
    
    constant agac_tex : texture := (
        (x"662200", x"662200", x"662200", x"774411", x"662200", x"662200", x"662200", x"662200", x"662200", x"662200"),
        (x"662200", x"774411", x"662200", x"774411", x"662200", x"662200", x"774411", x"662200", x"662200", x"662200"),
        (x"662200", x"774411", x"662200", x"774411", x"662200", x"662200", x"774411", x"662200", x"662200", x"662200"),
        (x"662200", x"774411", x"774411", x"774411", x"662200", x"662200", x"774411", x"662200", x"774411", x"662200"),
        (x"662200", x"662200", x"774411", x"774411", x"662200", x"662200", x"774411", x"662200", x"774411", x"662200"),
        (x"662200", x"662200", x"662200", x"774411", x"662200", x"662200", x"774411", x"662200", x"774411", x"662200"),
        (x"662200", x"662200", x"662200", x"774411", x"662200", x"662200", x"774411", x"662200", x"774411", x"662200"),
        (x"662200", x"662200", x"662200", x"774411", x"662200", x"662200", x"662200", x"662200", x"662200", x"774411"),
        (x"662200", x"662200", x"662200", x"774411", x"662200", x"662200", x"662200", x"662200", x"662200", x"774411"),
        (x"662200", x"662200", x"662200", x"774411", x"662200", x"662200", x"662200", x"662200", x"662200", x"774411")
    );
    
    constant cim_tex : texture := (
        (x"11aa00", x"11aa00", x"662200", x"11aa00", x"11aa00", x"662200", x"11aa00", x"11aa00", x"662200", x"11aa00"),
        (x"11aa00", x"662200", x"11aa00", x"662200", x"11aa00", x"11aa00", x"11aa00", x"662200", x"11aa00", x"662200"),
        (x"662200", x"11aa00", x"11aa00", x"11aa00", x"662200", x"662200", x"662200", x"11aa00", x"11aa00", x"11aa00"),
        (x"11aa00", x"11aa00", x"662200", x"11aa00", x"11aa00", x"662200", x"11aa00", x"11aa00", x"662200", x"662200"),
        (x"11aa00", x"11aa00", x"11aa00", x"11aa00", x"11aa00", x"11aa00", x"11aa00", x"11aa00", x"11aa00", x"11aa00"),
        (x"11aa00", x"11aa00", x"662200", x"11aa00", x"11aa00", x"662200", x"662200", x"11aa00", x"11aa00", x"11aa00"),
        (x"11aa00", x"662200", x"11aa00", x"662200", x"11aa00", x"11aa00", x"11aa00", x"11aa00", x"11aa00", x"662200"),
        (x"662200", x"11aa00", x"11aa00", x"11aa00", x"662200", x"11aa00", x"11aa00", x"11aa00", x"662200", x"11aa00"),
        (x"11aa00", x"11aa00", x"11aa00", x"11aa00", x"11aa00", x"662200", x"662200", x"662200", x"11aa00", x"11aa00"),
        (x"11aa00", x"11aa00", x"662200", x"11aa00", x"11aa00", x"11aa00", x"662200", x"11aa00", x"11aa00", x"662200")
    );
    
     constant adam_tex : texture := (
         (x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333"),
         (x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333"),
         (x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F", x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F"),
         (x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F", x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F"),
         (x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F", x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F"),
         (x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F", x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F"),
         (x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F", x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F"),
         (x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F", x"333333", x"BB225F", x"BB225F", x"BB225F", x"BB225F"),
         (x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333"),
         (x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333", x"333333")
    ); 
    
    constant bulut_tex : texture := (
        (x"2244dd", x"2244dd", x"dddddd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"dddddd", x"2244dd"),
        (x"2244dd", x"dddddd", x"dddddd", x"dddddd", x"2244dd", x"2244dd", x"2244dd", x"dddddd", x"dddddd", x"dddddd"),
        (x"dddddd", x"2244dd", x"2244dd", x"dddddd", x"dddddd", x"2244dd", x"dddddd", x"dddddd", x"2244dd", x"2244dd"),
        (x"dddddd", x"2244dd", x"2244dd", x"2244dd", x"dddddd", x"dddddd", x"dddddd", x"2244dd", x"2244dd", x"dddddd"),
        (x"2244dd", x"2244dd", x"dddddd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd"),
        (x"dddddd", x"2244dd", x"2244dd", x"dddddd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"dddddd", x"dddddd"),
        (x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd"),
        (x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd"),
        (x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd"),
        (x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd", x"2244dd")
    );


--if pix_x > objeler(j).x and pix_x < objeler(j).x + objeler(j).width and pix_y > objeler(j).y and pix_y < objeler(j).y + objeler(j).height  then  
--    if objeler(j).typ = 3 then
--        --row_bit := ADAM_IDLE(to_integer(pix_y - obj.y))(to_integer(pix_x - obj.x));
        
--        if row_bit='1' then
--            rgb_buffer := objeler(j).color;
--        else
--            rgb_buffer := rgb_buffer;
--        end if;
--     else
--        rgb_buffer := objeler(j).color; 
--    end if;     
                                             
--end if;



--                  if true then
--                    r := unsigned(objeler(j).color(23 downto 16));
--                    g := unsigned(objeler(j).color(15 downto 8));
--                    b := unsigned(objeler(j).color(7 downto 0));
                    
--                    r := ( op*r + (100-op)*unsigned(rgb_buffer(23 downto 16)) ) / 100;
--                    g := ( op*g + (100-op)*unsigned(rgb_buffer(15 downto 8)) ) / 100;
--                    b := ( op*b + (100-op)*unsigned(rgb_buffer(7 downto 0)) ) / 100;
                    
--                    rgb_buffer := std_logic_vector(r&g&b);
                  
--                  else
--                    rgb_buffer := objeler(j).color; 
--                  end if;  





begin
    --counter_out <= user_obj_number;
    rgb <= rgb_bu;

    bram_wenb <= (others => '0');  -- Always disable writing, only c can write to the bram
    bram_rstb <= '0';              -- Always disable reset
    bram_dinb <= (others => '0'); -- Nothing to write from here

    pix_x <= unsigned(pixel_x);
    pix_y <= unsigned(pixel_y);
        
  bram_enb <= '1'; --when video_active = '1' else '0';
  
  bram_addrb <= bram_addr_buffer;
  bram_data_buffer <= bram_doutb;
  
  i <= to_integer(unsigned(bram_addr_buffer(12 to 27))); --1 clock gecikmeli
  object_prop <= bram_addr_buffer(28 to 29);
  
  --obj_x_out <= to_unsigned(user_obj_number, obj_x_out'length); 
  --counter_out <= user_obj_number;


process(clk, bram_data_buffer) is
 begin
 if rising_edge(clk) then
    
    --Address yazildiktan 2 clock sonra data_buffer a geliyor
    --Yani clock 6 iken 4 almamiz gerek
    bram_addr_buffer <= std_logic_vector(to_signed(counter*4, 32));
    
    if bram_addr_buffer = x"00000010" then
        user_obj_number <= to_integer(unsigned(bram_data_buffer(16 to 31)));
    end if;
    
    if i < user_obj_number or i < 2 then

        if counter > 1 then -- 2 olursa atamalara basla
                   
             case counter mod 4 is     
               when 2 =>
                 objeler(i).x <= unsigned(bram_data_buffer(0 to 15));
                 objeler(i).y <= unsigned(bram_data_buffer(16 to 31));
               when 3 =>
                 objeler(i).width <= unsigned(bram_data_buffer(0 to 15));     
                 objeler(i).height <= unsigned(bram_data_buffer(16 to 31));  
               when 0 =>
                 objeler(i).typ <= unsigned(bram_data_buffer(0 to 7));
                 objeler(i).color <= bram_data_buffer(8 to 31);
               when others =>
                 null;           
               end case;
         end if;
     
   else
       null;
   end if;     

    if counter < user_obj_number*4+2 or counter < 6 then 
        counter <= counter + 1;
    else
        counter <= 0;
    end if;

 
 end if;
end process;


process(clk, video_active, pix_x, pix_y, objeler)
variable rgb_buffer : std_logic_vector(PIXEL_SIZE-1 downto 0);
variable row_bit    : std_logic;
variable obj : OBJECT_TYPE;
variable textpix : std_logic_vector(PIXEL_SIZE-1 downto 0);
 
  begin
    if video_active = '1' then
    
     if rising_edge(clk) then

    
        rgb_buffer := x"FFFFFF"; --Arkaplan
        row_bit := '0'; --default
        
        for j in 0 to OBJE_SAYISI-1 loop
            --atanmayan objeleri bosuna renderlamaya calisma
            if j < user_obj_number then
                obj := objeler(j);
                row_bit := '0'; --default
                
                obj_w_out <= obj.width;
                obj_x_out <= obj.x;

                if pix_x >= objeler(j).x and pix_x < objeler(j).x + objeler(j).width 
                and pix_y >= objeler(j).y and pix_y < objeler(j).y + objeler(j).height  then
                
                    if obj.typ = 1 then
                        row_bit := '0';
                        rgb_buffer := objeler(j).color;
                    elsif obj.typ = 3 then 
                        counter_out <= to_integer( ( (pix_x - obj.x ) - ( (pix_x - obj.x) mod UPSIZE ) ) / UPSIZE );
                        row_bit := ADAM_IDLE(to_integer( (pix_y - obj.y)/UPSIZE) )(to_integer( ( (pix_x - obj.x ) - ( (pix_x - obj.x) mod UPSIZE ) ) / UPSIZE ));                                  
                    elsif obj.typ = 4 then
                        counter_out <= ADAM_BUYUKLUK - to_integer(( (pix_x - obj.x ) - ( (pix_x - obj.x) mod UPSIZE ) ) / UPSIZE  );
                        row_bit := ADAM_IDLE(to_integer( (pix_y - obj.y)/UPSIZE) )(ADAM_BUYUKLUK - to_integer(( (pix_x - obj.x ) - ( (pix_x - obj.x) mod UPSIZE ) ) / UPSIZE  )); 
                    elsif obj.typ = 5 then  
                        row_bit := ADAM_CHOP(to_integer( (pix_y - obj.y)/UPSIZE) )(to_integer( (pix_x - obj.x)/UPSIZE) );
                    elsif obj.typ = 6 then  
                        row_bit := ADAM_CHOP(to_integer( (pix_y - obj.y)/UPSIZE) )(ADAM_BUYUKLUK - to_integer((pix_x - obj.x)/UPSIZE) );
                    elsif obj.typ = 8 then  
                        rgb_buffer := cim_tex(to_integer((pix_y) mod 10))(to_integer((pix_x) mod 10));
                    elsif obj.typ = 9 then  
                        rgb_buffer := agac_tex(to_integer((pix_y) mod 10))(to_integer((pix_x) mod 10));
                    elsif obj.typ = 10 then  
                        rgb_buffer := bulut_tex(to_integer((pix_y) mod 10))(to_integer((pix_x) mod 10));
                    else
                        row_bit := '1';
                    end if;                            
                     
                     obj_render_bit <= row_bit;
                     
                     if row_bit='1' then
                         if user_obj_number > 14 then
                            rgb_buffer := objeler(j).color;
                         else 
                            rgb_buffer := adam_tex(to_integer((pix_y) mod 10))(to_integer((pix_x) mod 10));
                         end if;
                     end if;
                                                                                                                                                                            
                end if; --alan ici ise
             end if; --user_obj_number      

            
        end loop;
        rgb <= rgb_buffer;
        
     end if; --clock 
    
     else
        rgb <= x"CDCDCD";
    end if;
end process;


end rtl;



--if pix_x > objeler(j).x and pix_x < objeler(j).x + objeler(j).width and pix_y > objeler(j).y and pix_y < objeler(j).y + objeler(j).height  then  
--    if objeler(j).typ = 3 then
--        --row_bit := ADAM_IDLE(to_integer(pix_y - obj.y))(to_integer(pix_x - obj.x));
        
--        if row_bit='1' then
--            rgb_buffer := objeler(j).color;
--        else
--            rgb_buffer := rgb_buffer;
--        end if;
--     else
--        rgb_buffer := objeler(j).color; 
--    end if;     
                                             
--end if;



--                  if true then
--                    r := unsigned(objeler(j).color(23 downto 16));
--                    g := unsigned(objeler(j).color(15 downto 8));
--                    b := unsigned(objeler(j).color(7 downto 0));
                    
--                    r := ( op*r + (100-op)*unsigned(rgb_buffer(23 downto 16)) ) / 100;
--                    g := ( op*g + (100-op)*unsigned(rgb_buffer(15 downto 8)) ) / 100;
--                    b := ( op*b + (100-op)*unsigned(rgb_buffer(7 downto 0)) ) / 100;
                    
--                    rgb_buffer := std_logic_vector(r&g&b);
                  
--                  else
--                    rgb_buffer := objeler(j).color; 
--                  end if;  




--                    case to_integer(obj.typ) is
--                        when 1 =>
--                            row_bit := '0';
--                            rgb_buffer := objeler(j).color;
--                        when 3 => --Adam idle 
--                            counter_out <= to_integer( ( (pix_x - obj.x ) - ( (pix_x - obj.x) mod UPSIZE ) ) / UPSIZE );
--                            row_bit := ADAM_IDLE(to_integer( (pix_y - obj.y)/UPSIZE) )(to_integer( ( (pix_x - obj.x ) - ( (pix_x - obj.x) mod UPSIZE ) ) / UPSIZE ));
--                        when 4 => --Adam idle aynala
--                            counter_out <= ADAM_BUYUKLUK - to_integer(( (pix_x - obj.x ) - ( (pix_x - obj.x) mod UPSIZE ) ) / UPSIZE  );
--                            row_bit := ADAM_IDLE(to_integer( (pix_y - obj.y)/UPSIZE) )(ADAM_BUYUKLUK - to_integer(( (pix_x - obj.x ) - ( (pix_x - obj.x) mod UPSIZE ) ) / UPSIZE  ));
--                        when 5 => --Adam chop
--                            row_bit := ADAM_CHOP(to_integer( (pix_y - obj.y)/UPSIZE) )(to_integer( (pix_x - obj.x)/UPSIZE) );  
--                        when 6 => --Adam chop aynala
--                             row_bit := ADAM_CHOP(to_integer( (pix_y - obj.y)/UPSIZE) )(ADAM_BUYUKLUK - to_integer((pix_x - obj.x)/UPSIZE) );
--                        when 8 => --cim texture
--                            rgb_buffer := cim_tex(to_integer((pix_x) mod 10))(to_integer((pix_y) mod 10));
--                        when 9 => --agac texture
--                             rgb_buffer := agac_tex(to_integer((pix_x) mod 10))(to_integer((pix_y) mod 10));
--                        when 10 => --bulut texture
--                              rgb_buffer := bulut_tex(to_integer((pix_x) mod 10))(to_integer((pix_y) mod 10));
--                        when others =>
--                            row_bit := '1';
--                     end case;

