library verilog;
use verilog.vl_types.all;
entity ControlUnit is
    port(
        ALU_SEL         : out    vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        IR              : in     vl_logic_vector(10 downto 0);
        BUS_SEL13       : out    vl_logic;
        V               : in     vl_logic;
        BUS_SEL12       : out    vl_logic;
        BUS_SEL11       : out    vl_logic;
        BUS_SEL10       : out    vl_logic;
        LOADSEL         : out    vl_logic_vector(3 downto 0)
    );
end ControlUnit;
