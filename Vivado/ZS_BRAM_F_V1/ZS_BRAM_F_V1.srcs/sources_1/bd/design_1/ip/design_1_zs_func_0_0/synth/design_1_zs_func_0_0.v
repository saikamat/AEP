// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:zs_func:1.0
// IP Revision: 1707130156

(* X_CORE_INFO = "zs_func,Vivado 2015.4" *)
(* CHECK_LICENSE_TYPE = "design_1_zs_func_0_0,zs_func,{}" *)
(* CORE_GENERATION_INFO = "design_1_zs_func_0_0,zs_func,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=zs_func,x_ipVersion=1.0,x_ipCoreRevision=1707130156,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CRTL_BUS_ADDR_WIDTH=5,C_S_AXI_CRTL_BUS_DATA_WIDTH=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_zs_func_0_0 (
  s_axi_CRTL_BUS_AWADDR,
  s_axi_CRTL_BUS_AWVALID,
  s_axi_CRTL_BUS_AWREADY,
  s_axi_CRTL_BUS_WDATA,
  s_axi_CRTL_BUS_WSTRB,
  s_axi_CRTL_BUS_WVALID,
  s_axi_CRTL_BUS_WREADY,
  s_axi_CRTL_BUS_BRESP,
  s_axi_CRTL_BUS_BVALID,
  s_axi_CRTL_BUS_BREADY,
  s_axi_CRTL_BUS_ARADDR,
  s_axi_CRTL_BUS_ARVALID,
  s_axi_CRTL_BUS_ARREADY,
  s_axi_CRTL_BUS_RDATA,
  s_axi_CRTL_BUS_RRESP,
  s_axi_CRTL_BUS_RVALID,
  s_axi_CRTL_BUS_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  ImgIn_Clk_A,
  ImgIn_Rst_A,
  ImgIn_EN_A,
  ImgIn_WEN_A,
  ImgIn_Addr_A,
  ImgIn_Din_A,
  ImgIn_Dout_A,
  ImgOut_Clk_A,
  ImgOut_Rst_A,
  ImgOut_EN_A,
  ImgOut_WEN_A,
  ImgOut_Addr_A,
  ImgOut_Din_A,
  ImgOut_Dout_A
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS AWADDR" *)
input wire [4 : 0] s_axi_CRTL_BUS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS AWVALID" *)
input wire s_axi_CRTL_BUS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS AWREADY" *)
output wire s_axi_CRTL_BUS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS WDATA" *)
input wire [31 : 0] s_axi_CRTL_BUS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS WSTRB" *)
input wire [3 : 0] s_axi_CRTL_BUS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS WVALID" *)
input wire s_axi_CRTL_BUS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS WREADY" *)
output wire s_axi_CRTL_BUS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS BRESP" *)
output wire [1 : 0] s_axi_CRTL_BUS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS BVALID" *)
output wire s_axi_CRTL_BUS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS BREADY" *)
input wire s_axi_CRTL_BUS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS ARADDR" *)
input wire [4 : 0] s_axi_CRTL_BUS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS ARVALID" *)
input wire s_axi_CRTL_BUS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS ARREADY" *)
output wire s_axi_CRTL_BUS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS RDATA" *)
output wire [31 : 0] s_axi_CRTL_BUS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS RRESP" *)
output wire [1 : 0] s_axi_CRTL_BUS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS RVALID" *)
output wire s_axi_CRTL_BUS_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CRTL_BUS RREADY" *)
input wire s_axi_CRTL_BUS_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgIn_PORTA CLK" *)
output wire ImgIn_Clk_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgIn_PORTA RST" *)
output wire ImgIn_Rst_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgIn_PORTA EN" *)
output wire ImgIn_EN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgIn_PORTA WE" *)
output wire [3 : 0] ImgIn_WEN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgIn_PORTA ADDR" *)
output wire [31 : 0] ImgIn_Addr_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgIn_PORTA DIN" *)
output wire [31 : 0] ImgIn_Din_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgIn_PORTA DOUT" *)
input wire [31 : 0] ImgIn_Dout_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgOut_PORTA CLK" *)
output wire ImgOut_Clk_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgOut_PORTA RST" *)
output wire ImgOut_Rst_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgOut_PORTA EN" *)
output wire ImgOut_EN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgOut_PORTA WE" *)
output wire [3 : 0] ImgOut_WEN_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgOut_PORTA ADDR" *)
output wire [31 : 0] ImgOut_Addr_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgOut_PORTA DIN" *)
output wire [31 : 0] ImgOut_Din_A;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ImgOut_PORTA DOUT" *)
input wire [31 : 0] ImgOut_Dout_A;

  zs_func #(
    .C_S_AXI_CRTL_BUS_ADDR_WIDTH(5),
    .C_S_AXI_CRTL_BUS_DATA_WIDTH(32)
  ) inst (
    .s_axi_CRTL_BUS_AWADDR(s_axi_CRTL_BUS_AWADDR),
    .s_axi_CRTL_BUS_AWVALID(s_axi_CRTL_BUS_AWVALID),
    .s_axi_CRTL_BUS_AWREADY(s_axi_CRTL_BUS_AWREADY),
    .s_axi_CRTL_BUS_WDATA(s_axi_CRTL_BUS_WDATA),
    .s_axi_CRTL_BUS_WSTRB(s_axi_CRTL_BUS_WSTRB),
    .s_axi_CRTL_BUS_WVALID(s_axi_CRTL_BUS_WVALID),
    .s_axi_CRTL_BUS_WREADY(s_axi_CRTL_BUS_WREADY),
    .s_axi_CRTL_BUS_BRESP(s_axi_CRTL_BUS_BRESP),
    .s_axi_CRTL_BUS_BVALID(s_axi_CRTL_BUS_BVALID),
    .s_axi_CRTL_BUS_BREADY(s_axi_CRTL_BUS_BREADY),
    .s_axi_CRTL_BUS_ARADDR(s_axi_CRTL_BUS_ARADDR),
    .s_axi_CRTL_BUS_ARVALID(s_axi_CRTL_BUS_ARVALID),
    .s_axi_CRTL_BUS_ARREADY(s_axi_CRTL_BUS_ARREADY),
    .s_axi_CRTL_BUS_RDATA(s_axi_CRTL_BUS_RDATA),
    .s_axi_CRTL_BUS_RRESP(s_axi_CRTL_BUS_RRESP),
    .s_axi_CRTL_BUS_RVALID(s_axi_CRTL_BUS_RVALID),
    .s_axi_CRTL_BUS_RREADY(s_axi_CRTL_BUS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .ImgIn_Clk_A(ImgIn_Clk_A),
    .ImgIn_Rst_A(ImgIn_Rst_A),
    .ImgIn_EN_A(ImgIn_EN_A),
    .ImgIn_WEN_A(ImgIn_WEN_A),
    .ImgIn_Addr_A(ImgIn_Addr_A),
    .ImgIn_Din_A(ImgIn_Din_A),
    .ImgIn_Dout_A(ImgIn_Dout_A),
    .ImgOut_Clk_A(ImgOut_Clk_A),
    .ImgOut_Rst_A(ImgOut_Rst_A),
    .ImgOut_EN_A(ImgOut_EN_A),
    .ImgOut_WEN_A(ImgOut_WEN_A),
    .ImgOut_Addr_A(ImgOut_Addr_A),
    .ImgOut_Din_A(ImgOut_Din_A),
    .ImgOut_Dout_A(ImgOut_Dout_A)
  );
endmodule
