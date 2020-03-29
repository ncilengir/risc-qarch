library verilog;
use verilog.vl_types.all;
entity DEUARC_BUSYSTEM is
    port(
        OUTREG          : out    vl_logic_vector(3 downto 0);
        SECLR           : in     vl_logic_vector(3 downto 0);
        SELD            : in     vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        SEINR           : in     vl_logic_vector(3 downto 0);
        RESULT          : out    vl_logic_vector(3 downto 0);
        WRITE           : in     vl_logic;
        M               : in     vl_logic;
        INPREG_DATA     : in     vl_logic_vector(3 downto 0);
        SEMUX           : in     vl_logic_vector(2 downto 0)
    );
end DEUARC_BUSYSTEM;
