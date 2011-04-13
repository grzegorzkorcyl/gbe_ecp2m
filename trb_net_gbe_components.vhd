library ieee;
use ieee.std_logic_1164.all;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_UNSIGNED.ALL;
library work;
use work.trb_net_std.all;

package trb_net_gbe_components is

-- gk 01.07.10
component trb_net16_ipu2gbe is
port( 
	CLK                         : in    std_logic;
	RESET                       : in    std_logic;
	-- IPU interface directed toward the CTS
	CTS_NUMBER_IN               : in    std_logic_vector (15 downto 0);
	CTS_CODE_IN                 : in    std_logic_vector (7  downto 0);
	CTS_INFORMATION_IN          : in    std_logic_vector (7  downto 0);
	CTS_READOUT_TYPE_IN         : in    std_logic_vector (3  downto 0);
	CTS_START_READOUT_IN        : in    std_logic;
	CTS_READ_IN                 : in    std_logic;
	CTS_DATA_OUT                : out   std_logic_vector (31 downto 0);
	CTS_DATAREADY_OUT           : out   std_logic;
	CTS_READOUT_FINISHED_OUT    : out   std_logic;      --no more data, end transfer, send TRM
	CTS_LENGTH_OUT              : out   std_logic_vector (15 downto 0);
	CTS_ERROR_PATTERN_OUT       : out   std_logic_vector (31 downto 0);
	-- Data from Frontends
	FEE_DATA_IN                 : in    std_logic_vector (15 downto 0);
	FEE_DATAREADY_IN            : in    std_logic;
	FEE_READ_OUT                : out   std_logic;
	FEE_BUSY_IN                 : in    std_logic;
	FEE_STATUS_BITS_IN          : in    std_logic_vector (31 downto 0);
	-- slow control interface
	START_CONFIG_OUT			: out	std_logic; -- reconfigure MACs/IPs/ports/packet size
	BANK_SELECT_OUT				: out	std_logic_vector(3 downto 0); -- configuration page address
	CONFIG_DONE_IN				: in	std_logic; -- configuration finished
	DATA_GBE_ENABLE_IN			: in	std_logic; -- IPU data is forwarded to GbE
	DATA_IPU_ENABLE_IN			: in	std_logic; -- IPU data is forwarded to CTS / TRBnet
	MULT_EVT_ENABLE_IN			: in    std_logic;
	MAX_MESSAGE_SIZE_IN			: in	std_logic_vector(31 downto 0); -- the maximum size of one HadesQueue  -- gk 08.04.10
	MIN_MESSAGE_SIZE_IN			: in	std_logic_vector(31 downto 0); -- gk 20.07.10
	READOUT_CTR_IN				: in	std_logic_vector(23 downto 0); -- gk 26.04.10
	READOUT_CTR_VALID_IN			: in	std_logic; -- gk 26.04.10
	-- PacketConstructor interface
	ALLOW_LARGE_IN				: in	std_logic;  -- gk 21.07.10
	PC_WR_EN_OUT                : out   std_logic;
	PC_DATA_OUT                 : out   std_logic_vector (7 downto 0);
	PC_READY_IN                 : in    std_logic;
	PC_SOS_OUT                  : out   std_logic;
	PC_EOS_OUT                  : out   std_logic; -- gk 07.10.10
	PC_EOD_OUT                  : out   std_logic;
	PC_SUB_SIZE_OUT             : out   std_logic_vector(31 downto 0);
	PC_TRIG_NR_OUT              : out   std_logic_vector(31 downto 0);
	PC_PADDING_OUT              : out   std_logic;
	MONITOR_OUT                 : out   std_logic_vector(223 downto 0);
	DEBUG_OUT                   : out   std_logic_vector(383 downto 0)
);
end component;

component trb_net16_gbe_packet_constr is
port(
	RESET                   : in    std_logic;
	CLK                     : in    std_logic;
	MULT_EVT_ENABLE_IN      : in    std_logic;  -- gk 06.10.10
	-- ports for user logic
	PC_WR_EN_IN             : in    std_logic; -- write into queueConstr from userLogic
	PC_DATA_IN              : in    std_logic_vector(7 downto 0);
	PC_READY_OUT            : out   std_logic;
	PC_START_OF_SUB_IN      : in    std_logic;
	PC_END_OF_SUB_IN        : in    std_logic;  -- gk 07.10.10
	PC_END_OF_DATA_IN       : in    std_logic;
	-- queue and subevent layer headers
	PC_SUB_SIZE_IN          : in    std_logic_vector(31 downto 0); -- store and swap
	PC_PADDING_IN           : in std_logic;  -- gk 29.03.10
	PC_DECODING_IN          : in    std_logic_vector(31 downto 0); -- swap
	PC_EVENT_ID_IN          : in    std_logic_vector(31 downto 0); -- swap
	PC_TRIG_NR_IN           : in    std_logic_vector(31 downto 0); -- store and swap!
	PC_QUEUE_DEC_IN         : in    std_logic_vector(31 downto 0); -- swap
	PC_MAX_FRAME_SIZE_IN    : in	std_logic_vector(15 downto 0); -- DO NOT SWAP
	PC_DELAY_IN             : in	std_logic_vector(31 downto 0);  -- gk 28.04.10
	-- FrameConstructor ports
	FC_WR_EN_OUT            : out   std_logic;
	FC_DATA_OUT             : out   std_logic_vector(7 downto 0);
	FC_H_READY_IN           : in    std_logic;
	FC_READY_IN             : in    std_logic;
	FC_IP_SIZE_OUT          : out   std_logic_vector(15 downto 0);
	FC_UDP_SIZE_OUT         : out   std_logic_vector(15 downto 0);
	FC_IDENT_OUT            : out   std_logic_vector(15 downto 0);
	FC_FLAGS_OFFSET_OUT     : out   std_logic_vector(15 downto 0);
	FC_SOD_OUT              : out   std_logic;
	FC_EOD_OUT              : out   std_logic;
	DEBUG_OUT               : out   std_logic_vector(63 downto 0)
);
end component;

component trb_net16_gbe_frame_constr is
port( 
	-- ports for user logic
	RESET                   : in    std_logic;
	CLK                     : in    std_logic;
	LINK_OK_IN              : in    std_logic;  -- gk 03.08.10
	--
	WR_EN_IN                : in    std_logic;
	DATA_IN                 : in    std_logic_vector(7 downto 0);
	START_OF_DATA_IN        : in    std_logic;
	END_OF_DATA_IN          : in    std_logic;
	IP_F_SIZE_IN            : in    std_logic_vector(15 downto 0);
	UDP_P_SIZE_IN           : in    std_logic_vector(15 downto 0); -- needed for fragmentation
	HEADERS_READY_OUT       : out   std_logic;
	READY_OUT               : out   std_logic;
	DEST_MAC_ADDRESS_IN     : in    std_logic_vector(47 downto 0);
	DEST_IP_ADDRESS_IN      : in    std_logic_vector(31 downto 0);
	DEST_UDP_PORT_IN        : in    std_logic_vector(15 downto 0);
	SRC_MAC_ADDRESS_IN      : in    std_logic_vector(47 downto 0);
	SRC_IP_ADDRESS_IN       : in    std_logic_vector(31 downto 0);
	SRC_UDP_PORT_IN         : in    std_logic_vector(15 downto 0);
	FRAME_TYPE_IN           : in    std_logic_vector(15 downto 0);
	IHL_VERSION_IN          : in    std_logic_vector(7 downto 0);
	TOS_IN                  : in    std_logic_vector(7 downto 0);
	IDENTIFICATION_IN       : in    std_logic_vector(15 downto 0);
	FLAGS_OFFSET_IN         : in    std_logic_vector(15 downto 0);
	TTL_IN                  : in    std_logic_vector(7 downto 0);
	PROTOCOL_IN             : in    std_logic_vector(7 downto 0);
	FRAME_DELAY_IN          : in    std_logic_vector(31 downto 0);  -- gk 09.12.10
	-- ports for packetTransmitter
	RD_CLK                  : in    std_logic; -- 125MHz clock!!!
	FT_DATA_OUT             : out   std_logic_vector(8 downto 0);
	FT_TX_EMPTY_OUT         : out   std_logic;
	FT_TX_RD_EN_IN          : in    std_logic;
	FT_START_OF_PACKET_OUT  : out   std_logic;
	FT_TX_DONE_IN           : in    std_logic;
	FT_TX_DISCFRM_IN	: in	std_logic;
	-- debug ports
	BSM_CONSTR_OUT          : out   std_logic_vector(7 downto 0);
	BSM_TRANS_OUT           : out   std_logic_vector(3 downto 0);
	DEBUG_OUT               : out   std_logic_vector(63 downto 0)
);
end component;

component trb_net16_gbe_frame_trans is
port (
	CLK					: in	std_logic;
	RESET				: in	std_logic;
	LINK_OK_IN              : in    std_logic;  -- gk 03.08.10
	TX_MAC_CLK			: in	std_logic;
	TX_EMPTY_IN			: in	std_logic;
	START_OF_PACKET_IN	: in	std_logic;
	DATA_ENDFLAG_IN		: in	std_logic; -- (8) is end flag, rest is only for TSMAC
	-- NEW PORTS
	HADDR_OUT			: out	std_logic_vector(7 downto 0);
	HDATA_OUT			: out	std_logic_vector(7 downto 0);
	HCS_OUT				: out	std_logic;
	HWRITE_OUT			: out	std_logic;
	HREAD_OUT			: out	std_logic;
	HREADY_IN			: in	std_logic;
	HDATA_EN_IN			: in	std_logic;
	TX_FIFOAVAIL_OUT	: out	std_logic;
	TX_FIFOEOF_OUT		: out	std_logic;
	TX_FIFOEMPTY_OUT	: out	std_logic;
	TX_DONE_IN			: in	std_logic;
	TX_DISCFRM_IN		: in 	std_logic;
	-- Debug
	BSM_INIT_OUT		: out	std_logic_vector(3 downto 0);
	BSM_MAC_OUT			: out	std_logic_vector(3 downto 0);
	BSM_TRANS_OUT		: out	std_logic_vector(3 downto 0);
	DBG_RD_DONE_OUT		: out	std_logic;
	DBG_INIT_DONE_OUT	: out	std_logic;
	DBG_ENABLED_OUT		: out	std_logic;
	DEBUG_OUT			: out	std_logic_vector(63 downto 0)
);
end component;

component trb_net16_med_ecp_sfp_gbe_8b is
-- gk 28.04.10
generic (
	USE_125MHZ_EXTCLK			: integer range 0 to 1 := 1
);
port(
	RESET					: in	std_logic;
	GSR_N					: in	std_logic;
	CLK_125_OUT				: out	std_logic;
	CLK_125_IN				: in std_logic;  -- gk 28.04.10  used when intclk
	--SGMII connection to frame transmitter (tsmac)
	FT_TX_CLK_EN_OUT		: out	std_logic;
	FT_RX_CLK_EN_OUT		: out	std_logic;
	FT_COL_OUT				: out	std_logic;
	FT_CRS_OUT				: out	std_logic;
	FT_TXD_IN				: in	std_logic_vector(7 downto 0);
	FT_TX_EN_IN				: in	std_logic;
	FT_TX_ER_IN				: in	std_logic;
	--SFP Connection
	SD_RXD_P_IN				: in	std_logic;
	SD_RXD_N_IN				: in	std_logic;
	SD_TXD_P_OUT			: out	std_logic;
	SD_TXD_N_OUT			: out	std_logic;
	SD_REFCLK_P_IN			: in	std_logic;
	SD_REFCLK_N_IN			: in	std_logic;
	SD_PRSNT_N_IN			: in	std_logic; -- SFP Present ('0' = SFP in place, '1' = no SFP mounted)
	SD_LOS_IN				: in	std_logic; -- SFP Loss Of Signal ('0' = OK, '1' = no signal)
	SD_TXDIS_OUT			: out	std_logic; -- SFP disable
	-- Autonegotiation stuff
	MR_RESET_IN				: in	std_logic;
	MR_MODE_IN				: in	std_logic;
	MR_ADV_ABILITY_IN		: in 	std_logic_vector(15 downto 0);
	MR_AN_LP_ABILITY_OUT	: out	std_logic_vector(15 downto 0);
	MR_AN_PAGE_RX_OUT		: out	std_logic;
	MR_AN_COMPLETE_OUT		: out	std_logic; 
	MR_AN_ENABLE_IN			: in	std_logic;
	MR_RESTART_AN_IN		: in	std_logic;
	-- Status and control port
	STAT_OP					: out	std_logic_vector (15 downto 0);
	CTRL_OP					: in	std_logic_vector (15 downto 0);
	STAT_DEBUG				: out	std_logic_vector (63 downto 0);
	CTRL_DEBUG				: in	std_logic_vector (63 downto 0)
);
end component;

component gbe_setup is
port(
	CLK                      : in std_logic;
	RESET                    : in std_logic;

	-- interface to regio bus
	BUS_ADDR_IN               : in std_logic_vector(7 downto 0);
	BUS_DATA_IN               : in std_logic_vector(31 downto 0);
	BUS_DATA_OUT              : out std_logic_vector(31 downto 0);  -- gk 26.04.10
	BUS_WRITE_EN_IN           : in std_logic;  -- gk 26.04.10
	BUS_READ_EN_IN            : in std_logic;  -- gk 26.04.10
	BUS_ACK_OUT               : out std_logic;  -- gk 26.04.10

	GBE_TRIG_NR_IN            : in std_logic_vector(31 downto 0);

	-- output to gbe_buf
	GBE_SUBEVENT_ID_OUT       : out std_logic_vector(31 downto 0);
	GBE_SUBEVENT_DEC_OUT      : out std_logic_vector(31 downto 0);
	GBE_QUEUE_DEC_OUT         : out std_logic_vector(31 downto 0);
	GBE_MAX_PACKET_OUT        : out std_logic_vector(31 downto 0);
	GBE_MIN_PACKET_OUT        : out std_logic_vector(31 downto 0);
	GBE_MAX_FRAME_OUT         : out std_logic_vector(15 downto 0);
	GBE_USE_GBE_OUT           : out std_logic;
	GBE_USE_TRBNET_OUT        : out std_logic;
	GBE_USE_MULTIEVENTS_OUT   : out std_logic;
	GBE_READOUT_CTR_OUT       : out std_logic_vector(23 downto 0);  -- gk 26.04.10
	GBE_READOUT_CTR_VALID_OUT : out std_logic;  -- gk 26.04.10
	GBE_DELAY_OUT             : out std_logic_vector(31 downto 0);
	GBE_ALLOW_LARGE_OUT       : out std_logic;
	GBE_FRAME_DELAY_OUT       : out std_logic_vector(31 downto 0); -- gk 09.12.10
	-- gk 28.07.10
	MONITOR_BYTES_IN          : in std_logic_vector(31 downto 0);
	MONITOR_SENT_IN           : in std_logic_vector(31 downto 0);
	MONITOR_DROPPED_IN        : in std_logic_vector(31 downto 0);
	MONITOR_SM_IN             : in std_logic_vector(31 downto 0);
	MONITOR_LR_IN             : in std_logic_vector(31 downto 0);
	MONITOR_HDR_IN            : in std_logic_vector(31 downto 0);
	MONITOR_FIFOS_IN          : in std_logic_vector(31 downto 0);
	MONITOR_DISCFRM_IN        : in std_logic_vector(31 downto 0);
	MONITOR_LINK_DWN_IN       : in std_logic_vector(31 downto 0);  -- gk 30.09.10
	MONITOR_EMPTY_IN          : in std_logic_vector(31 downto 0);  -- gk 01.10.10
	-- gk 01.06.10
	DBG_IPU2GBE1_IN          : in std_logic_vector(31 downto 0);
	DBG_IPU2GBE2_IN          : in std_logic_vector(31 downto 0);
	DBG_IPU2GBE3_IN          : in std_logic_vector(31 downto 0);
	DBG_IPU2GBE4_IN          : in std_logic_vector(31 downto 0);
	DBG_IPU2GBE5_IN          : in std_logic_vector(31 downto 0);
	DBG_IPU2GBE6_IN          : in std_logic_vector(31 downto 0);
	DBG_IPU2GBE7_IN          : in std_logic_vector(31 downto 0);
	DBG_IPU2GBE8_IN          : in std_logic_vector(31 downto 0);
	DBG_IPU2GBE9_IN          : in std_logic_vector(31 downto 0);
	DBG_IPU2GBE10_IN         : in std_logic_vector(31 downto 0);
	DBG_IPU2GBE11_IN         : in std_logic_vector(31 downto 0);
	DBG_IPU2GBE12_IN         : in std_logic_vector(31 downto 0);
	DBG_PC1_IN               : in std_logic_vector(31 downto 0);
	DBG_PC2_IN               : in std_logic_vector(31 downto 0);
	DBG_FC1_IN               : in std_logic_vector(31 downto 0);
	DBG_FC2_IN               : in std_logic_vector(31 downto 0);
	DBG_FT1_IN               : in std_logic_vector(31 downto 0);
	DBG_FT2_IN               : in std_logic_vector(31 downto 0);
	DBG_FIFO_RD_EN_OUT        : out std_logic;
	DBG_FIFO_Q_IN             : in std_logic_vector(15 downto 0)
	--DBG_FIFO_RESET_OUT       : out std_logic
);
end component;


component ip_configurator is
port( 
	CLK							: in	std_logic;
	RESET						: in	std_logic;
	-- configuration interface
	START_CONFIG_IN				: in	std_logic; -- start configuration run
	BANK_SELECT_IN				: in	std_logic_vector(3 downto 0); -- selects config bank 
	CONFIG_DONE_OUT				: out	std_logic; -- configuration run ended, new values can be used
	MEM_ADDR_OUT				: out	std_logic_vector(7 downto 0); -- address for
	MEM_DATA_IN					: in	std_logic_vector(31 downto 0); -- data from IP memory
	MEM_CLK_OUT					: out	std_logic; -- clock for BlockRAM
	-- information for IP cores
	DEST_MAC_OUT				: out	std_logic_vector(47 downto 0); -- destination MAC address
	DEST_IP_OUT					: out	std_logic_vector(31 downto 0); -- destination IP address
	DEST_UDP_OUT				: out	std_logic_vector(15 downto 0); -- destination port
	SRC_MAC_OUT					: out	std_logic_vector(47 downto 0); -- source MAC address
	SRC_IP_OUT					: out	std_logic_vector(31 downto 0); -- source IP address
	SRC_UDP_OUT					: out	std_logic_vector(15 downto 0); -- source port
	MTU_OUT						: out	std_logic_vector(15 downto 0); -- MTU size (max frame size)
	-- Debug
	DEBUG_OUT					: out	std_logic_vector(31 downto 0)
);
end component;

end package;