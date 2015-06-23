package Command is
	type Instruction is (
		Move, Add, Subtract, Print, No_Op, Halt
	);

	subtype Register_Name_Length is Integer range 1 .. 2;
	subtype Register_Name is String(Register_Name_Length);

	type Command (Op : Instruction := No_Op) is record
		case Op is
			when Print | No_Op | Halt => null;
			when Move =>
				Destination : Register_Name;
				Source : Register_Name;
			when Add | Subtract =>
				Left_Destination : Register_Name;
				Right : Register_Name;
		end case;
	end record;

	type Command_Set is array(Positive range <>) of Command;

	function Generate_Command_Set (Size : Natural) return Command_Set;
end Command;
