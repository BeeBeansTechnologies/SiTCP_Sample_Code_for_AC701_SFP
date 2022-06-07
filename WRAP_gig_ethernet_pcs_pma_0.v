
`default_nettype none

module
	WRAP_gig_ethernet_pcs_pma_0 (
		input	wire			SYS_CLK		,
		input	wire			RESET_IN	,
		input	wire			SGMII_CLK_P	,
		input	wire			SGMII_CLK_N	,
		output	wire			SFP_TX_P	,
		output	wire			SFP_TX_N	,
		input	wire			SFP_RX_P	,
		input	wire			SFP_RX_N	,

		input	wire	[7:0]	GMII_TXD	,
		input	wire			GMII_TX_EN	,
		input	wire			GMII_TX_ER	,
		output	wire	[7:0]	GMII_RXD	,
		output	wire			GMII_RX_DV	,
		output	wire			GMII_RX_ER	,
		output	wire			GMII_CLK	,
		
		output	wire	[15:0] 	STATUS_VECTOR,
		input	wire			SEL_SGMII	
	);

endmodule


`default_nettype wire
