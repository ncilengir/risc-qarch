library verilog;
use verilog.vl_types.all;
entity DEUARC_BUSYSTEM_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        INPREG_DATA     : in     vl_logic_vector(3 downto 0);
        M               : in     vl_logic;
        SECLR           : in     vl_logic_vector(3 downto 0);
        SEINR           : in     vl_logic_vector(3 downto 0);
        SELD            : in     vl_logic_vector(3 downto 0);
        SEMUX           : in     vl_logic_vector(2 downto 0);
        WRITE           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DEUARC_BUSYSTEM_vlg_sample_tst;
