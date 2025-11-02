library verilog;
use verilog.vl_types.all;
entity RIPPER is
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end RIPPER;
