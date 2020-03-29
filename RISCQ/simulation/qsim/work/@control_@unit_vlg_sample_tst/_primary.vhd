library verilog;
use verilog.vl_types.all;
entity Control_Unit_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        IR              : in     vl_logic_vector(10 downto 0);
        REG1            : in     vl_logic_vector(3 downto 0);
        REG2            : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Control_Unit_vlg_sample_tst;
