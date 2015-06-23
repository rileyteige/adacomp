package body Command is

	function Generate_Command_Set (Size : Natural) return Command_Set is
		Commands : Command_Set(1..Size) := (others => (Op => Halt));
	begin
		return Commands;
	end Generate_Command_Set;

end Command;
