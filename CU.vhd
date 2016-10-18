
---Miguel Angel Vidal    cod:1088326138---
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CU is
    Port ( Op : in  STD_LOGIC_VECTOR (1 downto 0);
           Op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           CU_out : out  STD_LOGIC_VECTOR (5 downto 0));
end CU;

architecture Behavioral of CU is

begin

	process (Op, Op3)	
	begin
	
		if(op = "10") then
			case (Op3) is
				when("000000") =>
					CU_out <= "000000"; -- Add
				when("000100") =>
					CU_out <= "000001"; -- Sub
				when("000001") =>
					CU_out <= "000010"; -- And
				when("000101") =>
					CU_out <= "000011"; -- Nand
				when("000010") =>
					CU_out <= "000100"; -- Or	
				when("000110") =>
					CU_out <= "000101"; -- Nor
				when("000011") =>
					CU_out <= "000110"; -- Xor
				when("000111") =>
					CU_out <= "000111"; -- Xnor				
				when others =>
					CU_out <= "111111";
			end case;
		end if;
	end process;

end Behavioral;