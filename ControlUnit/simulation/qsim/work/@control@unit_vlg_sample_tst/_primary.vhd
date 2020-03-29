library verilog;
use verilog.vl_types.all;
entity ControlUnit_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        IR              : in     vl_logic_vector(10 downto 0);
        V               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ControlUnit_vlg_sample_tst;
