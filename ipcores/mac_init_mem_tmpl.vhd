-- VHDL module instantiation generated by SCUBA ispLever_v72_SP2_Build (23)
-- Module  Version: 5.0
-- Thu Aug 20 16:00:49 2009

-- parameterized module component declaration
component mac_init_mem
    port (Address: in  std_logic_vector(5 downto 0); 
        OutClock: in  std_logic; OutClockEn: in  std_logic; 
        Reset: in  std_logic; Q: out  std_logic_vector(7 downto 0));
end component;

-- parameterized module component instance
__ : mac_init_mem
    port map (Address(5 downto 0)=>__, OutClock=>__, OutClockEn=>__, 
        Reset=>__, Q(7 downto 0)=>__);
