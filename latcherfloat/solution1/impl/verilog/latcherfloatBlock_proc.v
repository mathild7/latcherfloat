// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module latcherfloatBlock_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        latch_V,
        in_V_TDATA,
        in_V_TVALID,
        in_V_TREADY,
        out_V_TDATA,
        out_V_TVALID,
        out_V_TREADY
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [0:0] latch_V;
input  [31:0] in_V_TDATA;
input   in_V_TVALID;
output   in_V_TREADY;
output  [31:0] out_V_TDATA;
output   out_V_TVALID;
input   out_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_V_TREADY;
reg out_V_TVALID;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [1:0] state;
reg   [31:0] tmp;
reg    in_V_TDATA_blk_n;
wire   [1:0] state_load_load_fu_73_p1;
wire   [0:0] tmp_1_1_nbreadreq_fu_59_p3;
reg    out_V_TDATA_blk_n;
wire   [0:0] tmp_1_nbwritereq_fu_44_p3;
reg    ap_predicate_op16_read_state1;
reg    ap_block_state1;
reg    ap_sig_ioackin_out_V_TREADY;
reg    ap_predicate_op10_write_state1;
reg    ap_block_state1_io;
wire   [0:0] latch_V_read_read_fu_38_p2;
reg    ap_reg_ioackin_out_V_TREADY;
reg   [0:0] ap_NS_fsm;
reg    ap_condition_97;
reg    ap_condition_65;
reg    ap_condition_66;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 state = 2'd0;
#0 tmp = 32'd0;
#0 ap_reg_ioackin_out_V_TREADY = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | ((1'b0 == in_V_TVALID) & (1'b1 == ap_predicate_op16_read_state1)) | (ap_done_reg == 1'b1) | (1'b1 == ap_block_state1_io)))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_out_V_TREADY <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (1'b1 == ap_predicate_op10_write_state1))) begin
            if ((ap_condition_65 == 1'b1)) begin
                ap_reg_ioackin_out_V_TREADY <= 1'b0;
            end else if ((ap_condition_97 == 1'b1)) begin
                ap_reg_ioackin_out_V_TREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if ((ap_condition_66 == 1'b1)) begin
        if (((2'd0 == state_load_load_fu_73_p1) & (1'd1 == latch_V_read_read_fu_38_p2))) begin
            state <= 2'd1;
        end else if ((1'b1 == ap_predicate_op16_read_state1)) begin
            state <= 2'd2;
        end else if ((1'b1 == ap_predicate_op10_write_state1)) begin
            state <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b1 == ap_predicate_op16_read_state1) & ~((1'b0 == ap_start) | ((1'b0 == in_V_TVALID) & (1'b1 == ap_predicate_op16_read_state1)) | (ap_done_reg == 1'b1) | (1'b1 == ap_block_state1_io)))) begin
        tmp <= in_V_TDATA;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | ((1'b0 == in_V_TVALID) & (1'b1 == ap_predicate_op16_read_state1)) | (ap_done_reg == 1'b1) | (1'b1 == ap_block_state1_io)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | ((1'b0 == in_V_TVALID) & (1'b1 == ap_predicate_op16_read_state1)) | (ap_done_reg == 1'b1) | (1'b1 == ap_block_state1_io)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_out_V_TREADY)) begin
        ap_sig_ioackin_out_V_TREADY = out_V_TREADY;
    end else begin
        ap_sig_ioackin_out_V_TREADY = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (state == 2'd1) & (tmp_1_1_nbreadreq_fu_59_p3 == 1'd1))) begin
        in_V_TDATA_blk_n = in_V_TVALID;
    end else begin
        in_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b1 == ap_predicate_op16_read_state1) & ~((1'b0 == ap_start) | ((1'b0 == in_V_TVALID) & (1'b1 == ap_predicate_op16_read_state1)) | (ap_done_reg == 1'b1) | (1'b1 == ap_block_state1_io)))) begin
        in_V_TREADY = 1'b1;
    end else begin
        in_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (state == 2'd2) & (1'd1 == tmp_1_nbwritereq_fu_44_p3))) begin
        out_V_TDATA_blk_n = out_V_TREADY;
    end else begin
        out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b1 == ap_predicate_op10_write_state1) & ~((1'b0 == ap_start) | ((1'b0 == in_V_TVALID) & (1'b1 == ap_predicate_op16_read_state1)) | (ap_done_reg == 1'b1)) & (1'b0 == ap_reg_ioackin_out_V_TREADY))) begin
        out_V_TVALID = 1'b1;
    end else begin
        out_V_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | ((1'b0 == in_V_TVALID) & (1'b1 == ap_predicate_op16_read_state1)) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_io = ((1'b0 == ap_sig_ioackin_out_V_TREADY) & (1'b1 == ap_predicate_op10_write_state1));
end

always @ (*) begin
    ap_condition_65 = ~((1'b0 == ap_start) | ((1'b0 == in_V_TVALID) & (1'b1 == ap_predicate_op16_read_state1)) | (ap_done_reg == 1'b1) | (1'b1 == ap_block_state1_io));
end

always @ (*) begin
    ap_condition_66 = ((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | ((1'b0 == in_V_TVALID) & (1'b1 == ap_predicate_op16_read_state1)) | (ap_done_reg == 1'b1) | (1'b1 == ap_block_state1_io)));
end

always @ (*) begin
    ap_condition_97 = (~((1'b0 == ap_start) | ((1'b0 == in_V_TVALID) & (1'b1 == ap_predicate_op16_read_state1)) | (ap_done_reg == 1'b1)) & (1'b1 == out_V_TREADY));
end

always @ (*) begin
    ap_predicate_op10_write_state1 = ((state == 2'd2) & (1'd1 == tmp_1_nbwritereq_fu_44_p3));
end

always @ (*) begin
    ap_predicate_op16_read_state1 = ((state == 2'd1) & (tmp_1_1_nbreadreq_fu_59_p3 == 1'd1));
end

assign latch_V_read_read_fu_38_p2 = latch_V;

assign out_V_TDATA = tmp;

assign state_load_load_fu_73_p1 = state;

assign tmp_1_1_nbreadreq_fu_59_p3 = in_V_TVALID;

assign tmp_1_nbwritereq_fu_44_p3 = out_V_TREADY;

endmodule //latcherfloatBlock_proc
