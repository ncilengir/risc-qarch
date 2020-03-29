library verilog;
use verilog.vl_types.all;
entity Control_Unit is
    port(
        ALU_OUT         : out    vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        ALU_SEL         : out    vl_logic_vector(3 downto 0);
        IR              : in     vl_logic_vector(10 downto 0);
        REG1            : in     vl_logic_vector(3 downto 0);
        REG2            : in     vl_logic_vector(3 downto 0);
        BUS_SEL         : out    vl_logic_vector(3 downto 0);
        INC             : out    vl_logic_vector(2 downto 0);
        LOAD            : out    vl_logic_vector(3 downto 0)
    );
end Control_Unit;
