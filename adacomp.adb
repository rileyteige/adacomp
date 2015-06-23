with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Integer_Text_IO;       use Ada.Integer_Text_IO;
with Ada.IO_Exceptions;

with Command;                   use Command;

procedure AdaComp is
    function Read_Int return Natural is
    begin
        return Integer'Value(Get_Line);
        exception when others => return 0;
    end Read_Int;

    CommandCount : Natural := 0;
begin
    while CommandCount <= 0 loop
        Put("How many commands? ");
        CommandCount := Read_Int;
        if CommandCount = 0 then
            Put_Line("Invalid count. Try again.");
        end if;
    end loop;

    declare
        Commands : Command_Set := Generate_Command_Set(CommandCount);
    begin
        Put_Line(Positive'Image(Commands'Length));
    end;

end AdaComp;
