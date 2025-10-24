
--
-- Copyright (c) 2008-2023 Sytse van Slooten
--
-- Permission is hereby granted to any person obtaining a copy of these VHDL source files and
-- other language source files and associated documentation files ("the materials") to use
-- these materials solely for personal, non-commercial purposes.
-- You are also granted permission to make changes to the materials, on the condition that this
-- copyright notice is retained unchanged.
--
-- The materials are distributed in the hope that they will be useful, but WITHOUT ANY WARRANTY;
-- without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
--

-- $Revision$

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use work.pdp2011.all;

entity top is
   port(
      vgar : out std_logic_vector(1 downto 0) ;
      vgag : out std_logic_vector(1 downto 0) ;
      vgab : out std_logic_vector(1 downto 0) ;
      vgah : out std_logic;
      vgav : out std_logic;

      ps2k_c : in std_logic;
      ps2k_d : in std_logic;
		
		audio : buffer std_logic ;

      clkin : in std_logic;

      tx : out std_logic;
      rx : in std_logic;
      resetbtn : in std_logic
   );
end top;

architecture implementation of top is

component pll is
   port(
      inclk0 : in std_logic := '0';
      c0 : out std_logic
   );
end component;


signal c0 : std_logic;
signal reset: std_logic;
signal vga_hsync : std_logic;
signal vga_vsync : std_logic;
signal vga_fb : std_logic;
signal vga_ht : std_logic;

signal txtx : std_logic;
signal rxrx : std_logic;

signal vtbell : std_logic ;
signal bell_counter : integer range 0 to 32767 := 0;
signal bell_duration : integer range 0 to 511 := 500;

begin
   pll0: pll port map(
      inclk0 => clkin,
      c0 => c0
   );

   vt0: vt10x port map(
      vga_hsync => vga_hsync,
      vga_vsync => vga_vsync,
      vga_fb => vga_fb,
      vga_ht => vga_ht,

      rx => rxrx,
      tx => txtx,
		bps => 115200,

      ps2k_c => ps2k_c,
      ps2k_d => ps2k_d,
      teste => '0',
      testf => '0',
      vga_cursor_block => '0',
      vga_cursor_blink => '1',

      vttype => 100,
		vtbell => vtbell,

      cpuclk => c0,
      clk50mhz => clkin,
      reset => reset
   );

   reset <= (not resetbtn);

   tx <= txtx ; -- when sw(9) = '1' else '1';
   rxrx <= rx ; --when sw(9) = '1' else rx;

   vgag <= "11" when vga_fb = '1' else "01" when vga_ht = '1' else "00";
   vgab <= "11" when vga_fb = '1' else "01" when vga_ht = '1' else "00";
   vgar <= "11" when vga_fb = '1' else "01" when vga_ht = '1' else "00";
   vgav <= vga_vsync;
   vgah <= vga_hsync;
	
	process(c0) begin
		if c0 = '1' and c0'event then
			if vtbell = '0' then
				bell_duration <= 500 ;
			else
				if bell_duration > 110 then
					bell_duration <= 0 ;
				end if ;
			end if ;

			if bell_duration < 110 then
				bell_counter <= bell_counter + 1 ;
				if bell_counter > 11363 then
					bell_counter <= 0 ;
					audio <= not audio ;
					bell_duration <= bell_duration + 1 ;
				end if ;
			end if ;
		end if ;
	end process ;

end implementation;

