--                                                        ____  _____
--                            ________  _________  ____  / __ \/ ___/
--                           / ___/ _ \/ ___/ __ \/ __ \/ / / /\__ \
--                          / /  /  __/ /__/ /_/ / / / / /_/ /___/ /
--                         /_/   \___/\___/\____/_/ /_/\____//____/
-- 
-- ======================================================================
--
--   title:        IP-Core - Clock - Top level entity
--
--   project:      ReconOS64
--   author:       see AUTHORS
--   description:  A clock manager which can be configures via the AXI
--                 bus. Therefore it provides the following write only
--                 registers:
--                   Reg#i#: Clock 1 and 2 register of pll#i#
--
-- ======================================================================



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity reconos_clock_user_logic is
	--
	-- Generic definitions
	--
	--   C_NUM_CLOCKS - number of clocks
	--
	--   C_CLKIN_PERIOD - input clock period
	--
	--   C_CLK#i# - pll generics
	--
	generic (
		C_NUM_CLOCKS : integer := 1;

		C_CLKIN_PERIOD  : real := 10.00;

				C_CLK0_CLKFBOUT_MULT : integer := 16;
		C_CLK0_DIVCLK_DIVIDE : integer := 1;
		C_CLK0_CLKOUT_DIVIDE : integer := 16;
		
		C_CLK1_CLKFBOUT_MULT : integer := 16;
		C_CLK1_DIVCLK_DIVIDE : integer := 1;
		C_CLK1_CLKOUT_DIVIDE : integer := 16
		

	);

	--
	-- Port defintions
	--
	--   CLK_Ref - reference clock
	--
	--   CLK#i#_ - clock outputs
	--
	--   BUS2IP_/IP2BUS_ - axi ipif signals
	--
	port (
		CLK_Ref       : in std_logic;

				CLK0_Out    : out std_logic;
		CLK0_Locked : out std_logic;
		
		CLK1_Out    : out std_logic;
		CLK1_Locked : out std_logic;
		


		BUS2IP_Clk    : in  std_logic;
		BUS2IP_Resetn : in  std_logic;
		BUS2IP_Data   : in  std_logic_vector(31 downto 0);
		BUS2IP_CS     : in  std_logic_vector(C_NUM_CLOCKS - 1 downto 0);
		BUS2IP_RdCE   : in  std_logic_vector(C_NUM_CLOCKS - 1 downto 0);
		BUS2IP_WrCE   : in  std_logic_vector(C_NUM_CLOCKS - 1 downto 0);
		IP2BUS_Data   : out std_logic_vector(31 downto 0);
		IP2BUS_RdAck  : out std_logic;
		IP2BUS_WrAck  : out std_logic;
		IP2BUS_Error  : out std_logic
	);
end entity reconos_clock_user_logic;

architecture imp of reconos_clock_user_logic is
	--
	-- Internal state machine
	--
	--   state_type - vhdl type of the states
	--   state      - instatntiation of the state
	--
	type state_type is (STATE_WAIT,STATE_RESET,STATE_ACK,
	                    STATE_READ0,STATE_READRDY0,STATE_WRITE0,STATE_WRITERDY0,
	                    STATE_READ1,STATE_READRDY1,STATE_WRITE1,STATE_WRITERDY1);
	signal state : state_type := STATE_WAIT;

	--
	-- Internal signals
	--
	--   req      - indication of write request
	--   pll_     - pll drp multiplexed signals
	--   pll#i#_  - pll drp signal
	--
	--   pll#i#_clk, pll#i#_clkbuf - pll clock (buffered) output
	--
	signal req : std_logic;

	signal pll_daddr         : std_logic_vector(7 downto 0);
	signal pll_di, pll_do    : std_logic_vector(15 downto 0);
	signal pll_den, pll_dwe  : std_logic;
	signal pll_drdy, pll_rst : std_logic;

		signal pll0_daddr               : std_logic_vector(7 downto 0);
	signal pll0_di, pll0_do    : std_logic_vector(15 downto 0);
	signal pll0_den, pll0_dwe  : std_logic;
	signal pll0_drdy, pll0_rst : std_logic;
	signal pll0_locked              : std_logic;

	signal pll0_clk, pll0_clkfb, pll0_clkbuf : std_logic;
	
	signal pll1_daddr               : std_logic_vector(7 downto 0);
	signal pll1_di, pll1_do    : std_logic_vector(15 downto 0);
	signal pll1_den, pll1_dwe  : std_logic;
	signal pll1_drdy, pll1_rst : std_logic;
	signal pll1_locked              : std_logic;

	signal pll1_clk, pll1_clkfb, pll1_clkbuf : std_logic;
	

begin

	-- == Instantiation of pll primitives =================================

		pll0 : PLLE2_ADV
		generic map (
			CLKIN1_PERIOD => C_CLKIN_PERIOD,
			CLKFBOUT_MULT => C_CLK0_CLKFBOUT_MULT,
			DIVCLK_DIVIDE => C_CLK0_DIVCLK_DIVIDE,

			CLKOUT0_DIVIDE => C_CLK0_CLKOUT_DIVIDE
		)

		port map (
			CLKIN1   => CLK_Ref,
			CLKIN2   => '0',
			CLKINSEL => '1',

			CLKFBOUT => pll0_clkfb,
			CLKFBIN  => pll0_clkfb,

			CLKOUT0 => pll0_clk,

			DCLK   => BUS2IP_Clk,
			DADDR  => pll0_daddr(6 downto 0),
			DO     => pll0_do,
			DI     => pll0_di,
			DEN    => pll0_den,
			DWE    => pll0_dwe,
			DRDY   => pll0_drdy,
			PWRDWN => '0',
			LOCKED => pll0_locked,
			RST    => pll0_rst
		);

	bufg_pll0 : BUFGCE
		port map (
		I => pll0_clk,
		O => pll0_clkbuf,
		CE => pll0_locked
	);
	
	pll1 : PLLE2_ADV
		generic map (
			CLKIN1_PERIOD => C_CLKIN_PERIOD,
			CLKFBOUT_MULT => C_CLK1_CLKFBOUT_MULT,
			DIVCLK_DIVIDE => C_CLK1_DIVCLK_DIVIDE,

			CLKOUT0_DIVIDE => C_CLK1_CLKOUT_DIVIDE
		)

		port map (
			CLKIN1   => CLK_Ref,
			CLKIN2   => '0',
			CLKINSEL => '1',

			CLKFBOUT => pll1_clkfb,
			CLKFBIN  => pll1_clkfb,

			CLKOUT0 => pll1_clk,

			DCLK   => BUS2IP_Clk,
			DADDR  => pll1_daddr(6 downto 0),
			DO     => pll1_do,
			DI     => pll1_di,
			DEN    => pll1_den,
			DWE    => pll1_dwe,
			DRDY   => pll1_drdy,
			PWRDWN => '0',
			LOCKED => pll1_locked,
			RST    => pll1_rst
		);

	bufg_pll1 : BUFGCE
		port map (
		I => pll1_clk,
		O => pll1_clkbuf,
		CE => pll1_locked
	);
	



	-- == Process definitions =============================================

	--
	-- Implements the access logic via the drp port
	--
	clk_mg : process(BUS2IP_Clk,BUS2IP_Resetn) is
	begin
		if BUS2IP_Resetn = '0' then
			state <= STATE_WAIT;
		elsif rising_edge(BUS2IP_Clk) then
			case state is
				when STATE_WAIT =>
					if req = '1' then
						state <= STATE_RESET;
					end if;

				when STATE_RESET =>
					state <= STATE_READ0;

				when STATE_READ0 =>
					state <= STATE_READRDY0;

				when STATE_READRDY0 =>
					if pll_drdy = '1' then
						state <= STATE_WRITE0;
					end if;

				when STATE_WRITE0 =>
					state <= STATE_WRITERDY0;

				when STATE_WRITERDY0 =>
					if pll_drdy = '1' then
						state <= STATE_READ1;
					end if;

				when STATE_READ1 =>
					state <= STATE_READRDY1;

				when STATE_READRDY1 =>
					if pll_drdy = '1' then
						state <= STATE_WRITE1;
					end if;

				when STATE_WRITE1 =>
					state <= STATE_WRITERDY1;

				when STATE_WRITERDY1 =>
					if pll_drdy = '1' then
						state <= STATE_ACK;
					end if;

				when STATE_ACK =>
					state <= STATE_WAIT;

				when others =>
			end case;
		end if;
	end process clk_mg;


	req <=
				BUS2IP_CS(0) or
				BUS2IP_CS(1) or
		
		'0';

	pll_daddr <=
		x"08" when state = STATE_READ0 else
		x"08" when state = STATE_READRDY0 else
		x"08" when state = STATE_WRITE0 else
		x"08" when state = STATE_WRITERDY0 else
		x"09" when state = STATE_READ1 else
		x"09" when state = STATE_READRDY1 else
		x"09" when state = STATE_WRITE1 else
		x"09" when state = STATE_WRITERDY1 else
		x"00";

	pll_den <=
		'1' when state = STATE_READ0 else
		'1' when state = STATE_WRITE0 else
		'1' when state = STATE_READ1 else
		'1' when state = STATE_WRITE1 else
		'0';

	pll_dwe <=
		'1' when state = STATE_WRITE0 else
		'1' when state = STATE_WRITERDY0 else
		'1' when state = STATE_WRITE1 else
		'1' when state = STATE_WRITERDY1 else
		'0';

	pll_rst <=
		'0' when state = STATE_WAIT else
		'1';

	pll_di <=
		BUS2IP_Data(15 downto 13) & pll_do(12) & BUS2IP_Data(11 downto 0) when state = STATE_WRITE0 else
		BUS2IP_Data(15 downto 13) & pll_do(12) & BUS2IP_Data(11 downto 0) when state = STATE_WRITERDY0 else
		pll_do(15 downto 8) & BUS2IP_Data(23 downto 16) when state = STATE_WRITE1 else
		pll_do(15 downto 8) & BUS2IP_Data(23 downto 16) when state = STATE_WRITERDY1 else
		(others => '0');

		pll0_rst <= pll_rst when BUS2IP_CS(C_NUM_CLOCKS - 0 - 1) = '1' else '0';

	pll0_daddr <= pll_daddr;

	pll0_den <= pll_den when BUS2IP_CS(C_NUM_CLOCKS - 0 - 1) = '1' else '0';

	pll0_dwe <= pll_dwe when BUS2IP_CS(C_NUM_CLOCKS - 0 - 1) = '1' else '0';

	pll0_di <= pll_di;
	
	pll1_rst <= pll_rst when BUS2IP_CS(C_NUM_CLOCKS - 1 - 1) = '1' else '0';

	pll1_daddr <= pll_daddr;

	pll1_den <= pll_den when BUS2IP_CS(C_NUM_CLOCKS - 1 - 1) = '1' else '0';

	pll1_dwe <= pll_dwe when BUS2IP_CS(C_NUM_CLOCKS - 1 - 1) = '1' else '0';

	pll1_di <= pll_di;
	


	pll_drdy <=
				(pll0_drdy and BUS2IP_CS(C_NUM_CLOCKS - 0 - 1)) or
				(pll1_drdy and BUS2IP_CS(C_NUM_CLOCKS - 1 - 1)) or
		
		'0';

	pll_do <=
				(pll0_do and (pll0_do'Range => BUS2IP_CS(C_NUM_CLOCKS - 0 - 1))) or
				(pll1_do and (pll1_do'Range => BUS2IP_CS(C_NUM_CLOCKS - 1 - 1))) or
		
		(15 downto 0 => '0');


	-- == Assignment of ouput ports =======================================

		CLK0_Out <= pll0_clkbuf;
	CLK0_Locked <= pll0_locked;
	
	CLK1_Out <= pll1_clkbuf;
	CLK1_Locked <= pll1_locked;
	


	IP2BUS_Data <= (others => '0');

	IP2BUS_RdAck <= '0';
	IP2BUS_WrAck <= '1' when state = STATE_ACK else '0';

	IP2BUS_Error <= '0';

end architecture imp;
