library verilog;
use verilog.vl_types.all;
entity Control_Unit_vlg_check_tst is
    port(
        ALU_OUT         : in     vl_logic_vector(3 downto 0);
        ALU_SEL         : in     vl_logic_vector(3 downto 0);
        BUS_SEL         : in     vl_logic_vector(3 downto 0);
        INC             : in     vl_logic_vector(2 downto 0);
        LOAD            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Control_Unit_vlg_check_tst;
