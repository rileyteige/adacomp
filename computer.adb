package body Computer is

	function NewComputer return Computer_Ptr is
		Comp : Computer_Ptr := new Computer;
	begin
		Comp.Cpu := (Id => 0);
		return Comp;
	end NewComputer;

	function GetCpuId(Comp : Computer_Ptr) return Natural is
	begin
		return Comp.Cpu.Id;
	end GetCpuId;

end Computer;
