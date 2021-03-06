-- VHDL module instantiation generated by SCUBA ispLever_v8.0_PROD_Build (41)
-- Module  Version: 5.3
-- Fri Dec 18 03:02:30 2009

-- parameterized module component declaration
component fifo_4096x32
    port (Data: in  std_logic_vector(31 downto 0); 
        WrClock: in  std_logic; RdClock: in  std_logic; 
        WrEn: in  std_logic; RdEn: in  std_logic; Reset: in  std_logic; 
        RPReset: in  std_logic; Q: out  std_logic_vector(31 downto 0); 
        Empty: out  std_logic; Full: out  std_logic);
end component;

-- parameterized module component instance
__ : fifo_4096x32
    port map (Data(31 downto 0)=>__, WrClock=>__, RdClock=>__, WrEn=>__, 
        RdEn=>__, Reset=>__, RPReset=>__, Q(31 downto 0)=>__, Empty=>__, 
        Full=>__);
