library verilog;
use verilog.vl_types.all;
entity DEUARC_BUSYSTEM_vlg_check_tst is
    port(
        OUTREG          : in     vl_logic_vector(3 downto 0);
        RESULT          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end DEUARC_BUSYSTEM_vlg_check_tst;
