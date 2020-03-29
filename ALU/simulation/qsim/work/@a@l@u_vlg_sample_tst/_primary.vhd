library verilog;
use verilog.vl_types.all;
entity ALU_vlg_sample_tst is
    port(
        ALUSEL          : in     vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        RX0             : in     vl_logic_vector(3 downto 0);
        RX1             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALU_vlg_sample_tst;
