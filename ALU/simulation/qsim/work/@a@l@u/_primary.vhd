library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        V               : out    vl_logic;
        RX0             : in     vl_logic_vector(3 downto 0);
        RX1             : in     vl_logic_vector(3 downto 0);
        SELRES          : out    vl_logic_vector(3 downto 0);
        ALUSEL          : in     vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic
    );
end ALU;
