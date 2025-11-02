library verilog;
use verilog.vl_types.all;
entity RIPPER_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RIPPER_vlg_sample_tst;
