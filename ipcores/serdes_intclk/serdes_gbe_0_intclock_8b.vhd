

--synopsys translate_off

library pcsc_work;
use pcsc_work.all;
library IEEE;
use IEEE.std_logic_1164.all;

entity PCSC is
GENERIC(
  CONFIG_FILE : String  := "serdes_gbe_0_intclock_8b.txt"
  );
port (
  HDINN0             : in std_logic;
  HDINN1             : in std_logic;
  HDINN2             : in std_logic;
  HDINN3             : in std_logic;
  HDINP0             : in std_logic;
  HDINP1             : in std_logic;
  HDINP2             : in std_logic;
  HDINP3             : in std_logic;
  REFCLKN             : in std_logic;
  REFCLKP             : in std_logic;
  CIN0             : in std_logic;
  CIN1             : in std_logic;
  CIN2             : in std_logic;
  CIN3             : in std_logic;
  CIN4             : in std_logic;
  CIN5             : in std_logic;
  CIN6             : in std_logic;
  CIN7             : in std_logic;
  CIN8             : in std_logic;
  CIN9             : in std_logic;
  CIN10             : in std_logic;
  CIN11             : in std_logic;
  CYAWSTN             : in std_logic;
  FF_EBRD_CLK_0             : in std_logic;
  FF_EBRD_CLK_1             : in std_logic;
  FF_EBRD_CLK_2             : in std_logic;
  FF_EBRD_CLK_3             : in std_logic;
  FF_RXI_CLK_0             : in std_logic;
  FF_RXI_CLK_1             : in std_logic;
  FF_RXI_CLK_2             : in std_logic;
  FF_RXI_CLK_3             : in std_logic;
  FF_TX_D_0_0             : in std_logic;
  FF_TX_D_0_1             : in std_logic;
  FF_TX_D_0_2             : in std_logic;
  FF_TX_D_0_3             : in std_logic;
  FF_TX_D_0_4             : in std_logic;
  FF_TX_D_0_5             : in std_logic;
  FF_TX_D_0_6             : in std_logic;
  FF_TX_D_0_7             : in std_logic;
  FF_TX_D_0_8             : in std_logic;
  FF_TX_D_0_9             : in std_logic;
  FF_TX_D_0_10             : in std_logic;
  FF_TX_D_0_11             : in std_logic;
  FF_TX_D_0_12             : in std_logic;
  FF_TX_D_0_13             : in std_logic;
  FF_TX_D_0_14             : in std_logic;
  FF_TX_D_0_15             : in std_logic;
  FF_TX_D_0_16             : in std_logic;
  FF_TX_D_0_17             : in std_logic;
  FF_TX_D_0_18             : in std_logic;
  FF_TX_D_0_19             : in std_logic;
  FF_TX_D_0_20             : in std_logic;
  FF_TX_D_0_21             : in std_logic;
  FF_TX_D_0_22             : in std_logic;
  FF_TX_D_0_23             : in std_logic;
  FF_TX_D_1_0             : in std_logic;
  FF_TX_D_1_1             : in std_logic;
  FF_TX_D_1_2             : in std_logic;
  FF_TX_D_1_3             : in std_logic;
  FF_TX_D_1_4             : in std_logic;
  FF_TX_D_1_5             : in std_logic;
  FF_TX_D_1_6             : in std_logic;
  FF_TX_D_1_7             : in std_logic;
  FF_TX_D_1_8             : in std_logic;
  FF_TX_D_1_9             : in std_logic;
  FF_TX_D_1_10             : in std_logic;
  FF_TX_D_1_11             : in std_logic;
  FF_TX_D_1_12             : in std_logic;
  FF_TX_D_1_13             : in std_logic;
  FF_TX_D_1_14             : in std_logic;
  FF_TX_D_1_15             : in std_logic;
  FF_TX_D_1_16             : in std_logic;
  FF_TX_D_1_17             : in std_logic;
  FF_TX_D_1_18             : in std_logic;
  FF_TX_D_1_19             : in std_logic;
  FF_TX_D_1_20             : in std_logic;
  FF_TX_D_1_21             : in std_logic;
  FF_TX_D_1_22             : in std_logic;
  FF_TX_D_1_23             : in std_logic;
  FF_TX_D_2_0             : in std_logic;
  FF_TX_D_2_1             : in std_logic;
  FF_TX_D_2_2             : in std_logic;
  FF_TX_D_2_3             : in std_logic;
  FF_TX_D_2_4             : in std_logic;
  FF_TX_D_2_5             : in std_logic;
  FF_TX_D_2_6             : in std_logic;
  FF_TX_D_2_7             : in std_logic;
  FF_TX_D_2_8             : in std_logic;
  FF_TX_D_2_9             : in std_logic;
  FF_TX_D_2_10             : in std_logic;
  FF_TX_D_2_11             : in std_logic;
  FF_TX_D_2_12             : in std_logic;
  FF_TX_D_2_13             : in std_logic;
  FF_TX_D_2_14             : in std_logic;
  FF_TX_D_2_15             : in std_logic;
  FF_TX_D_2_16             : in std_logic;
  FF_TX_D_2_17             : in std_logic;
  FF_TX_D_2_18             : in std_logic;
  FF_TX_D_2_19             : in std_logic;
  FF_TX_D_2_20             : in std_logic;
  FF_TX_D_2_21             : in std_logic;
  FF_TX_D_2_22             : in std_logic;
  FF_TX_D_2_23             : in std_logic;
  FF_TX_D_3_0             : in std_logic;
  FF_TX_D_3_1             : in std_logic;
  FF_TX_D_3_2             : in std_logic;
  FF_TX_D_3_3             : in std_logic;
  FF_TX_D_3_4             : in std_logic;
  FF_TX_D_3_5             : in std_logic;
  FF_TX_D_3_6             : in std_logic;
  FF_TX_D_3_7             : in std_logic;
  FF_TX_D_3_8             : in std_logic;
  FF_TX_D_3_9             : in std_logic;
  FF_TX_D_3_10             : in std_logic;
  FF_TX_D_3_11             : in std_logic;
  FF_TX_D_3_12             : in std_logic;
  FF_TX_D_3_13             : in std_logic;
  FF_TX_D_3_14             : in std_logic;
  FF_TX_D_3_15             : in std_logic;
  FF_TX_D_3_16             : in std_logic;
  FF_TX_D_3_17             : in std_logic;
  FF_TX_D_3_18             : in std_logic;
  FF_TX_D_3_19             : in std_logic;
  FF_TX_D_3_20             : in std_logic;
  FF_TX_D_3_21             : in std_logic;
  FF_TX_D_3_22             : in std_logic;
  FF_TX_D_3_23             : in std_logic;
  FF_TXI_CLK_0             : in std_logic;
  FF_TXI_CLK_1             : in std_logic;
  FF_TXI_CLK_2             : in std_logic;
  FF_TXI_CLK_3             : in std_logic;
  FFC_CK_CORE_RX             : in std_logic;
  FFC_CK_CORE_TX             : in std_logic;
  FFC_EI_EN_0             : in std_logic;
  FFC_EI_EN_1             : in std_logic;
  FFC_EI_EN_2             : in std_logic;
  FFC_EI_EN_3             : in std_logic;
  FFC_ENABLE_CGALIGN_0             : in std_logic;
  FFC_ENABLE_CGALIGN_1             : in std_logic;
  FFC_ENABLE_CGALIGN_2             : in std_logic;
  FFC_ENABLE_CGALIGN_3             : in std_logic;
  FFC_FB_LOOPBACK_0             : in std_logic;
  FFC_FB_LOOPBACK_1             : in std_logic;
  FFC_FB_LOOPBACK_2             : in std_logic;
  FFC_FB_LOOPBACK_3             : in std_logic;
  FFC_LANE_RX_RST_0             : in std_logic;
  FFC_LANE_RX_RST_1             : in std_logic;
  FFC_LANE_RX_RST_2             : in std_logic;
  FFC_LANE_RX_RST_3             : in std_logic;
  FFC_LANE_TX_RST_0             : in std_logic;
  FFC_LANE_TX_RST_1             : in std_logic;
  FFC_LANE_TX_RST_2             : in std_logic;
  FFC_LANE_TX_RST_3             : in std_logic;
  FFC_MACRO_RST             : in std_logic;
  FFC_PCI_DET_EN_0             : in std_logic;
  FFC_PCI_DET_EN_1             : in std_logic;
  FFC_PCI_DET_EN_2             : in std_logic;
  FFC_PCI_DET_EN_3             : in std_logic;
  FFC_PCIE_CT_0             : in std_logic;
  FFC_PCIE_CT_1             : in std_logic;
  FFC_PCIE_CT_2             : in std_logic;
  FFC_PCIE_CT_3             : in std_logic;
  FFC_PFIFO_CLR_0             : in std_logic;
  FFC_PFIFO_CLR_1             : in std_logic;
  FFC_PFIFO_CLR_2             : in std_logic;
  FFC_PFIFO_CLR_3             : in std_logic;
  FFC_QUAD_RST             : in std_logic;
  FFC_RRST_0             : in std_logic;
  FFC_RRST_1             : in std_logic;
  FFC_RRST_2             : in std_logic;
  FFC_RRST_3             : in std_logic;
  FFC_RXPWDNB_0             : in std_logic;
  FFC_RXPWDNB_1             : in std_logic;
  FFC_RXPWDNB_2             : in std_logic;
  FFC_RXPWDNB_3             : in std_logic;
  FFC_SB_INV_RX_0             : in std_logic;
  FFC_SB_INV_RX_1             : in std_logic;
  FFC_SB_INV_RX_2             : in std_logic;
  FFC_SB_INV_RX_3             : in std_logic;
  FFC_SB_PFIFO_LP_0             : in std_logic;
  FFC_SB_PFIFO_LP_1             : in std_logic;
  FFC_SB_PFIFO_LP_2             : in std_logic;
  FFC_SB_PFIFO_LP_3             : in std_logic;
  FFC_SIGNAL_DETECT_0             : in std_logic;
  FFC_SIGNAL_DETECT_1             : in std_logic;
  FFC_SIGNAL_DETECT_2             : in std_logic;
  FFC_SIGNAL_DETECT_3             : in std_logic;
  FFC_TRST             : in std_logic;
  FFC_TXPWDNB_0             : in std_logic;
  FFC_TXPWDNB_1             : in std_logic;
  FFC_TXPWDNB_2             : in std_logic;
  FFC_TXPWDNB_3             : in std_logic;
  SCIADDR0             : in std_logic;
  SCIADDR1             : in std_logic;
  SCIADDR2             : in std_logic;
  SCIADDR3             : in std_logic;
  SCIADDR4             : in std_logic;
  SCIADDR5             : in std_logic;
  SCIENAUX             : in std_logic;
  SCIENCH0             : in std_logic;
  SCIENCH1             : in std_logic;
  SCIENCH2             : in std_logic;
  SCIENCH3             : in std_logic;
  SCIRD             : in std_logic;
  SCISELAUX             : in std_logic;
  SCISELCH0             : in std_logic;
  SCISELCH1             : in std_logic;
  SCISELCH2             : in std_logic;
  SCISELCH3             : in std_logic;
  SCIWDATA0             : in std_logic;
  SCIWDATA1             : in std_logic;
  SCIWDATA2             : in std_logic;
  SCIWDATA3             : in std_logic;
  SCIWDATA4             : in std_logic;
  SCIWDATA5             : in std_logic;
  SCIWDATA6             : in std_logic;
  SCIWDATA7             : in std_logic;
  SCIWSTN             : in std_logic;
  HDOUTN0             : out std_logic;
  HDOUTN1             : out std_logic;
  HDOUTN2             : out std_logic;
  HDOUTN3             : out std_logic;
  HDOUTP0             : out std_logic;
  HDOUTP1             : out std_logic;
  HDOUTP2             : out std_logic;
  HDOUTP3             : out std_logic;
  COUT0             : out std_logic;
  COUT1             : out std_logic;
  COUT2             : out std_logic;
  COUT3             : out std_logic;
  COUT4             : out std_logic;
  COUT5             : out std_logic;
  COUT6             : out std_logic;
  COUT7             : out std_logic;
  COUT8             : out std_logic;
  COUT9             : out std_logic;
  COUT10             : out std_logic;
  COUT11             : out std_logic;
  COUT12             : out std_logic;
  COUT13             : out std_logic;
  COUT14             : out std_logic;
  COUT15             : out std_logic;
  COUT16             : out std_logic;
  COUT17             : out std_logic;
  COUT18             : out std_logic;
  COUT19             : out std_logic;
  FF_RX_D_0_0             : out std_logic;
  FF_RX_D_0_1             : out std_logic;
  FF_RX_D_0_2             : out std_logic;
  FF_RX_D_0_3             : out std_logic;
  FF_RX_D_0_4             : out std_logic;
  FF_RX_D_0_5             : out std_logic;
  FF_RX_D_0_6             : out std_logic;
  FF_RX_D_0_7             : out std_logic;
  FF_RX_D_0_8             : out std_logic;
  FF_RX_D_0_9             : out std_logic;
  FF_RX_D_0_10             : out std_logic;
  FF_RX_D_0_11             : out std_logic;
  FF_RX_D_0_12             : out std_logic;
  FF_RX_D_0_13             : out std_logic;
  FF_RX_D_0_14             : out std_logic;
  FF_RX_D_0_15             : out std_logic;
  FF_RX_D_0_16             : out std_logic;
  FF_RX_D_0_17             : out std_logic;
  FF_RX_D_0_18             : out std_logic;
  FF_RX_D_0_19             : out std_logic;
  FF_RX_D_0_20             : out std_logic;
  FF_RX_D_0_21             : out std_logic;
  FF_RX_D_0_22             : out std_logic;
  FF_RX_D_0_23             : out std_logic;
  FF_RX_D_1_0             : out std_logic;
  FF_RX_D_1_1             : out std_logic;
  FF_RX_D_1_2             : out std_logic;
  FF_RX_D_1_3             : out std_logic;
  FF_RX_D_1_4             : out std_logic;
  FF_RX_D_1_5             : out std_logic;
  FF_RX_D_1_6             : out std_logic;
  FF_RX_D_1_7             : out std_logic;
  FF_RX_D_1_8             : out std_logic;
  FF_RX_D_1_9             : out std_logic;
  FF_RX_D_1_10             : out std_logic;
  FF_RX_D_1_11             : out std_logic;
  FF_RX_D_1_12             : out std_logic;
  FF_RX_D_1_13             : out std_logic;
  FF_RX_D_1_14             : out std_logic;
  FF_RX_D_1_15             : out std_logic;
  FF_RX_D_1_16             : out std_logic;
  FF_RX_D_1_17             : out std_logic;
  FF_RX_D_1_18             : out std_logic;
  FF_RX_D_1_19             : out std_logic;
  FF_RX_D_1_20             : out std_logic;
  FF_RX_D_1_21             : out std_logic;
  FF_RX_D_1_22             : out std_logic;
  FF_RX_D_1_23             : out std_logic;
  FF_RX_D_2_0             : out std_logic;
  FF_RX_D_2_1             : out std_logic;
  FF_RX_D_2_2             : out std_logic;
  FF_RX_D_2_3             : out std_logic;
  FF_RX_D_2_4             : out std_logic;
  FF_RX_D_2_5             : out std_logic;
  FF_RX_D_2_6             : out std_logic;
  FF_RX_D_2_7             : out std_logic;
  FF_RX_D_2_8             : out std_logic;
  FF_RX_D_2_9             : out std_logic;
  FF_RX_D_2_10             : out std_logic;
  FF_RX_D_2_11             : out std_logic;
  FF_RX_D_2_12             : out std_logic;
  FF_RX_D_2_13             : out std_logic;
  FF_RX_D_2_14             : out std_logic;
  FF_RX_D_2_15             : out std_logic;
  FF_RX_D_2_16             : out std_logic;
  FF_RX_D_2_17             : out std_logic;
  FF_RX_D_2_18             : out std_logic;
  FF_RX_D_2_19             : out std_logic;
  FF_RX_D_2_20             : out std_logic;
  FF_RX_D_2_21             : out std_logic;
  FF_RX_D_2_22             : out std_logic;
  FF_RX_D_2_23             : out std_logic;
  FF_RX_D_3_0             : out std_logic;
  FF_RX_D_3_1             : out std_logic;
  FF_RX_D_3_2             : out std_logic;
  FF_RX_D_3_3             : out std_logic;
  FF_RX_D_3_4             : out std_logic;
  FF_RX_D_3_5             : out std_logic;
  FF_RX_D_3_6             : out std_logic;
  FF_RX_D_3_7             : out std_logic;
  FF_RX_D_3_8             : out std_logic;
  FF_RX_D_3_9             : out std_logic;
  FF_RX_D_3_10             : out std_logic;
  FF_RX_D_3_11             : out std_logic;
  FF_RX_D_3_12             : out std_logic;
  FF_RX_D_3_13             : out std_logic;
  FF_RX_D_3_14             : out std_logic;
  FF_RX_D_3_15             : out std_logic;
  FF_RX_D_3_16             : out std_logic;
  FF_RX_D_3_17             : out std_logic;
  FF_RX_D_3_18             : out std_logic;
  FF_RX_D_3_19             : out std_logic;
  FF_RX_D_3_20             : out std_logic;
  FF_RX_D_3_21             : out std_logic;
  FF_RX_D_3_22             : out std_logic;
  FF_RX_D_3_23             : out std_logic;
  FF_RX_F_CLK_0             : out std_logic;
  FF_RX_F_CLK_1             : out std_logic;
  FF_RX_F_CLK_2             : out std_logic;
  FF_RX_F_CLK_3             : out std_logic;
  FF_RX_H_CLK_0             : out std_logic;
  FF_RX_H_CLK_1             : out std_logic;
  FF_RX_H_CLK_2             : out std_logic;
  FF_RX_H_CLK_3             : out std_logic;
  FF_RX_Q_CLK_0             : out std_logic;
  FF_RX_Q_CLK_1             : out std_logic;
  FF_RX_Q_CLK_2             : out std_logic;
  FF_RX_Q_CLK_3             : out std_logic;
  FF_TX_F_CLK             : out std_logic;
  FF_TX_H_CLK             : out std_logic;
  FF_TX_Q_CLK             : out std_logic;
  FFS_CC_OVERRUN_0             : out std_logic;
  FFS_CC_OVERRUN_1             : out std_logic;
  FFS_CC_OVERRUN_2             : out std_logic;
  FFS_CC_OVERRUN_3             : out std_logic;
  FFS_CC_UNDERRUN_0             : out std_logic;
  FFS_CC_UNDERRUN_1             : out std_logic;
  FFS_CC_UNDERRUN_2             : out std_logic;
  FFS_CC_UNDERRUN_3             : out std_logic;
  FFS_LS_SYNC_STATUS_0             : out std_logic;
  FFS_LS_SYNC_STATUS_1             : out std_logic;
  FFS_LS_SYNC_STATUS_2             : out std_logic;
  FFS_LS_SYNC_STATUS_3             : out std_logic;
  FFS_PCIE_CON_0             : out std_logic;
  FFS_PCIE_CON_1             : out std_logic;
  FFS_PCIE_CON_2             : out std_logic;
  FFS_PCIE_CON_3             : out std_logic;
  FFS_PCIE_DONE_0             : out std_logic;
  FFS_PCIE_DONE_1             : out std_logic;
  FFS_PCIE_DONE_2             : out std_logic;
  FFS_PCIE_DONE_3             : out std_logic;
  FFS_RLOS_LO_0             : out std_logic;
  FFS_RLOS_LO_1             : out std_logic;
  FFS_RLOS_LO_2             : out std_logic;
  FFS_RLOS_LO_3             : out std_logic;
  OOB_OUT_0             : out std_logic;
  OOB_OUT_1             : out std_logic;
  OOB_OUT_2             : out std_logic;
  OOB_OUT_3             : out std_logic;
  REFCK2CORE             : out std_logic;
  SCIINT             : out std_logic;
  SCIRDATA0             : out std_logic;
  SCIRDATA1             : out std_logic;
  SCIRDATA2             : out std_logic;
  SCIRDATA3             : out std_logic;
  SCIRDATA4             : out std_logic;
  SCIRDATA5             : out std_logic;
  SCIRDATA6             : out std_logic;
  SCIRDATA7             : out std_logic;
  FFS_PLOL             : out std_logic;
  FFS_RLOL_0             : out std_logic;
  FFS_RLOL_1             : out std_logic;
  FFS_RLOL_2             : out std_logic;
  FFS_RLOL_3             : out std_logic;
  FFS_RXFBFIFO_ERROR_0             : out std_logic;
  FFS_RXFBFIFO_ERROR_1             : out std_logic;
  FFS_RXFBFIFO_ERROR_2             : out std_logic;
  FFS_RXFBFIFO_ERROR_3             : out std_logic;
  FFS_TXFBFIFO_ERROR_0             : out std_logic;
  FFS_TXFBFIFO_ERROR_1             : out std_logic;
  FFS_TXFBFIFO_ERROR_2             : out std_logic;
  FFS_TXFBFIFO_ERROR_3             : out std_logic
);

end PCSC;

architecture PCSC_arch of PCSC is

component PCSC_sim
GENERIC(
  CONFIG_FILE : String
  );
port (
  HDINN0             : in std_logic;
  HDINN1             : in std_logic;
  HDINN2             : in std_logic;
  HDINN3             : in std_logic;
  HDINP0             : in std_logic;
  HDINP1             : in std_logic;
  HDINP2             : in std_logic;
  HDINP3             : in std_logic;
  REFCLKN             : in std_logic;
  REFCLKP             : in std_logic;
  CIN0             : in std_logic;
  CIN1             : in std_logic;
  CIN2             : in std_logic;
  CIN3             : in std_logic;
  CIN4             : in std_logic;
  CIN5             : in std_logic;
  CIN6             : in std_logic;
  CIN7             : in std_logic;
  CIN8             : in std_logic;
  CIN9             : in std_logic;
  CIN10             : in std_logic;
  CIN11             : in std_logic;
  CYAWSTN             : in std_logic;
  FF_EBRD_CLK_0             : in std_logic;
  FF_EBRD_CLK_1             : in std_logic;
  FF_EBRD_CLK_2             : in std_logic;
  FF_EBRD_CLK_3             : in std_logic;
  FF_RXI_CLK_0             : in std_logic;
  FF_RXI_CLK_1             : in std_logic;
  FF_RXI_CLK_2             : in std_logic;
  FF_RXI_CLK_3             : in std_logic;
  FF_TX_D_0_0             : in std_logic;
  FF_TX_D_0_1             : in std_logic;
  FF_TX_D_0_2             : in std_logic;
  FF_TX_D_0_3             : in std_logic;
  FF_TX_D_0_4             : in std_logic;
  FF_TX_D_0_5             : in std_logic;
  FF_TX_D_0_6             : in std_logic;
  FF_TX_D_0_7             : in std_logic;
  FF_TX_D_0_8             : in std_logic;
  FF_TX_D_0_9             : in std_logic;
  FF_TX_D_0_10             : in std_logic;
  FF_TX_D_0_11             : in std_logic;
  FF_TX_D_0_12             : in std_logic;
  FF_TX_D_0_13             : in std_logic;
  FF_TX_D_0_14             : in std_logic;
  FF_TX_D_0_15             : in std_logic;
  FF_TX_D_0_16             : in std_logic;
  FF_TX_D_0_17             : in std_logic;
  FF_TX_D_0_18             : in std_logic;
  FF_TX_D_0_19             : in std_logic;
  FF_TX_D_0_20             : in std_logic;
  FF_TX_D_0_21             : in std_logic;
  FF_TX_D_0_22             : in std_logic;
  FF_TX_D_0_23             : in std_logic;
  FF_TX_D_1_0             : in std_logic;
  FF_TX_D_1_1             : in std_logic;
  FF_TX_D_1_2             : in std_logic;
  FF_TX_D_1_3             : in std_logic;
  FF_TX_D_1_4             : in std_logic;
  FF_TX_D_1_5             : in std_logic;
  FF_TX_D_1_6             : in std_logic;
  FF_TX_D_1_7             : in std_logic;
  FF_TX_D_1_8             : in std_logic;
  FF_TX_D_1_9             : in std_logic;
  FF_TX_D_1_10             : in std_logic;
  FF_TX_D_1_11             : in std_logic;
  FF_TX_D_1_12             : in std_logic;
  FF_TX_D_1_13             : in std_logic;
  FF_TX_D_1_14             : in std_logic;
  FF_TX_D_1_15             : in std_logic;
  FF_TX_D_1_16             : in std_logic;
  FF_TX_D_1_17             : in std_logic;
  FF_TX_D_1_18             : in std_logic;
  FF_TX_D_1_19             : in std_logic;
  FF_TX_D_1_20             : in std_logic;
  FF_TX_D_1_21             : in std_logic;
  FF_TX_D_1_22             : in std_logic;
  FF_TX_D_1_23             : in std_logic;
  FF_TX_D_2_0             : in std_logic;
  FF_TX_D_2_1             : in std_logic;
  FF_TX_D_2_2             : in std_logic;
  FF_TX_D_2_3             : in std_logic;
  FF_TX_D_2_4             : in std_logic;
  FF_TX_D_2_5             : in std_logic;
  FF_TX_D_2_6             : in std_logic;
  FF_TX_D_2_7             : in std_logic;
  FF_TX_D_2_8             : in std_logic;
  FF_TX_D_2_9             : in std_logic;
  FF_TX_D_2_10             : in std_logic;
  FF_TX_D_2_11             : in std_logic;
  FF_TX_D_2_12             : in std_logic;
  FF_TX_D_2_13             : in std_logic;
  FF_TX_D_2_14             : in std_logic;
  FF_TX_D_2_15             : in std_logic;
  FF_TX_D_2_16             : in std_logic;
  FF_TX_D_2_17             : in std_logic;
  FF_TX_D_2_18             : in std_logic;
  FF_TX_D_2_19             : in std_logic;
  FF_TX_D_2_20             : in std_logic;
  FF_TX_D_2_21             : in std_logic;
  FF_TX_D_2_22             : in std_logic;
  FF_TX_D_2_23             : in std_logic;
  FF_TX_D_3_0             : in std_logic;
  FF_TX_D_3_1             : in std_logic;
  FF_TX_D_3_2             : in std_logic;
  FF_TX_D_3_3             : in std_logic;
  FF_TX_D_3_4             : in std_logic;
  FF_TX_D_3_5             : in std_logic;
  FF_TX_D_3_6             : in std_logic;
  FF_TX_D_3_7             : in std_logic;
  FF_TX_D_3_8             : in std_logic;
  FF_TX_D_3_9             : in std_logic;
  FF_TX_D_3_10             : in std_logic;
  FF_TX_D_3_11             : in std_logic;
  FF_TX_D_3_12             : in std_logic;
  FF_TX_D_3_13             : in std_logic;
  FF_TX_D_3_14             : in std_logic;
  FF_TX_D_3_15             : in std_logic;
  FF_TX_D_3_16             : in std_logic;
  FF_TX_D_3_17             : in std_logic;
  FF_TX_D_3_18             : in std_logic;
  FF_TX_D_3_19             : in std_logic;
  FF_TX_D_3_20             : in std_logic;
  FF_TX_D_3_21             : in std_logic;
  FF_TX_D_3_22             : in std_logic;
  FF_TX_D_3_23             : in std_logic;
  FF_TXI_CLK_0             : in std_logic;
  FF_TXI_CLK_1             : in std_logic;
  FF_TXI_CLK_2             : in std_logic;
  FF_TXI_CLK_3             : in std_logic;
  FFC_CK_CORE_RX             : in std_logic;
  FFC_CK_CORE_TX             : in std_logic;
  FFC_EI_EN_0             : in std_logic;
  FFC_EI_EN_1             : in std_logic;
  FFC_EI_EN_2             : in std_logic;
  FFC_EI_EN_3             : in std_logic;
  FFC_ENABLE_CGALIGN_0             : in std_logic;
  FFC_ENABLE_CGALIGN_1             : in std_logic;
  FFC_ENABLE_CGALIGN_2             : in std_logic;
  FFC_ENABLE_CGALIGN_3             : in std_logic;
  FFC_FB_LOOPBACK_0             : in std_logic;
  FFC_FB_LOOPBACK_1             : in std_logic;
  FFC_FB_LOOPBACK_2             : in std_logic;
  FFC_FB_LOOPBACK_3             : in std_logic;
  FFC_LANE_RX_RST_0             : in std_logic;
  FFC_LANE_RX_RST_1             : in std_logic;
  FFC_LANE_RX_RST_2             : in std_logic;
  FFC_LANE_RX_RST_3             : in std_logic;
  FFC_LANE_TX_RST_0             : in std_logic;
  FFC_LANE_TX_RST_1             : in std_logic;
  FFC_LANE_TX_RST_2             : in std_logic;
  FFC_LANE_TX_RST_3             : in std_logic;
  FFC_MACRO_RST             : in std_logic;
  FFC_PCI_DET_EN_0             : in std_logic;
  FFC_PCI_DET_EN_1             : in std_logic;
  FFC_PCI_DET_EN_2             : in std_logic;
  FFC_PCI_DET_EN_3             : in std_logic;
  FFC_PCIE_CT_0             : in std_logic;
  FFC_PCIE_CT_1             : in std_logic;
  FFC_PCIE_CT_2             : in std_logic;
  FFC_PCIE_CT_3             : in std_logic;
  FFC_PFIFO_CLR_0             : in std_logic;
  FFC_PFIFO_CLR_1             : in std_logic;
  FFC_PFIFO_CLR_2             : in std_logic;
  FFC_PFIFO_CLR_3             : in std_logic;
  FFC_QUAD_RST             : in std_logic;
  FFC_RRST_0             : in std_logic;
  FFC_RRST_1             : in std_logic;
  FFC_RRST_2             : in std_logic;
  FFC_RRST_3             : in std_logic;
  FFC_RXPWDNB_0             : in std_logic;
  FFC_RXPWDNB_1             : in std_logic;
  FFC_RXPWDNB_2             : in std_logic;
  FFC_RXPWDNB_3             : in std_logic;
  FFC_SB_INV_RX_0             : in std_logic;
  FFC_SB_INV_RX_1             : in std_logic;
  FFC_SB_INV_RX_2             : in std_logic;
  FFC_SB_INV_RX_3             : in std_logic;
  FFC_SB_PFIFO_LP_0             : in std_logic;
  FFC_SB_PFIFO_LP_1             : in std_logic;
  FFC_SB_PFIFO_LP_2             : in std_logic;
  FFC_SB_PFIFO_LP_3             : in std_logic;
  FFC_SIGNAL_DETECT_0             : in std_logic;
  FFC_SIGNAL_DETECT_1             : in std_logic;
  FFC_SIGNAL_DETECT_2             : in std_logic;
  FFC_SIGNAL_DETECT_3             : in std_logic;
  FFC_TRST             : in std_logic;
  FFC_TXPWDNB_0             : in std_logic;
  FFC_TXPWDNB_1             : in std_logic;
  FFC_TXPWDNB_2             : in std_logic;
  FFC_TXPWDNB_3             : in std_logic;
  SCIADDR0             : in std_logic;
  SCIADDR1             : in std_logic;
  SCIADDR2             : in std_logic;
  SCIADDR3             : in std_logic;
  SCIADDR4             : in std_logic;
  SCIADDR5             : in std_logic;
  SCIENAUX             : in std_logic;
  SCIENCH0             : in std_logic;
  SCIENCH1             : in std_logic;
  SCIENCH2             : in std_logic;
  SCIENCH3             : in std_logic;
  SCIRD             : in std_logic;
  SCISELAUX             : in std_logic;
  SCISELCH0             : in std_logic;
  SCISELCH1             : in std_logic;
  SCISELCH2             : in std_logic;
  SCISELCH3             : in std_logic;
  SCIWDATA0             : in std_logic;
  SCIWDATA1             : in std_logic;
  SCIWDATA2             : in std_logic;
  SCIWDATA3             : in std_logic;
  SCIWDATA4             : in std_logic;
  SCIWDATA5             : in std_logic;
  SCIWDATA6             : in std_logic;
  SCIWDATA7             : in std_logic;
  SCIWSTN             : in std_logic;
  HDOUTN0             : out std_logic;
  HDOUTN1             : out std_logic;
  HDOUTN2             : out std_logic;
  HDOUTN3             : out std_logic;
  HDOUTP0             : out std_logic;
  HDOUTP1             : out std_logic;
  HDOUTP2             : out std_logic;
  HDOUTP3             : out std_logic;
  COUT0             : out std_logic;
  COUT1             : out std_logic;
  COUT2             : out std_logic;
  COUT3             : out std_logic;
  COUT4             : out std_logic;
  COUT5             : out std_logic;
  COUT6             : out std_logic;
  COUT7             : out std_logic;
  COUT8             : out std_logic;
  COUT9             : out std_logic;
  COUT10             : out std_logic;
  COUT11             : out std_logic;
  COUT12             : out std_logic;
  COUT13             : out std_logic;
  COUT14             : out std_logic;
  COUT15             : out std_logic;
  COUT16             : out std_logic;
  COUT17             : out std_logic;
  COUT18             : out std_logic;
  COUT19             : out std_logic;
  FF_RX_D_0_0             : out std_logic;
  FF_RX_D_0_1             : out std_logic;
  FF_RX_D_0_2             : out std_logic;
  FF_RX_D_0_3             : out std_logic;
  FF_RX_D_0_4             : out std_logic;
  FF_RX_D_0_5             : out std_logic;
  FF_RX_D_0_6             : out std_logic;
  FF_RX_D_0_7             : out std_logic;
  FF_RX_D_0_8             : out std_logic;
  FF_RX_D_0_9             : out std_logic;
  FF_RX_D_0_10             : out std_logic;
  FF_RX_D_0_11             : out std_logic;
  FF_RX_D_0_12             : out std_logic;
  FF_RX_D_0_13             : out std_logic;
  FF_RX_D_0_14             : out std_logic;
  FF_RX_D_0_15             : out std_logic;
  FF_RX_D_0_16             : out std_logic;
  FF_RX_D_0_17             : out std_logic;
  FF_RX_D_0_18             : out std_logic;
  FF_RX_D_0_19             : out std_logic;
  FF_RX_D_0_20             : out std_logic;
  FF_RX_D_0_21             : out std_logic;
  FF_RX_D_0_22             : out std_logic;
  FF_RX_D_0_23             : out std_logic;
  FF_RX_D_1_0             : out std_logic;
  FF_RX_D_1_1             : out std_logic;
  FF_RX_D_1_2             : out std_logic;
  FF_RX_D_1_3             : out std_logic;
  FF_RX_D_1_4             : out std_logic;
  FF_RX_D_1_5             : out std_logic;
  FF_RX_D_1_6             : out std_logic;
  FF_RX_D_1_7             : out std_logic;
  FF_RX_D_1_8             : out std_logic;
  FF_RX_D_1_9             : out std_logic;
  FF_RX_D_1_10             : out std_logic;
  FF_RX_D_1_11             : out std_logic;
  FF_RX_D_1_12             : out std_logic;
  FF_RX_D_1_13             : out std_logic;
  FF_RX_D_1_14             : out std_logic;
  FF_RX_D_1_15             : out std_logic;
  FF_RX_D_1_16             : out std_logic;
  FF_RX_D_1_17             : out std_logic;
  FF_RX_D_1_18             : out std_logic;
  FF_RX_D_1_19             : out std_logic;
  FF_RX_D_1_20             : out std_logic;
  FF_RX_D_1_21             : out std_logic;
  FF_RX_D_1_22             : out std_logic;
  FF_RX_D_1_23             : out std_logic;
  FF_RX_D_2_0             : out std_logic;
  FF_RX_D_2_1             : out std_logic;
  FF_RX_D_2_2             : out std_logic;
  FF_RX_D_2_3             : out std_logic;
  FF_RX_D_2_4             : out std_logic;
  FF_RX_D_2_5             : out std_logic;
  FF_RX_D_2_6             : out std_logic;
  FF_RX_D_2_7             : out std_logic;
  FF_RX_D_2_8             : out std_logic;
  FF_RX_D_2_9             : out std_logic;
  FF_RX_D_2_10             : out std_logic;
  FF_RX_D_2_11             : out std_logic;
  FF_RX_D_2_12             : out std_logic;
  FF_RX_D_2_13             : out std_logic;
  FF_RX_D_2_14             : out std_logic;
  FF_RX_D_2_15             : out std_logic;
  FF_RX_D_2_16             : out std_logic;
  FF_RX_D_2_17             : out std_logic;
  FF_RX_D_2_18             : out std_logic;
  FF_RX_D_2_19             : out std_logic;
  FF_RX_D_2_20             : out std_logic;
  FF_RX_D_2_21             : out std_logic;
  FF_RX_D_2_22             : out std_logic;
  FF_RX_D_2_23             : out std_logic;
  FF_RX_D_3_0             : out std_logic;
  FF_RX_D_3_1             : out std_logic;
  FF_RX_D_3_2             : out std_logic;
  FF_RX_D_3_3             : out std_logic;
  FF_RX_D_3_4             : out std_logic;
  FF_RX_D_3_5             : out std_logic;
  FF_RX_D_3_6             : out std_logic;
  FF_RX_D_3_7             : out std_logic;
  FF_RX_D_3_8             : out std_logic;
  FF_RX_D_3_9             : out std_logic;
  FF_RX_D_3_10             : out std_logic;
  FF_RX_D_3_11             : out std_logic;
  FF_RX_D_3_12             : out std_logic;
  FF_RX_D_3_13             : out std_logic;
  FF_RX_D_3_14             : out std_logic;
  FF_RX_D_3_15             : out std_logic;
  FF_RX_D_3_16             : out std_logic;
  FF_RX_D_3_17             : out std_logic;
  FF_RX_D_3_18             : out std_logic;
  FF_RX_D_3_19             : out std_logic;
  FF_RX_D_3_20             : out std_logic;
  FF_RX_D_3_21             : out std_logic;
  FF_RX_D_3_22             : out std_logic;
  FF_RX_D_3_23             : out std_logic;
  FF_RX_F_CLK_0             : out std_logic;
  FF_RX_F_CLK_1             : out std_logic;
  FF_RX_F_CLK_2             : out std_logic;
  FF_RX_F_CLK_3             : out std_logic;
  FF_RX_H_CLK_0             : out std_logic;
  FF_RX_H_CLK_1             : out std_logic;
  FF_RX_H_CLK_2             : out std_logic;
  FF_RX_H_CLK_3             : out std_logic;
  FF_RX_Q_CLK_0             : out std_logic;
  FF_RX_Q_CLK_1             : out std_logic;
  FF_RX_Q_CLK_2             : out std_logic;
  FF_RX_Q_CLK_3             : out std_logic;
  FF_TX_F_CLK             : out std_logic;
  FF_TX_H_CLK             : out std_logic;
  FF_TX_Q_CLK             : out std_logic;
  FFS_CC_OVERRUN_0             : out std_logic;
  FFS_CC_OVERRUN_1             : out std_logic;
  FFS_CC_OVERRUN_2             : out std_logic;
  FFS_CC_OVERRUN_3             : out std_logic;
  FFS_CC_UNDERRUN_0             : out std_logic;
  FFS_CC_UNDERRUN_1             : out std_logic;
  FFS_CC_UNDERRUN_2             : out std_logic;
  FFS_CC_UNDERRUN_3             : out std_logic;
  FFS_LS_SYNC_STATUS_0             : out std_logic;
  FFS_LS_SYNC_STATUS_1             : out std_logic;
  FFS_LS_SYNC_STATUS_2             : out std_logic;
  FFS_LS_SYNC_STATUS_3             : out std_logic;
  FFS_PCIE_CON_0             : out std_logic;
  FFS_PCIE_CON_1             : out std_logic;
  FFS_PCIE_CON_2             : out std_logic;
  FFS_PCIE_CON_3             : out std_logic;
  FFS_PCIE_DONE_0             : out std_logic;
  FFS_PCIE_DONE_1             : out std_logic;
  FFS_PCIE_DONE_2             : out std_logic;
  FFS_PCIE_DONE_3             : out std_logic;
  FFS_RLOS_LO_0             : out std_logic;
  FFS_RLOS_LO_1             : out std_logic;
  FFS_RLOS_LO_2             : out std_logic;
  FFS_RLOS_LO_3             : out std_logic;
  OOB_OUT_0             : out std_logic;
  OOB_OUT_1             : out std_logic;
  OOB_OUT_2             : out std_logic;
  OOB_OUT_3             : out std_logic;
  REFCK2CORE             : out std_logic;
  SCIINT             : out std_logic;
  SCIRDATA0             : out std_logic;
  SCIRDATA1             : out std_logic;
  SCIRDATA2             : out std_logic;
  SCIRDATA3             : out std_logic;
  SCIRDATA4             : out std_logic;
  SCIRDATA5             : out std_logic;
  SCIRDATA6             : out std_logic;
  SCIRDATA7             : out std_logic;
  FFS_PLOL             : out std_logic;
  FFS_RLOL_0             : out std_logic;
  FFS_RLOL_1             : out std_logic;
  FFS_RLOL_2             : out std_logic;
  FFS_RLOL_3             : out std_logic;
  FFS_RXFBFIFO_ERROR_0             : out std_logic;
  FFS_RXFBFIFO_ERROR_1             : out std_logic;
  FFS_RXFBFIFO_ERROR_2             : out std_logic;
  FFS_RXFBFIFO_ERROR_3             : out std_logic;
  FFS_TXFBFIFO_ERROR_0             : out std_logic;
  FFS_TXFBFIFO_ERROR_1             : out std_logic;
  FFS_TXFBFIFO_ERROR_2             : out std_logic;
  FFS_TXFBFIFO_ERROR_3             : out std_logic
);
end component;

begin

PCSC_sim_inst : PCSC_sim
generic map (
  CONFIG_FILE => CONFIG_FILE)
port map (
  HDINN0 => HDINN0,
  HDINN1 => HDINN1,
  HDINN2 => HDINN2,
  HDINN3 => HDINN3,
  HDINP0 => HDINP0,
  HDINP1 => HDINP1,
  HDINP2 => HDINP2,
  HDINP3 => HDINP3,
  REFCLKN => REFCLKN,
  REFCLKP => REFCLKP,
  CIN11 => CIN11,
  CIN10 => CIN10,
  CIN9 => CIN9,
  CIN8 => CIN8,
  CIN7 => CIN7,
  CIN6 => CIN6,
  CIN5 => CIN5,
  CIN4 => CIN4,
  CIN3 => CIN3,
  CIN2 => CIN2,
  CIN1 => CIN1,
  CIN0 => CIN0,
  CYAWSTN => CYAWSTN,
  FF_EBRD_CLK_3 => FF_EBRD_CLK_3,
  FF_EBRD_CLK_2 => FF_EBRD_CLK_2,
  FF_EBRD_CLK_1 => FF_EBRD_CLK_1,
  FF_EBRD_CLK_0 => FF_EBRD_CLK_0,
  FF_RXI_CLK_3 => FF_RXI_CLK_3,
  FF_RXI_CLK_2 => FF_RXI_CLK_2,
  FF_RXI_CLK_1 => FF_RXI_CLK_1,
  FF_RXI_CLK_0 => FF_RXI_CLK_0,

  FF_TX_D_0_0 => FF_TX_D_0_0,
  FF_TX_D_0_1 => FF_TX_D_0_1,
  FF_TX_D_0_2 => FF_TX_D_0_2,
  FF_TX_D_0_3 => FF_TX_D_0_3,
  FF_TX_D_0_4 => FF_TX_D_0_4,
  FF_TX_D_0_5 => FF_TX_D_0_5,
  FF_TX_D_0_6 => FF_TX_D_0_6,
  FF_TX_D_0_7 => FF_TX_D_0_7,
  FF_TX_D_0_8 => FF_TX_D_0_8,
  FF_TX_D_0_9 => FF_TX_D_0_9,
  FF_TX_D_0_10 => FF_TX_D_0_10,
  FF_TX_D_0_11 => FF_TX_D_0_11,
  FF_TX_D_0_12 => FF_TX_D_0_12,
  FF_TX_D_0_13 => FF_TX_D_0_13,
  FF_TX_D_0_14 => FF_TX_D_0_14,
  FF_TX_D_0_15 => FF_TX_D_0_15,
  FF_TX_D_0_16 => FF_TX_D_0_16,
  FF_TX_D_0_17 => FF_TX_D_0_17,
  FF_TX_D_0_18 => FF_TX_D_0_18,
  FF_TX_D_0_19 => FF_TX_D_0_19,
  FF_TX_D_0_20 => FF_TX_D_0_20,
  FF_TX_D_0_21 => FF_TX_D_0_21,
  FF_TX_D_0_22 => FF_TX_D_0_22,
  FF_TX_D_0_23 => FF_TX_D_0_23,
  FF_TX_D_1_0 => FF_TX_D_1_0,
  FF_TX_D_1_1 => FF_TX_D_1_1,
  FF_TX_D_1_2 => FF_TX_D_1_2,
  FF_TX_D_1_3 => FF_TX_D_1_3,
  FF_TX_D_1_4 => FF_TX_D_1_4,
  FF_TX_D_1_5 => FF_TX_D_1_5,
  FF_TX_D_1_6 => FF_TX_D_1_6,
  FF_TX_D_1_7 => FF_TX_D_1_7,
  FF_TX_D_1_8 => FF_TX_D_1_8,
  FF_TX_D_1_9 => FF_TX_D_1_9,
  FF_TX_D_1_10 => FF_TX_D_1_10,
  FF_TX_D_1_11 => FF_TX_D_1_11,
  FF_TX_D_1_12 => FF_TX_D_1_12,
  FF_TX_D_1_13 => FF_TX_D_1_13,
  FF_TX_D_1_14 => FF_TX_D_1_14,
  FF_TX_D_1_15 => FF_TX_D_1_15,
  FF_TX_D_1_16 => FF_TX_D_1_16,
  FF_TX_D_1_17 => FF_TX_D_1_17,
  FF_TX_D_1_18 => FF_TX_D_1_18,
  FF_TX_D_1_19 => FF_TX_D_1_19,
  FF_TX_D_1_20 => FF_TX_D_1_20,
  FF_TX_D_1_21 => FF_TX_D_1_21,
  FF_TX_D_1_22 => FF_TX_D_1_22,
  FF_TX_D_1_23 => FF_TX_D_1_23,
  FF_TX_D_2_0 => FF_TX_D_2_0,
  FF_TX_D_2_1 => FF_TX_D_2_1,
  FF_TX_D_2_2 => FF_TX_D_2_2,
  FF_TX_D_2_3 => FF_TX_D_2_3,
  FF_TX_D_2_4 => FF_TX_D_2_4,
  FF_TX_D_2_5 => FF_TX_D_2_5,
  FF_TX_D_2_6 => FF_TX_D_2_6,
  FF_TX_D_2_7 => FF_TX_D_2_7,
  FF_TX_D_2_8 => FF_TX_D_2_8,
  FF_TX_D_2_9 => FF_TX_D_2_9,
  FF_TX_D_2_10 => FF_TX_D_2_10,
  FF_TX_D_2_11 => FF_TX_D_2_11,
  FF_TX_D_2_12 => FF_TX_D_2_12,
  FF_TX_D_2_13 => FF_TX_D_2_13,
  FF_TX_D_2_14 => FF_TX_D_2_14,
  FF_TX_D_2_15 => FF_TX_D_2_15,
  FF_TX_D_2_16 => FF_TX_D_2_16,
  FF_TX_D_2_17 => FF_TX_D_2_17,
  FF_TX_D_2_18 => FF_TX_D_2_18,
  FF_TX_D_2_19 => FF_TX_D_2_19,
  FF_TX_D_2_20 => FF_TX_D_2_20,
  FF_TX_D_2_21 => FF_TX_D_2_21,
  FF_TX_D_2_22 => FF_TX_D_2_22,
  FF_TX_D_2_23 => FF_TX_D_2_23,
  FF_TX_D_3_0 => FF_TX_D_3_0,
  FF_TX_D_3_1 => FF_TX_D_3_1,
  FF_TX_D_3_2 => FF_TX_D_3_2,
  FF_TX_D_3_3 => FF_TX_D_3_3,
  FF_TX_D_3_4 => FF_TX_D_3_4,
  FF_TX_D_3_5 => FF_TX_D_3_5,
  FF_TX_D_3_6 => FF_TX_D_3_6,
  FF_TX_D_3_7 => FF_TX_D_3_7,
  FF_TX_D_3_8 => FF_TX_D_3_8,
  FF_TX_D_3_9 => FF_TX_D_3_9,
  FF_TX_D_3_10 => FF_TX_D_3_10,
  FF_TX_D_3_11 => FF_TX_D_3_11,
  FF_TX_D_3_12 => FF_TX_D_3_12,
  FF_TX_D_3_13 => FF_TX_D_3_13,
  FF_TX_D_3_14 => FF_TX_D_3_14,
  FF_TX_D_3_15 => FF_TX_D_3_15,
  FF_TX_D_3_16 => FF_TX_D_3_16,
  FF_TX_D_3_17 => FF_TX_D_3_17,
  FF_TX_D_3_18 => FF_TX_D_3_18,
  FF_TX_D_3_19 => FF_TX_D_3_19,
  FF_TX_D_3_20 => FF_TX_D_3_20,
  FF_TX_D_3_21 => FF_TX_D_3_21,
  FF_TX_D_3_22 => FF_TX_D_3_22,
  FF_TX_D_3_23 => FF_TX_D_3_23,
  FF_TXI_CLK_0 => FF_TXI_CLK_0,
  FF_TXI_CLK_1 => FF_TXI_CLK_1,
  FF_TXI_CLK_2 => FF_TXI_CLK_2,
  FF_TXI_CLK_3 => FF_TXI_CLK_3,
  FFC_CK_CORE_RX => FFC_CK_CORE_RX,
  FFC_CK_CORE_TX => FFC_CK_CORE_TX,
  FFC_EI_EN_0 => FFC_EI_EN_0,
  FFC_EI_EN_1 => FFC_EI_EN_1,
  FFC_EI_EN_2 => FFC_EI_EN_2,
  FFC_EI_EN_3 => FFC_EI_EN_3,
  FFC_ENABLE_CGALIGN_0 => FFC_ENABLE_CGALIGN_0,
  FFC_ENABLE_CGALIGN_1 => FFC_ENABLE_CGALIGN_1,
  FFC_ENABLE_CGALIGN_2 => FFC_ENABLE_CGALIGN_2,
  FFC_ENABLE_CGALIGN_3 => FFC_ENABLE_CGALIGN_3,
  FFC_FB_LOOPBACK_0 => FFC_FB_LOOPBACK_0,
  FFC_FB_LOOPBACK_1 => FFC_FB_LOOPBACK_1,
  FFC_FB_LOOPBACK_2 => FFC_FB_LOOPBACK_2,
  FFC_FB_LOOPBACK_3 => FFC_FB_LOOPBACK_3,
  FFC_LANE_RX_RST_0 => FFC_LANE_RX_RST_0,
  FFC_LANE_RX_RST_1 => FFC_LANE_RX_RST_1,
  FFC_LANE_RX_RST_2 => FFC_LANE_RX_RST_2,
  FFC_LANE_RX_RST_3 => FFC_LANE_RX_RST_3,
  FFC_LANE_TX_RST_0 => FFC_LANE_TX_RST_0,
  FFC_LANE_TX_RST_1 => FFC_LANE_TX_RST_1,
  FFC_LANE_TX_RST_2 => FFC_LANE_TX_RST_2,
  FFC_LANE_TX_RST_3 => FFC_LANE_TX_RST_3,
  FFC_MACRO_RST => FFC_MACRO_RST,
  FFC_PCI_DET_EN_0 => FFC_PCI_DET_EN_0,
  FFC_PCI_DET_EN_1 => FFC_PCI_DET_EN_1,
  FFC_PCI_DET_EN_2 => FFC_PCI_DET_EN_2,
  FFC_PCI_DET_EN_3 => FFC_PCI_DET_EN_3,
  FFC_PCIE_CT_0 => FFC_PCIE_CT_0,
  FFC_PCIE_CT_1 => FFC_PCIE_CT_1,
  FFC_PCIE_CT_2 => FFC_PCIE_CT_2,
  FFC_PCIE_CT_3 => FFC_PCIE_CT_3,
  FFC_PFIFO_CLR_0 => FFC_PFIFO_CLR_0,
  FFC_PFIFO_CLR_1 => FFC_PFIFO_CLR_1,
  FFC_PFIFO_CLR_2 => FFC_PFIFO_CLR_2,
  FFC_PFIFO_CLR_3 => FFC_PFIFO_CLR_3,
  FFC_QUAD_RST => FFC_QUAD_RST,
  FFC_RRST_0 => FFC_RRST_0,
  FFC_RRST_1 => FFC_RRST_1,
  FFC_RRST_2 => FFC_RRST_2,
  FFC_RRST_3 => FFC_RRST_3,
  FFC_RXPWDNB_0 => FFC_RXPWDNB_0,
  FFC_RXPWDNB_1 => FFC_RXPWDNB_1,
  FFC_RXPWDNB_2 => FFC_RXPWDNB_2,
  FFC_RXPWDNB_3 => FFC_RXPWDNB_3,
  FFC_SB_INV_RX_0 => FFC_SB_INV_RX_0,
  FFC_SB_INV_RX_1 => FFC_SB_INV_RX_1,
  FFC_SB_INV_RX_2 => FFC_SB_INV_RX_2,
  FFC_SB_INV_RX_3 => FFC_SB_INV_RX_3,
  FFC_SB_PFIFO_LP_0 => FFC_SB_PFIFO_LP_0,
  FFC_SB_PFIFO_LP_1 => FFC_SB_PFIFO_LP_1,
  FFC_SB_PFIFO_LP_2 => FFC_SB_PFIFO_LP_2,
  FFC_SB_PFIFO_LP_3 => FFC_SB_PFIFO_LP_3,
  FFC_SIGNAL_DETECT_0 => FFC_SIGNAL_DETECT_0,
  FFC_SIGNAL_DETECT_1 => FFC_SIGNAL_DETECT_1,
  FFC_SIGNAL_DETECT_2 => FFC_SIGNAL_DETECT_2,
  FFC_SIGNAL_DETECT_3 => FFC_SIGNAL_DETECT_3,
  FFC_TRST => FFC_TRST,
  FFC_TXPWDNB_0 => FFC_TXPWDNB_0,
  FFC_TXPWDNB_1 => FFC_TXPWDNB_1,
  FFC_TXPWDNB_2 => FFC_TXPWDNB_2,
  FFC_TXPWDNB_3 => FFC_TXPWDNB_3,
  SCIADDR0 => SCIADDR0,
  SCIADDR1 => SCIADDR1,
  SCIADDR2 => SCIADDR2,
  SCIADDR3 => SCIADDR3,
  SCIADDR4 => SCIADDR4,
  SCIADDR5 => SCIADDR5,
  SCIENAUX => SCIENAUX,
  SCIENCH0 => SCIENCH0,
  SCIENCH1 => SCIENCH1,
  SCIENCH2 => SCIENCH2,
  SCIENCH3 => SCIENCH3,
  SCIRD => SCIRD,
  SCISELAUX => SCISELAUX,
  SCISELCH0 => SCISELCH0,
  SCISELCH1 => SCISELCH1,
  SCISELCH2 => SCISELCH2,
  SCISELCH3 => SCISELCH3,
  SCIWDATA0 => SCIWDATA0,
  SCIWDATA1 => SCIWDATA1,
  SCIWDATA2 => SCIWDATA2,
  SCIWDATA3 => SCIWDATA3,
  SCIWDATA4 => SCIWDATA4,
  SCIWDATA5 => SCIWDATA5,
  SCIWDATA6 => SCIWDATA6,
  SCIWDATA7 => SCIWDATA7,
  SCIWSTN => SCIWSTN,
  HDOUTN0 => HDOUTN0,
  HDOUTN1 => HDOUTN1,
  HDOUTN2 => HDOUTN2,
  HDOUTN3 => HDOUTN3,
  HDOUTP0 => HDOUTP0,
  HDOUTP1 => HDOUTP1,
  HDOUTP2 => HDOUTP2,
  HDOUTP3 => HDOUTP3,
  COUT19 => COUT19,
  COUT18 => COUT18,
  COUT17 => COUT17,
  COUT16 => COUT16,
  COUT15 => COUT15,
  COUT14 => COUT14,
  COUT13 => COUT13,
  COUT12 => COUT12,
  COUT11 => COUT11,
  COUT10 => COUT10,
  COUT9 => COUT9,
  COUT8 => COUT8,
  COUT7 => COUT7,
  COUT6 => COUT6,
  COUT5 => COUT5,
  COUT4 => COUT4,
  COUT3 => COUT3,
  COUT2 => COUT2,
  COUT1 => COUT1,
  COUT0 => COUT0,
  FF_RX_D_0_0 => FF_RX_D_0_0,
  FF_RX_D_0_1 => FF_RX_D_0_1,
  FF_RX_D_0_2 => FF_RX_D_0_2,
  FF_RX_D_0_3 => FF_RX_D_0_3,
  FF_RX_D_0_4 => FF_RX_D_0_4,
  FF_RX_D_0_5 => FF_RX_D_0_5,
  FF_RX_D_0_6 => FF_RX_D_0_6,
  FF_RX_D_0_7 => FF_RX_D_0_7,
  FF_RX_D_0_8 => FF_RX_D_0_8,
  FF_RX_D_0_9 => FF_RX_D_0_9,
  FF_RX_D_0_10 => FF_RX_D_0_10,
  FF_RX_D_0_11 => FF_RX_D_0_11,
  FF_RX_D_0_12 => FF_RX_D_0_12,
  FF_RX_D_0_13 => FF_RX_D_0_13,
  FF_RX_D_0_14 => FF_RX_D_0_14,
  FF_RX_D_0_15 => FF_RX_D_0_15,
  FF_RX_D_0_16 => FF_RX_D_0_16,
  FF_RX_D_0_17 => FF_RX_D_0_17,
  FF_RX_D_0_18 => FF_RX_D_0_18,
  FF_RX_D_0_19 => FF_RX_D_0_19,
  FF_RX_D_0_20 => FF_RX_D_0_20,
  FF_RX_D_0_21 => FF_RX_D_0_21,
  FF_RX_D_0_22 => FF_RX_D_0_22,
  FF_RX_D_0_23 => FF_RX_D_0_23,
  FF_RX_D_1_0 => FF_RX_D_1_0,
  FF_RX_D_1_1 => FF_RX_D_1_1,
  FF_RX_D_1_2 => FF_RX_D_1_2,
  FF_RX_D_1_3 => FF_RX_D_1_3,
  FF_RX_D_1_4 => FF_RX_D_1_4,
  FF_RX_D_1_5 => FF_RX_D_1_5,
  FF_RX_D_1_6 => FF_RX_D_1_6,
  FF_RX_D_1_7 => FF_RX_D_1_7,
  FF_RX_D_1_8 => FF_RX_D_1_8,
  FF_RX_D_1_9 => FF_RX_D_1_9,
  FF_RX_D_1_10 => FF_RX_D_1_10,
  FF_RX_D_1_11 => FF_RX_D_1_11,
  FF_RX_D_1_12 => FF_RX_D_1_12,
  FF_RX_D_1_13 => FF_RX_D_1_13,
  FF_RX_D_1_14 => FF_RX_D_1_14,
  FF_RX_D_1_15 => FF_RX_D_1_15,
  FF_RX_D_1_16 => FF_RX_D_1_16,
  FF_RX_D_1_17 => FF_RX_D_1_17,
  FF_RX_D_1_18 => FF_RX_D_1_18,
  FF_RX_D_1_19 => FF_RX_D_1_19,
  FF_RX_D_1_20 => FF_RX_D_1_20,
  FF_RX_D_1_21 => FF_RX_D_1_21,
  FF_RX_D_1_22 => FF_RX_D_1_22,
  FF_RX_D_1_23 => FF_RX_D_1_23,
  FF_RX_D_2_0 => FF_RX_D_2_0,
  FF_RX_D_2_1 => FF_RX_D_2_1,
  FF_RX_D_2_2 => FF_RX_D_2_2,
  FF_RX_D_2_3 => FF_RX_D_2_3,
  FF_RX_D_2_4 => FF_RX_D_2_4,
  FF_RX_D_2_5 => FF_RX_D_2_5,
  FF_RX_D_2_6 => FF_RX_D_2_6,
  FF_RX_D_2_7 => FF_RX_D_2_7,
  FF_RX_D_2_8 => FF_RX_D_2_8,
  FF_RX_D_2_9 => FF_RX_D_2_9,
  FF_RX_D_2_10 => FF_RX_D_2_10,
  FF_RX_D_2_11 => FF_RX_D_2_11,
  FF_RX_D_2_12 => FF_RX_D_2_12,
  FF_RX_D_2_13 => FF_RX_D_2_13,
  FF_RX_D_2_14 => FF_RX_D_2_14,
  FF_RX_D_2_15 => FF_RX_D_2_15,
  FF_RX_D_2_16 => FF_RX_D_2_16,
  FF_RX_D_2_17 => FF_RX_D_2_17,
  FF_RX_D_2_18 => FF_RX_D_2_18,
  FF_RX_D_2_19 => FF_RX_D_2_19,
  FF_RX_D_2_20 => FF_RX_D_2_20,
  FF_RX_D_2_21 => FF_RX_D_2_21,
  FF_RX_D_2_22 => FF_RX_D_2_22,
  FF_RX_D_2_23 => FF_RX_D_2_23,
  FF_RX_D_3_0 => FF_RX_D_3_0,
  FF_RX_D_3_1 => FF_RX_D_3_1,
  FF_RX_D_3_2 => FF_RX_D_3_2,
  FF_RX_D_3_3 => FF_RX_D_3_3,
  FF_RX_D_3_4 => FF_RX_D_3_4,
  FF_RX_D_3_5 => FF_RX_D_3_5,
  FF_RX_D_3_6 => FF_RX_D_3_6,
  FF_RX_D_3_7 => FF_RX_D_3_7,
  FF_RX_D_3_8 => FF_RX_D_3_8,
  FF_RX_D_3_9 => FF_RX_D_3_9,
  FF_RX_D_3_10 => FF_RX_D_3_10,
  FF_RX_D_3_11 => FF_RX_D_3_11,
  FF_RX_D_3_12 => FF_RX_D_3_12,
  FF_RX_D_3_13 => FF_RX_D_3_13,
  FF_RX_D_3_14 => FF_RX_D_3_14,
  FF_RX_D_3_15 => FF_RX_D_3_15,
  FF_RX_D_3_16 => FF_RX_D_3_16,
  FF_RX_D_3_17 => FF_RX_D_3_17,
  FF_RX_D_3_18 => FF_RX_D_3_18,
  FF_RX_D_3_19 => FF_RX_D_3_19,
  FF_RX_D_3_20 => FF_RX_D_3_20,
  FF_RX_D_3_21 => FF_RX_D_3_21,
  FF_RX_D_3_22 => FF_RX_D_3_22,
  FF_RX_D_3_23 => FF_RX_D_3_23,
  FF_RX_F_CLK_0 => FF_RX_F_CLK_0,
  FF_RX_F_CLK_1 => FF_RX_F_CLK_1,
  FF_RX_F_CLK_2 => FF_RX_F_CLK_2,
  FF_RX_F_CLK_3 => FF_RX_F_CLK_3,
  FF_RX_H_CLK_0 => FF_RX_H_CLK_0,
  FF_RX_H_CLK_1 => FF_RX_H_CLK_1,
  FF_RX_H_CLK_2 => FF_RX_H_CLK_2,
  FF_RX_H_CLK_3 => FF_RX_H_CLK_3,
  FF_RX_Q_CLK_0 => FF_RX_Q_CLK_0,
  FF_RX_Q_CLK_1 => FF_RX_Q_CLK_1,
  FF_RX_Q_CLK_2 => FF_RX_Q_CLK_2,
  FF_RX_Q_CLK_3 => FF_RX_Q_CLK_3,
  FF_TX_F_CLK => FF_TX_F_CLK,
  FF_TX_H_CLK => FF_TX_H_CLK,
  FF_TX_Q_CLK => FF_TX_Q_CLK,
  FFS_CC_OVERRUN_0 => FFS_CC_OVERRUN_0,
  FFS_CC_OVERRUN_1 => FFS_CC_OVERRUN_1,
  FFS_CC_OVERRUN_2 => FFS_CC_OVERRUN_2,
  FFS_CC_OVERRUN_3 => FFS_CC_OVERRUN_3,
  FFS_CC_UNDERRUN_0 => FFS_CC_UNDERRUN_0,
  FFS_CC_UNDERRUN_1 => FFS_CC_UNDERRUN_1,
  FFS_CC_UNDERRUN_2 => FFS_CC_UNDERRUN_2,
  FFS_CC_UNDERRUN_3 => FFS_CC_UNDERRUN_3,
  FFS_LS_SYNC_STATUS_0 => FFS_LS_SYNC_STATUS_0,
  FFS_LS_SYNC_STATUS_1 => FFS_LS_SYNC_STATUS_1,
  FFS_LS_SYNC_STATUS_2 => FFS_LS_SYNC_STATUS_2,
  FFS_LS_SYNC_STATUS_3 => FFS_LS_SYNC_STATUS_3,
  FFS_PCIE_CON_0 => FFS_PCIE_CON_0,
  FFS_PCIE_CON_1 => FFS_PCIE_CON_1,
  FFS_PCIE_CON_2 => FFS_PCIE_CON_2,
  FFS_PCIE_CON_3 => FFS_PCIE_CON_3,
  FFS_PCIE_DONE_0 => FFS_PCIE_DONE_0,
  FFS_PCIE_DONE_1 => FFS_PCIE_DONE_1,
  FFS_PCIE_DONE_2 => FFS_PCIE_DONE_2,
  FFS_PCIE_DONE_3 => FFS_PCIE_DONE_3,
  FFS_RLOS_LO_0 => FFS_RLOS_LO_0,
  FFS_RLOS_LO_1 => FFS_RLOS_LO_1,
  FFS_RLOS_LO_2 => FFS_RLOS_LO_2,
  FFS_RLOS_LO_3 => FFS_RLOS_LO_3,
  FFS_PLOL => FFS_PLOL,
  FFS_RLOL_0 => FFS_RLOL_0,
  FFS_RLOL_1 => FFS_RLOL_1,
  FFS_RLOL_2 => FFS_RLOL_2,
  FFS_RLOL_3 => FFS_RLOL_3,
  FFS_RXFBFIFO_ERROR_0 => FFS_RXFBFIFO_ERROR_0,
  FFS_RXFBFIFO_ERROR_1 => FFS_RXFBFIFO_ERROR_1,
  FFS_RXFBFIFO_ERROR_2 => FFS_RXFBFIFO_ERROR_2,
  FFS_RXFBFIFO_ERROR_3 => FFS_RXFBFIFO_ERROR_3,
  FFS_TXFBFIFO_ERROR_0 => FFS_TXFBFIFO_ERROR_0,
  FFS_TXFBFIFO_ERROR_1 => FFS_TXFBFIFO_ERROR_1,
  FFS_TXFBFIFO_ERROR_2 => FFS_TXFBFIFO_ERROR_2,
  FFS_TXFBFIFO_ERROR_3 => FFS_TXFBFIFO_ERROR_3,
  OOB_OUT_0 => OOB_OUT_0,
  OOB_OUT_1 => OOB_OUT_1,
  OOB_OUT_2 => OOB_OUT_2,
  OOB_OUT_3 => OOB_OUT_3,
  REFCK2CORE => REFCK2CORE,
  SCIINT => SCIINT,
  SCIRDATA0 => SCIRDATA0,
  SCIRDATA1 => SCIRDATA1,
  SCIRDATA2 => SCIRDATA2,
  SCIRDATA3 => SCIRDATA3,
  SCIRDATA4 => SCIRDATA4,
  SCIRDATA5 => SCIRDATA5,
  SCIRDATA6 => SCIRDATA6,
  SCIRDATA7 => SCIRDATA7
   );

end PCSC_arch;

--synopsys translate_on

--synopsys translate_off
library ECP2;
use ECP2.components.all;
--synopsys translate_on

library IEEE, STD;
use IEEE.std_logic_1164.all;
use STD.TEXTIO.all;

entity serdes_gbe_0_intclock_8b is
   GENERIC (USER_CONFIG_FILE    :  String := "serdes_gbe_0_intclock_8b.txt");
 port (
   core_txrefclk : in std_logic;
   core_rxrefclk : in std_logic;
   hdinp0, hdinn0 : in std_logic;
   hdoutp0, hdoutn0 : out std_logic;
   ff_rxiclk_ch0, ff_txiclk_ch0, ff_ebrd_clk_0 : in std_logic;
   ff_txdata_ch0 : in std_logic_vector (7 downto 0);
   ff_rxdata_ch0 : out std_logic_vector (7 downto 0);
   ff_tx_k_cntrl_ch0 : in std_logic;
   ff_rx_k_cntrl_ch0 : out std_logic;
   ff_rxfullclk_ch0 : out std_logic;
   ff_xmit_ch0 : in std_logic;
   ff_correct_disp_ch0 : in std_logic;
   ff_disp_err_ch0, ff_cv_ch0 : out std_logic;
   ff_rx_even_ch0 : out std_logic;
   ffc_rrst_ch0 : in std_logic;
   ffc_lane_tx_rst_ch0 : in std_logic;
   ffc_lane_rx_rst_ch0 : in std_logic;
   ffc_txpwdnb_ch0 : in std_logic;
   ffc_rxpwdnb_ch0 : in std_logic;
   ffs_rlos_lo_ch0 : out std_logic;
   ffs_ls_sync_status_ch0 : out std_logic;
   ffs_rlol_ch0 : out std_logic;
   oob_out_ch0 : out std_logic;
   ffc_macro_rst : in std_logic;
   ffc_quad_rst : in std_logic;
   ffc_trst : in std_logic;
   ff_txfullclk : out std_logic;
   ff_txhalfclk : out std_logic;
   refck2core : out std_logic;
   ffs_plol : out std_logic);

end serdes_gbe_0_intclock_8b;

architecture serdes_gbe_0_intclock_8b_arch of serdes_gbe_0_intclock_8b is

component VLO
port (
   Z : out std_logic);
end component;

component VHI
port (
   Z : out std_logic);
end component;
component PCSC
--synopsys translate_off
GENERIC(
  CONFIG_FILE : String
  );
--synopsys translate_on
port (
  HDINN0             : in std_logic;
  HDINN1             : in std_logic;
  HDINN2             : in std_logic;
  HDINN3             : in std_logic;
  HDINP0             : in std_logic;
  HDINP1             : in std_logic;
  HDINP2             : in std_logic;
  HDINP3             : in std_logic;
  REFCLKN             : in std_logic;
  REFCLKP             : in std_logic;
  CIN0             : in std_logic;
  CIN1             : in std_logic;
  CIN2             : in std_logic;
  CIN3             : in std_logic;
  CIN4             : in std_logic;
  CIN5             : in std_logic;
  CIN6             : in std_logic;
  CIN7             : in std_logic;
  CIN8             : in std_logic;
  CIN9             : in std_logic;
  CIN10             : in std_logic;
  CIN11             : in std_logic;
  CYAWSTN             : in std_logic;
  FF_EBRD_CLK_0             : in std_logic;
  FF_EBRD_CLK_1             : in std_logic;
  FF_EBRD_CLK_2             : in std_logic;
  FF_EBRD_CLK_3             : in std_logic;
  FF_RXI_CLK_0             : in std_logic;
  FF_RXI_CLK_1             : in std_logic;
  FF_RXI_CLK_2             : in std_logic;
  FF_RXI_CLK_3             : in std_logic;
  FF_TX_D_0_0             : in std_logic;
  FF_TX_D_0_1             : in std_logic;
  FF_TX_D_0_2             : in std_logic;
  FF_TX_D_0_3             : in std_logic;
  FF_TX_D_0_4             : in std_logic;
  FF_TX_D_0_5             : in std_logic;
  FF_TX_D_0_6             : in std_logic;
  FF_TX_D_0_7             : in std_logic;
  FF_TX_D_0_8             : in std_logic;
  FF_TX_D_0_9             : in std_logic;
  FF_TX_D_0_10             : in std_logic;
  FF_TX_D_0_11             : in std_logic;
  FF_TX_D_0_12             : in std_logic;
  FF_TX_D_0_13             : in std_logic;
  FF_TX_D_0_14             : in std_logic;
  FF_TX_D_0_15             : in std_logic;
  FF_TX_D_0_16             : in std_logic;
  FF_TX_D_0_17             : in std_logic;
  FF_TX_D_0_18             : in std_logic;
  FF_TX_D_0_19             : in std_logic;
  FF_TX_D_0_20             : in std_logic;
  FF_TX_D_0_21             : in std_logic;
  FF_TX_D_0_22             : in std_logic;
  FF_TX_D_0_23             : in std_logic;
  FF_TX_D_1_0             : in std_logic;
  FF_TX_D_1_1             : in std_logic;
  FF_TX_D_1_2             : in std_logic;
  FF_TX_D_1_3             : in std_logic;
  FF_TX_D_1_4             : in std_logic;
  FF_TX_D_1_5             : in std_logic;
  FF_TX_D_1_6             : in std_logic;
  FF_TX_D_1_7             : in std_logic;
  FF_TX_D_1_8             : in std_logic;
  FF_TX_D_1_9             : in std_logic;
  FF_TX_D_1_10             : in std_logic;
  FF_TX_D_1_11             : in std_logic;
  FF_TX_D_1_12             : in std_logic;
  FF_TX_D_1_13             : in std_logic;
  FF_TX_D_1_14             : in std_logic;
  FF_TX_D_1_15             : in std_logic;
  FF_TX_D_1_16             : in std_logic;
  FF_TX_D_1_17             : in std_logic;
  FF_TX_D_1_18             : in std_logic;
  FF_TX_D_1_19             : in std_logic;
  FF_TX_D_1_20             : in std_logic;
  FF_TX_D_1_21             : in std_logic;
  FF_TX_D_1_22             : in std_logic;
  FF_TX_D_1_23             : in std_logic;
  FF_TX_D_2_0             : in std_logic;
  FF_TX_D_2_1             : in std_logic;
  FF_TX_D_2_2             : in std_logic;
  FF_TX_D_2_3             : in std_logic;
  FF_TX_D_2_4             : in std_logic;
  FF_TX_D_2_5             : in std_logic;
  FF_TX_D_2_6             : in std_logic;
  FF_TX_D_2_7             : in std_logic;
  FF_TX_D_2_8             : in std_logic;
  FF_TX_D_2_9             : in std_logic;
  FF_TX_D_2_10             : in std_logic;
  FF_TX_D_2_11             : in std_logic;
  FF_TX_D_2_12             : in std_logic;
  FF_TX_D_2_13             : in std_logic;
  FF_TX_D_2_14             : in std_logic;
  FF_TX_D_2_15             : in std_logic;
  FF_TX_D_2_16             : in std_logic;
  FF_TX_D_2_17             : in std_logic;
  FF_TX_D_2_18             : in std_logic;
  FF_TX_D_2_19             : in std_logic;
  FF_TX_D_2_20             : in std_logic;
  FF_TX_D_2_21             : in std_logic;
  FF_TX_D_2_22             : in std_logic;
  FF_TX_D_2_23             : in std_logic;
  FF_TX_D_3_0             : in std_logic;
  FF_TX_D_3_1             : in std_logic;
  FF_TX_D_3_2             : in std_logic;
  FF_TX_D_3_3             : in std_logic;
  FF_TX_D_3_4             : in std_logic;
  FF_TX_D_3_5             : in std_logic;
  FF_TX_D_3_6             : in std_logic;
  FF_TX_D_3_7             : in std_logic;
  FF_TX_D_3_8             : in std_logic;
  FF_TX_D_3_9             : in std_logic;
  FF_TX_D_3_10             : in std_logic;
  FF_TX_D_3_11             : in std_logic;
  FF_TX_D_3_12             : in std_logic;
  FF_TX_D_3_13             : in std_logic;
  FF_TX_D_3_14             : in std_logic;
  FF_TX_D_3_15             : in std_logic;
  FF_TX_D_3_16             : in std_logic;
  FF_TX_D_3_17             : in std_logic;
  FF_TX_D_3_18             : in std_logic;
  FF_TX_D_3_19             : in std_logic;
  FF_TX_D_3_20             : in std_logic;
  FF_TX_D_3_21             : in std_logic;
  FF_TX_D_3_22             : in std_logic;
  FF_TX_D_3_23             : in std_logic;
  FF_TXI_CLK_0             : in std_logic;
  FF_TXI_CLK_1             : in std_logic;
  FF_TXI_CLK_2             : in std_logic;
  FF_TXI_CLK_3             : in std_logic;
  FFC_CK_CORE_RX             : in std_logic;
  FFC_CK_CORE_TX             : in std_logic;
  FFC_EI_EN_0             : in std_logic;
  FFC_EI_EN_1             : in std_logic;
  FFC_EI_EN_2             : in std_logic;
  FFC_EI_EN_3             : in std_logic;
  FFC_ENABLE_CGALIGN_0             : in std_logic;
  FFC_ENABLE_CGALIGN_1             : in std_logic;
  FFC_ENABLE_CGALIGN_2             : in std_logic;
  FFC_ENABLE_CGALIGN_3             : in std_logic;
  FFC_FB_LOOPBACK_0             : in std_logic;
  FFC_FB_LOOPBACK_1             : in std_logic;
  FFC_FB_LOOPBACK_2             : in std_logic;
  FFC_FB_LOOPBACK_3             : in std_logic;
  FFC_LANE_RX_RST_0             : in std_logic;
  FFC_LANE_RX_RST_1             : in std_logic;
  FFC_LANE_RX_RST_2             : in std_logic;
  FFC_LANE_RX_RST_3             : in std_logic;
  FFC_LANE_TX_RST_0             : in std_logic;
  FFC_LANE_TX_RST_1             : in std_logic;
  FFC_LANE_TX_RST_2             : in std_logic;
  FFC_LANE_TX_RST_3             : in std_logic;
  FFC_MACRO_RST             : in std_logic;
  FFC_PCI_DET_EN_0             : in std_logic;
  FFC_PCI_DET_EN_1             : in std_logic;
  FFC_PCI_DET_EN_2             : in std_logic;
  FFC_PCI_DET_EN_3             : in std_logic;
  FFC_PCIE_CT_0             : in std_logic;
  FFC_PCIE_CT_1             : in std_logic;
  FFC_PCIE_CT_2             : in std_logic;
  FFC_PCIE_CT_3             : in std_logic;
  FFC_PFIFO_CLR_0             : in std_logic;
  FFC_PFIFO_CLR_1             : in std_logic;
  FFC_PFIFO_CLR_2             : in std_logic;
  FFC_PFIFO_CLR_3             : in std_logic;
  FFC_QUAD_RST             : in std_logic;
  FFC_RRST_0             : in std_logic;
  FFC_RRST_1             : in std_logic;
  FFC_RRST_2             : in std_logic;
  FFC_RRST_3             : in std_logic;
  FFC_RXPWDNB_0             : in std_logic;
  FFC_RXPWDNB_1             : in std_logic;
  FFC_RXPWDNB_2             : in std_logic;
  FFC_RXPWDNB_3             : in std_logic;
  FFC_SB_INV_RX_0             : in std_logic;
  FFC_SB_INV_RX_1             : in std_logic;
  FFC_SB_INV_RX_2             : in std_logic;
  FFC_SB_INV_RX_3             : in std_logic;
  FFC_SB_PFIFO_LP_0             : in std_logic;
  FFC_SB_PFIFO_LP_1             : in std_logic;
  FFC_SB_PFIFO_LP_2             : in std_logic;
  FFC_SB_PFIFO_LP_3             : in std_logic;
  FFC_SIGNAL_DETECT_0             : in std_logic;
  FFC_SIGNAL_DETECT_1             : in std_logic;
  FFC_SIGNAL_DETECT_2             : in std_logic;
  FFC_SIGNAL_DETECT_3             : in std_logic;
  FFC_TRST             : in std_logic;
  FFC_TXPWDNB_0             : in std_logic;
  FFC_TXPWDNB_1             : in std_logic;
  FFC_TXPWDNB_2             : in std_logic;
  FFC_TXPWDNB_3             : in std_logic;
  SCIADDR0             : in std_logic;
  SCIADDR1             : in std_logic;
  SCIADDR2             : in std_logic;
  SCIADDR3             : in std_logic;
  SCIADDR4             : in std_logic;
  SCIADDR5             : in std_logic;
  SCIENAUX             : in std_logic;
  SCIENCH0             : in std_logic;
  SCIENCH1             : in std_logic;
  SCIENCH2             : in std_logic;
  SCIENCH3             : in std_logic;
  SCIRD             : in std_logic;
  SCISELAUX             : in std_logic;
  SCISELCH0             : in std_logic;
  SCISELCH1             : in std_logic;
  SCISELCH2             : in std_logic;
  SCISELCH3             : in std_logic;
  SCIWDATA0             : in std_logic;
  SCIWDATA1             : in std_logic;
  SCIWDATA2             : in std_logic;
  SCIWDATA3             : in std_logic;
  SCIWDATA4             : in std_logic;
  SCIWDATA5             : in std_logic;
  SCIWDATA6             : in std_logic;
  SCIWDATA7             : in std_logic;
  SCIWSTN             : in std_logic;
  HDOUTN0             : out std_logic;
  HDOUTN1             : out std_logic;
  HDOUTN2             : out std_logic;
  HDOUTN3             : out std_logic;
  HDOUTP0             : out std_logic;
  HDOUTP1             : out std_logic;
  HDOUTP2             : out std_logic;
  HDOUTP3             : out std_logic;
  COUT0             : out std_logic;
  COUT1             : out std_logic;
  COUT2             : out std_logic;
  COUT3             : out std_logic;
  COUT4             : out std_logic;
  COUT5             : out std_logic;
  COUT6             : out std_logic;
  COUT7             : out std_logic;
  COUT8             : out std_logic;
  COUT9             : out std_logic;
  COUT10             : out std_logic;
  COUT11             : out std_logic;
  COUT12             : out std_logic;
  COUT13             : out std_logic;
  COUT14             : out std_logic;
  COUT15             : out std_logic;
  COUT16             : out std_logic;
  COUT17             : out std_logic;
  COUT18             : out std_logic;
  COUT19             : out std_logic;
  FF_RX_D_0_0             : out std_logic;
  FF_RX_D_0_1             : out std_logic;
  FF_RX_D_0_2             : out std_logic;
  FF_RX_D_0_3             : out std_logic;
  FF_RX_D_0_4             : out std_logic;
  FF_RX_D_0_5             : out std_logic;
  FF_RX_D_0_6             : out std_logic;
  FF_RX_D_0_7             : out std_logic;
  FF_RX_D_0_8             : out std_logic;
  FF_RX_D_0_9             : out std_logic;
  FF_RX_D_0_10             : out std_logic;
  FF_RX_D_0_11             : out std_logic;
  FF_RX_D_0_12             : out std_logic;
  FF_RX_D_0_13             : out std_logic;
  FF_RX_D_0_14             : out std_logic;
  FF_RX_D_0_15             : out std_logic;
  FF_RX_D_0_16             : out std_logic;
  FF_RX_D_0_17             : out std_logic;
  FF_RX_D_0_18             : out std_logic;
  FF_RX_D_0_19             : out std_logic;
  FF_RX_D_0_20             : out std_logic;
  FF_RX_D_0_21             : out std_logic;
  FF_RX_D_0_22             : out std_logic;
  FF_RX_D_0_23             : out std_logic;
  FF_RX_D_1_0             : out std_logic;
  FF_RX_D_1_1             : out std_logic;
  FF_RX_D_1_2             : out std_logic;
  FF_RX_D_1_3             : out std_logic;
  FF_RX_D_1_4             : out std_logic;
  FF_RX_D_1_5             : out std_logic;
  FF_RX_D_1_6             : out std_logic;
  FF_RX_D_1_7             : out std_logic;
  FF_RX_D_1_8             : out std_logic;
  FF_RX_D_1_9             : out std_logic;
  FF_RX_D_1_10             : out std_logic;
  FF_RX_D_1_11             : out std_logic;
  FF_RX_D_1_12             : out std_logic;
  FF_RX_D_1_13             : out std_logic;
  FF_RX_D_1_14             : out std_logic;
  FF_RX_D_1_15             : out std_logic;
  FF_RX_D_1_16             : out std_logic;
  FF_RX_D_1_17             : out std_logic;
  FF_RX_D_1_18             : out std_logic;
  FF_RX_D_1_19             : out std_logic;
  FF_RX_D_1_20             : out std_logic;
  FF_RX_D_1_21             : out std_logic;
  FF_RX_D_1_22             : out std_logic;
  FF_RX_D_1_23             : out std_logic;
  FF_RX_D_2_0             : out std_logic;
  FF_RX_D_2_1             : out std_logic;
  FF_RX_D_2_2             : out std_logic;
  FF_RX_D_2_3             : out std_logic;
  FF_RX_D_2_4             : out std_logic;
  FF_RX_D_2_5             : out std_logic;
  FF_RX_D_2_6             : out std_logic;
  FF_RX_D_2_7             : out std_logic;
  FF_RX_D_2_8             : out std_logic;
  FF_RX_D_2_9             : out std_logic;
  FF_RX_D_2_10             : out std_logic;
  FF_RX_D_2_11             : out std_logic;
  FF_RX_D_2_12             : out std_logic;
  FF_RX_D_2_13             : out std_logic;
  FF_RX_D_2_14             : out std_logic;
  FF_RX_D_2_15             : out std_logic;
  FF_RX_D_2_16             : out std_logic;
  FF_RX_D_2_17             : out std_logic;
  FF_RX_D_2_18             : out std_logic;
  FF_RX_D_2_19             : out std_logic;
  FF_RX_D_2_20             : out std_logic;
  FF_RX_D_2_21             : out std_logic;
  FF_RX_D_2_22             : out std_logic;
  FF_RX_D_2_23             : out std_logic;
  FF_RX_D_3_0             : out std_logic;
  FF_RX_D_3_1             : out std_logic;
  FF_RX_D_3_2             : out std_logic;
  FF_RX_D_3_3             : out std_logic;
  FF_RX_D_3_4             : out std_logic;
  FF_RX_D_3_5             : out std_logic;
  FF_RX_D_3_6             : out std_logic;
  FF_RX_D_3_7             : out std_logic;
  FF_RX_D_3_8             : out std_logic;
  FF_RX_D_3_9             : out std_logic;
  FF_RX_D_3_10             : out std_logic;
  FF_RX_D_3_11             : out std_logic;
  FF_RX_D_3_12             : out std_logic;
  FF_RX_D_3_13             : out std_logic;
  FF_RX_D_3_14             : out std_logic;
  FF_RX_D_3_15             : out std_logic;
  FF_RX_D_3_16             : out std_logic;
  FF_RX_D_3_17             : out std_logic;
  FF_RX_D_3_18             : out std_logic;
  FF_RX_D_3_19             : out std_logic;
  FF_RX_D_3_20             : out std_logic;
  FF_RX_D_3_21             : out std_logic;
  FF_RX_D_3_22             : out std_logic;
  FF_RX_D_3_23             : out std_logic;
  FF_RX_F_CLK_0             : out std_logic;
  FF_RX_F_CLK_1             : out std_logic;
  FF_RX_F_CLK_2             : out std_logic;
  FF_RX_F_CLK_3             : out std_logic;
  FF_RX_H_CLK_0             : out std_logic;
  FF_RX_H_CLK_1             : out std_logic;
  FF_RX_H_CLK_2             : out std_logic;
  FF_RX_H_CLK_3             : out std_logic;
  FF_RX_Q_CLK_0             : out std_logic;
  FF_RX_Q_CLK_1             : out std_logic;
  FF_RX_Q_CLK_2             : out std_logic;
  FF_RX_Q_CLK_3             : out std_logic;
  FF_TX_F_CLK             : out std_logic;
  FF_TX_H_CLK             : out std_logic;
  FF_TX_Q_CLK             : out std_logic;
  FFS_CC_OVERRUN_0             : out std_logic;
  FFS_CC_OVERRUN_1             : out std_logic;
  FFS_CC_OVERRUN_2             : out std_logic;
  FFS_CC_OVERRUN_3             : out std_logic;
  FFS_CC_UNDERRUN_0             : out std_logic;
  FFS_CC_UNDERRUN_1             : out std_logic;
  FFS_CC_UNDERRUN_2             : out std_logic;
  FFS_CC_UNDERRUN_3             : out std_logic;
  FFS_LS_SYNC_STATUS_0             : out std_logic;
  FFS_LS_SYNC_STATUS_1             : out std_logic;
  FFS_LS_SYNC_STATUS_2             : out std_logic;
  FFS_LS_SYNC_STATUS_3             : out std_logic;
  FFS_PCIE_CON_0             : out std_logic;
  FFS_PCIE_CON_1             : out std_logic;
  FFS_PCIE_CON_2             : out std_logic;
  FFS_PCIE_CON_3             : out std_logic;
  FFS_PCIE_DONE_0             : out std_logic;
  FFS_PCIE_DONE_1             : out std_logic;
  FFS_PCIE_DONE_2             : out std_logic;
  FFS_PCIE_DONE_3             : out std_logic;
  FFS_RLOS_LO_0             : out std_logic;
  FFS_RLOS_LO_1             : out std_logic;
  FFS_RLOS_LO_2             : out std_logic;
  FFS_RLOS_LO_3             : out std_logic;
  OOB_OUT_0             : out std_logic;
  OOB_OUT_1             : out std_logic;
  OOB_OUT_2             : out std_logic;
  OOB_OUT_3             : out std_logic;
  REFCK2CORE             : out std_logic;
  SCIINT             : out std_logic;
  SCIRDATA0             : out std_logic;
  SCIRDATA1             : out std_logic;
  SCIRDATA2             : out std_logic;
  SCIRDATA3             : out std_logic;
  SCIRDATA4             : out std_logic;
  SCIRDATA5             : out std_logic;
  SCIRDATA6             : out std_logic;
  SCIRDATA7             : out std_logic;
  FFS_PLOL             : out std_logic;
  FFS_RLOL_0             : out std_logic;
  FFS_RLOL_1             : out std_logic;
  FFS_RLOL_2             : out std_logic;
  FFS_RLOL_3             : out std_logic;
  FFS_RXFBFIFO_ERROR_0             : out std_logic;
  FFS_RXFBFIFO_ERROR_1             : out std_logic;
  FFS_RXFBFIFO_ERROR_2             : out std_logic;
  FFS_RXFBFIFO_ERROR_3             : out std_logic;
  FFS_TXFBFIFO_ERROR_0             : out std_logic;
  FFS_TXFBFIFO_ERROR_1             : out std_logic;
  FFS_TXFBFIFO_ERROR_2             : out std_logic;
  FFS_TXFBFIFO_ERROR_3             : out std_logic
);
end component;
   attribute IS_ASB: string;
   attribute IS_ASB of PCSC_INST : label is "ep5m00/data/ep5m00.acd";
   attribute CONFIG_FILE: string;
   attribute CONFIG_FILE of PCSC_INST : label is USER_CONFIG_FILE;
   attribute black_box_pad_pin: string;
   attribute black_box_pad_pin of PCSC : component is "HDINP0, HDINN0, HDINP1, HDINN1, HDINP2, HDINN2, HDINP3, HDINN3, HDOUTP0, HDOUTN0, HDOUTP1, HDOUTN1, HDOUTP2, HDOUTN2, HDOUTP3, HDOUTN3, REFCLKP, REFCLKN";

signal fpsc_vlo : std_logic := '0';
signal cin : std_logic_vector (11 downto 0) := "000000000000";
signal cout : std_logic_vector (19 downto 0);

begin

vlo_inst : VLO port map(Z => fpsc_vlo);

-- pcs_quad instance
PCSC_INST : PCSC
--synopsys translate_off
  generic map (CONFIG_FILE => USER_CONFIG_FILE)
--synopsys translate_on
port map  (
  FFC_CK_CORE_TX => core_txrefclk,
  FFC_CK_CORE_RX => core_rxrefclk,
  REFCLKP => fpsc_vlo,
  REFCLKN => fpsc_vlo,
  HDINP0 => hdinp0,
  HDINN0 => hdinn0,
  HDOUTP0 => hdoutp0,
  HDOUTN0 => hdoutn0,
  SCISELCH0 => fpsc_vlo,
  SCIENCH0 => fpsc_vlo,
  FF_RXI_CLK_0 => ff_rxiclk_ch0,
  FF_TXI_CLK_0 => ff_txiclk_ch0,
  FF_EBRD_CLK_0 => ff_ebrd_clk_0,
  FF_RX_F_CLK_0 => ff_rxfullclk_ch0,
  FF_RX_H_CLK_0 => open,
  FF_RX_Q_CLK_0 => open,
  FF_TX_D_0_0 => ff_txdata_ch0(0),
  FF_TX_D_0_1 => ff_txdata_ch0(1),
  FF_TX_D_0_2 => ff_txdata_ch0(2),
  FF_TX_D_0_3 => ff_txdata_ch0(3),
  FF_TX_D_0_4 => ff_txdata_ch0(4),
  FF_TX_D_0_5 => ff_txdata_ch0(5),
  FF_TX_D_0_6 => ff_txdata_ch0(6),
  FF_TX_D_0_7 => ff_txdata_ch0(7),
  FF_TX_D_0_8 => ff_tx_k_cntrl_ch0,
  FF_TX_D_0_9 => fpsc_vlo,
  FF_TX_D_0_10 => ff_xmit_ch0,
  FF_TX_D_0_11 => ff_correct_disp_ch0,
  FF_TX_D_0_12 => fpsc_vlo,
  FF_TX_D_0_13 => fpsc_vlo,
  FF_TX_D_0_14 => fpsc_vlo,
  FF_TX_D_0_15 => fpsc_vlo,
  FF_TX_D_0_16 => fpsc_vlo,
  FF_TX_D_0_17 => fpsc_vlo,
  FF_TX_D_0_18 => fpsc_vlo,
  FF_TX_D_0_19 => fpsc_vlo,
  FF_TX_D_0_20 => fpsc_vlo,
  FF_TX_D_0_21 => fpsc_vlo,
  FF_TX_D_0_22 => fpsc_vlo,
  FF_TX_D_0_23 => fpsc_vlo,
  FF_RX_D_0_0 => ff_rxdata_ch0(0),
  FF_RX_D_0_1 => ff_rxdata_ch0(1),
  FF_RX_D_0_2 => ff_rxdata_ch0(2),
  FF_RX_D_0_3 => ff_rxdata_ch0(3),
  FF_RX_D_0_4 => ff_rxdata_ch0(4),
  FF_RX_D_0_5 => ff_rxdata_ch0(5),
  FF_RX_D_0_6 => ff_rxdata_ch0(6),
  FF_RX_D_0_7 => ff_rxdata_ch0(7),
  FF_RX_D_0_8 => ff_rx_k_cntrl_ch0,
  FF_RX_D_0_9 => ff_disp_err_ch0,
  FF_RX_D_0_10 => ff_cv_ch0,
  FF_RX_D_0_11 => ff_rx_even_ch0,
  FF_RX_D_0_12 => open,
  FF_RX_D_0_13 => open,
  FF_RX_D_0_14 => open,
  FF_RX_D_0_15 => open,
  FF_RX_D_0_16 => open,
  FF_RX_D_0_17 => open,
  FF_RX_D_0_18 => open,
  FF_RX_D_0_19 => open,
  FF_RX_D_0_20 => open,
  FF_RX_D_0_21 => open,
  FF_RX_D_0_22 => open,
  FF_RX_D_0_23 => open,
  FFC_RRST_0 => ffc_rrst_ch0,
  FFC_SIGNAL_DETECT_0 => fpsc_vlo,
  FFC_ENABLE_CGALIGN_0 => fpsc_vlo,
  FFC_SB_PFIFO_LP_0 => fpsc_vlo,
  FFC_PFIFO_CLR_0 => fpsc_vlo,
  FFC_FB_LOOPBACK_0 => fpsc_vlo,
  FFC_SB_INV_RX_0 => fpsc_vlo,
  FFC_PCIE_CT_0 => fpsc_vlo,
  FFC_PCI_DET_EN_0 => fpsc_vlo,
  FFS_PCIE_DONE_0 => open,
  FFS_PCIE_CON_0 => open,
  FFC_EI_EN_0 => fpsc_vlo,
  FFC_LANE_TX_RST_0 => ffc_lane_tx_rst_ch0,
  FFC_LANE_RX_RST_0 => ffc_lane_rx_rst_ch0,
  FFC_TXPWDNB_0 => ffc_txpwdnb_ch0,
  FFC_RXPWDNB_0 => ffc_rxpwdnb_ch0,
  FFS_RLOS_LO_0 => ffs_rlos_lo_ch0,
  FFS_LS_SYNC_STATUS_0 => ffs_ls_sync_status_ch0,
  FFS_CC_UNDERRUN_0 => open,
  FFS_CC_OVERRUN_0 => open,
  FFS_RXFBFIFO_ERROR_0 => open,
  FFS_TXFBFIFO_ERROR_0 => open,
  FFS_RLOL_0 => ffs_rlol_ch0,
  OOB_OUT_0 => oob_out_ch0,
  HDINP1 => fpsc_vlo,
  HDINN1 => fpsc_vlo,
  HDOUTP1 => open,
  HDOUTN1 => open,
  SCISELCH1 => fpsc_vlo,
  SCIENCH1 => fpsc_vlo,
  FF_RXI_CLK_1 => fpsc_vlo,
  FF_TXI_CLK_1 => fpsc_vlo,
  FF_EBRD_CLK_1 => fpsc_vlo,
  FF_RX_F_CLK_1 => open,
  FF_RX_H_CLK_1 => open,
  FF_RX_Q_CLK_1 => open,
  FF_TX_D_1_0 => fpsc_vlo,
  FF_TX_D_1_1 => fpsc_vlo,
  FF_TX_D_1_2 => fpsc_vlo,
  FF_TX_D_1_3 => fpsc_vlo,
  FF_TX_D_1_4 => fpsc_vlo,
  FF_TX_D_1_5 => fpsc_vlo,
  FF_TX_D_1_6 => fpsc_vlo,
  FF_TX_D_1_7 => fpsc_vlo,
  FF_TX_D_1_8 => fpsc_vlo,
  FF_TX_D_1_9 => fpsc_vlo,
  FF_TX_D_1_10 => fpsc_vlo,
  FF_TX_D_1_11 => fpsc_vlo,
  FF_TX_D_1_12 => fpsc_vlo,
  FF_TX_D_1_13 => fpsc_vlo,
  FF_TX_D_1_14 => fpsc_vlo,
  FF_TX_D_1_15 => fpsc_vlo,
  FF_TX_D_1_16 => fpsc_vlo,
  FF_TX_D_1_17 => fpsc_vlo,
  FF_TX_D_1_18 => fpsc_vlo,
  FF_TX_D_1_19 => fpsc_vlo,
  FF_TX_D_1_20 => fpsc_vlo,
  FF_TX_D_1_21 => fpsc_vlo,
  FF_TX_D_1_22 => fpsc_vlo,
  FF_TX_D_1_23 => fpsc_vlo,
  FF_RX_D_1_0 => open,
  FF_RX_D_1_1 => open,
  FF_RX_D_1_2 => open,
  FF_RX_D_1_3 => open,
  FF_RX_D_1_4 => open,
  FF_RX_D_1_5 => open,
  FF_RX_D_1_6 => open,
  FF_RX_D_1_7 => open,
  FF_RX_D_1_8 => open,
  FF_RX_D_1_9 => open,
  FF_RX_D_1_10 => open,
  FF_RX_D_1_11 => open,
  FF_RX_D_1_12 => open,
  FF_RX_D_1_13 => open,
  FF_RX_D_1_14 => open,
  FF_RX_D_1_15 => open,
  FF_RX_D_1_16 => open,
  FF_RX_D_1_17 => open,
  FF_RX_D_1_18 => open,
  FF_RX_D_1_19 => open,
  FF_RX_D_1_20 => open,
  FF_RX_D_1_21 => open,
  FF_RX_D_1_22 => open,
  FF_RX_D_1_23 => open,
  FFC_RRST_1 => fpsc_vlo,
  FFC_SIGNAL_DETECT_1 => fpsc_vlo,
  FFC_SB_PFIFO_LP_1 => fpsc_vlo,
  FFC_SB_INV_RX_1 => fpsc_vlo,
  FFC_PFIFO_CLR_1 => fpsc_vlo,
  FFC_PCIE_CT_1 => fpsc_vlo,
  FFC_PCI_DET_EN_1 => fpsc_vlo,
  FFC_FB_LOOPBACK_1 => fpsc_vlo,
  FFC_ENABLE_CGALIGN_1 => fpsc_vlo,
  FFC_EI_EN_1 => fpsc_vlo,
  FFC_LANE_TX_RST_1 => fpsc_vlo,
  FFC_LANE_RX_RST_1 => fpsc_vlo,
  FFC_TXPWDNB_1 => fpsc_vlo,
  FFC_RXPWDNB_1 => fpsc_vlo,
  FFS_RLOS_LO_1 => open,
  FFS_PCIE_DONE_1 => open,
  FFS_PCIE_CON_1 => open,
  FFS_LS_SYNC_STATUS_1 => open,
  FFS_CC_UNDERRUN_1 => open,
  FFS_CC_OVERRUN_1 => open,
  FFS_RLOL_1 => open,
  FFS_RXFBFIFO_ERROR_1 => open,
  FFS_TXFBFIFO_ERROR_1 => open,
  OOB_OUT_1 => open,
  HDINP2 => fpsc_vlo,
  HDINN2 => fpsc_vlo,
  HDOUTP2 => open,
  HDOUTN2 => open,
  SCISELCH2 => fpsc_vlo,
  SCIENCH2 => fpsc_vlo,
  FF_RXI_CLK_2 => fpsc_vlo,
  FF_TXI_CLK_2 => fpsc_vlo,
  FF_EBRD_CLK_2 => fpsc_vlo,
  FF_RX_F_CLK_2 => open,
  FF_RX_H_CLK_2 => open,
  FF_RX_Q_CLK_2 => open,
  FF_TX_D_2_0 => fpsc_vlo,
  FF_TX_D_2_1 => fpsc_vlo,
  FF_TX_D_2_2 => fpsc_vlo,
  FF_TX_D_2_3 => fpsc_vlo,
  FF_TX_D_2_4 => fpsc_vlo,
  FF_TX_D_2_5 => fpsc_vlo,
  FF_TX_D_2_6 => fpsc_vlo,
  FF_TX_D_2_7 => fpsc_vlo,
  FF_TX_D_2_8 => fpsc_vlo,
  FF_TX_D_2_9 => fpsc_vlo,
  FF_TX_D_2_10 => fpsc_vlo,
  FF_TX_D_2_11 => fpsc_vlo,
  FF_TX_D_2_12 => fpsc_vlo,
  FF_TX_D_2_13 => fpsc_vlo,
  FF_TX_D_2_14 => fpsc_vlo,
  FF_TX_D_2_15 => fpsc_vlo,
  FF_TX_D_2_16 => fpsc_vlo,
  FF_TX_D_2_17 => fpsc_vlo,
  FF_TX_D_2_18 => fpsc_vlo,
  FF_TX_D_2_19 => fpsc_vlo,
  FF_TX_D_2_20 => fpsc_vlo,
  FF_TX_D_2_21 => fpsc_vlo,
  FF_TX_D_2_22 => fpsc_vlo,
  FF_TX_D_2_23 => fpsc_vlo,
  FF_RX_D_2_0 => open,
  FF_RX_D_2_1 => open,
  FF_RX_D_2_2 => open,
  FF_RX_D_2_3 => open,
  FF_RX_D_2_4 => open,
  FF_RX_D_2_5 => open,
  FF_RX_D_2_6 => open,
  FF_RX_D_2_7 => open,
  FF_RX_D_2_8 => open,
  FF_RX_D_2_9 => open,
  FF_RX_D_2_10 => open,
  FF_RX_D_2_11 => open,
  FF_RX_D_2_12 => open,
  FF_RX_D_2_13 => open,
  FF_RX_D_2_14 => open,
  FF_RX_D_2_15 => open,
  FF_RX_D_2_16 => open,
  FF_RX_D_2_17 => open,
  FF_RX_D_2_18 => open,
  FF_RX_D_2_19 => open,
  FF_RX_D_2_20 => open,
  FF_RX_D_2_21 => open,
  FF_RX_D_2_22 => open,
  FF_RX_D_2_23 => open,
  FFC_RRST_2 => fpsc_vlo,
  FFC_SIGNAL_DETECT_2 => fpsc_vlo,
  FFC_SB_PFIFO_LP_2 => fpsc_vlo,
  FFC_SB_INV_RX_2 => fpsc_vlo,
  FFC_PFIFO_CLR_2 => fpsc_vlo,
  FFC_PCIE_CT_2 => fpsc_vlo,
  FFC_PCI_DET_EN_2 => fpsc_vlo,
  FFC_FB_LOOPBACK_2 => fpsc_vlo,
  FFC_ENABLE_CGALIGN_2 => fpsc_vlo,
  FFC_EI_EN_2 => fpsc_vlo,
  FFC_LANE_TX_RST_2 => fpsc_vlo,
  FFC_LANE_RX_RST_2 => fpsc_vlo,
  FFC_TXPWDNB_2 => fpsc_vlo,
  FFC_RXPWDNB_2 => fpsc_vlo,
  FFS_RLOS_LO_2 => open,
  FFS_PCIE_DONE_2 => open,
  FFS_PCIE_CON_2 => open,
  FFS_LS_SYNC_STATUS_2 => open,
  FFS_CC_UNDERRUN_2 => open,
  FFS_CC_OVERRUN_2 => open,
  FFS_RLOL_2 => open,
  FFS_RXFBFIFO_ERROR_2 => open,
  FFS_TXFBFIFO_ERROR_2 => open,
  OOB_OUT_2 => open,
  HDINP3 => fpsc_vlo,
  HDINN3 => fpsc_vlo,
  HDOUTP3 => open,
  HDOUTN3 => open,
  SCISELCH3 => fpsc_vlo,
  SCIENCH3 => fpsc_vlo,
  FF_RXI_CLK_3 => fpsc_vlo,
  FF_TXI_CLK_3 => fpsc_vlo,
  FF_EBRD_CLK_3 => fpsc_vlo,
  FF_RX_F_CLK_3 => open,
  FF_RX_H_CLK_3 => open,
  FF_RX_Q_CLK_3 => open,
  FF_TX_D_3_0 => fpsc_vlo,
  FF_TX_D_3_1 => fpsc_vlo,
  FF_TX_D_3_2 => fpsc_vlo,
  FF_TX_D_3_3 => fpsc_vlo,
  FF_TX_D_3_4 => fpsc_vlo,
  FF_TX_D_3_5 => fpsc_vlo,
  FF_TX_D_3_6 => fpsc_vlo,
  FF_TX_D_3_7 => fpsc_vlo,
  FF_TX_D_3_8 => fpsc_vlo,
  FF_TX_D_3_9 => fpsc_vlo,
  FF_TX_D_3_10 => fpsc_vlo,
  FF_TX_D_3_11 => fpsc_vlo,
  FF_TX_D_3_12 => fpsc_vlo,
  FF_TX_D_3_13 => fpsc_vlo,
  FF_TX_D_3_14 => fpsc_vlo,
  FF_TX_D_3_15 => fpsc_vlo,
  FF_TX_D_3_16 => fpsc_vlo,
  FF_TX_D_3_17 => fpsc_vlo,
  FF_TX_D_3_18 => fpsc_vlo,
  FF_TX_D_3_19 => fpsc_vlo,
  FF_TX_D_3_20 => fpsc_vlo,
  FF_TX_D_3_21 => fpsc_vlo,
  FF_TX_D_3_22 => fpsc_vlo,
  FF_TX_D_3_23 => fpsc_vlo,
  FF_RX_D_3_0 => open,
  FF_RX_D_3_1 => open,
  FF_RX_D_3_2 => open,
  FF_RX_D_3_3 => open,
  FF_RX_D_3_4 => open,
  FF_RX_D_3_5 => open,
  FF_RX_D_3_6 => open,
  FF_RX_D_3_7 => open,
  FF_RX_D_3_8 => open,
  FF_RX_D_3_9 => open,
  FF_RX_D_3_10 => open,
  FF_RX_D_3_11 => open,
  FF_RX_D_3_12 => open,
  FF_RX_D_3_13 => open,
  FF_RX_D_3_14 => open,
  FF_RX_D_3_15 => open,
  FF_RX_D_3_16 => open,
  FF_RX_D_3_17 => open,
  FF_RX_D_3_18 => open,
  FF_RX_D_3_19 => open,
  FF_RX_D_3_20 => open,
  FF_RX_D_3_21 => open,
  FF_RX_D_3_22 => open,
  FF_RX_D_3_23 => open,
  FFC_RRST_3 => fpsc_vlo,
  FFC_SIGNAL_DETECT_3 => fpsc_vlo,
  FFC_SB_PFIFO_LP_3 => fpsc_vlo,
  FFC_SB_INV_RX_3 => fpsc_vlo,
  FFC_PFIFO_CLR_3 => fpsc_vlo,
  FFC_PCIE_CT_3 => fpsc_vlo,
  FFC_PCI_DET_EN_3 => fpsc_vlo,
  FFC_FB_LOOPBACK_3 => fpsc_vlo,
  FFC_ENABLE_CGALIGN_3 => fpsc_vlo,
  FFC_EI_EN_3 => fpsc_vlo,
  FFC_LANE_TX_RST_3 => fpsc_vlo,
  FFC_LANE_RX_RST_3 => fpsc_vlo,
  FFC_TXPWDNB_3 => fpsc_vlo,
  FFC_RXPWDNB_3 => fpsc_vlo,
  FFS_RLOS_LO_3 => open,
  FFS_PCIE_DONE_3 => open,
  FFS_PCIE_CON_3 => open,
  FFS_LS_SYNC_STATUS_3 => open,
  FFS_CC_UNDERRUN_3 => open,
  FFS_CC_OVERRUN_3 => open,
  FFS_RLOL_3 => open,
  FFS_RXFBFIFO_ERROR_3 => open,
  FFS_TXFBFIFO_ERROR_3 => open,
  OOB_OUT_3 => open,
  SCIWDATA0 => fpsc_vlo,
  SCIWDATA1 => fpsc_vlo,
  SCIWDATA2 => fpsc_vlo,
  SCIWDATA3 => fpsc_vlo,
  SCIWDATA4 => fpsc_vlo,
  SCIWDATA5 => fpsc_vlo,
  SCIWDATA6 => fpsc_vlo,
  SCIWDATA7 => fpsc_vlo,
  SCIADDR0 => fpsc_vlo,
  SCIADDR1 => fpsc_vlo,
  SCIADDR2 => fpsc_vlo,
  SCIADDR3 => fpsc_vlo,
  SCIADDR4 => fpsc_vlo,
  SCIADDR5 => fpsc_vlo,
  SCIRDATA0 => open,
  SCIRDATA1 => open,
  SCIRDATA2 => open,
  SCIRDATA3 => open,
  SCIRDATA4 => open,
  SCIRDATA5 => open,
  SCIRDATA6 => open,
  SCIRDATA7 => open,
  SCIENAUX => fpsc_vlo,
  SCISELAUX => fpsc_vlo,
  SCIRD => fpsc_vlo,
  SCIWSTN => fpsc_vlo,
  CYAWSTN => fpsc_vlo,
  SCIINT => open,
  FFC_MACRO_RST => ffc_macro_rst,
  FFC_QUAD_RST => ffc_quad_rst,
  FFC_TRST => ffc_trst,
  FF_TX_F_CLK => ff_txfullclk,
  FF_TX_H_CLK => ff_txhalfclk,
  FF_TX_Q_CLK => open,
  REFCK2CORE => refck2core,
  CIN0 => cin(0),
  CIN1 => cin(1),
  CIN2 => cin(2),
  CIN3 => cin(3),
  CIN4 => cin(4),
  CIN5 => cin(5),
  CIN6 => cin(6),
  CIN7 => cin(7),
  CIN8 => cin(8),
  CIN9 => cin(9),
  CIN10 => cin(10),
  CIN11 => cin(11),
  COUT0 => cout(0),
  COUT1 => cout(1),
  COUT2 => cout(2),
  COUT3 => cout(3),
  COUT4 => cout(4),
  COUT5 => cout(5),
  COUT6 => cout(6),
  COUT7 => cout(7),
  COUT8 => cout(8),
  COUT9 => cout(9),
  COUT10 => cout(10),
  COUT11 => cout(11),
  COUT12 => cout(12),
  COUT13 => cout(13),
  COUT14 => cout(14),
  COUT15 => cout(15),
  COUT16 => cout(16),
  COUT17 => cout(17),
  COUT18 => cout(18),
  COUT19 => cout(19),
  FFS_PLOL => ffs_plol);

--synopsys translate_off
file_read : PROCESS
VARIABLE open_status : file_open_status;
FILE config : text;
BEGIN
   file_open (open_status, config, USER_CONFIG_FILE, read_mode);
   IF (open_status = name_error) THEN
      report "Auto configuration file for PCS module not found.  PCS internal configuration registers will not be initialized correctly during simulation!"
      severity ERROR;
   END IF;
   wait;
END PROCESS;
--synopsys translate_on

end serdes_gbe_0_intclock_8b_arch ;
