
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

		input	wire	[7:0]	GMII_TXD	,	// out: Tx data[7:0]
		input	wire			GMII_TX_EN	,	// out: Tx enable
		input	wire			GMII_TX_ER	,	// out: TX error
		output	wire	[7:0]	GMII_RXD	,	// in : Rx data[7:0]
		output	wire			GMII_RX_DV	,	// in : Rx data valid
		output	wire			GMII_RX_ER	,	// in : Rx error
		output	wire			GMII_CLK	,
		
		output	wire	[15:0] 	STATUS_VECTOR,	// out: Core status.[15:0]
		input	wire			SEL_SGMII	
	);

endmodule


`default_nettype wire
