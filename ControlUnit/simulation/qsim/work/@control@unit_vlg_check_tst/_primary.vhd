library verilog;
use verilog.vl_types.all;
entity ControlUnit_vlg_check_tst is
    port(
        ALU_SEL         : in     vl_logic_vector(3 downto 0);
        BUS_SEL10       : in     vl_logic;
        BUS_SEL11       : in     vl_logic;
        BUS_SEL12       : in     vl_logic;
        BUS_SEL13       : in     vl_logic;
        LOADSEL         : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end ControlUnit_vlg_check_tst;
