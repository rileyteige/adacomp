package Computer is

	type Computer is limited private;
	type Computer_Ptr is access Computer;

	function NewComputer return Computer_Ptr;

	function GetCpuId (Comp : Computer_Ptr) return Natural;

private

	type Processor is record
		Id : Natural;
	end record;

	type Computer is record
		Cpu : Processor;
	end record;

end Computer;
