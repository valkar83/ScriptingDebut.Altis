if (_this isEqualTypeParams[grpNull, nil]) then
{
	private _tableau = ["at4", "combattant", "medic"];
	_group = _this # 0;
	_position = _this # 1;
	for "_j" from 0 to 2 do
	{
		_type = _tableau select _j;
		for "_i" from 1 to 2 do
		{
			switch (_type) do
			{
			case "at4" :
				{
					"OFrP_Soldier_2019_AC_AT4CS_CE" CreateUnit[_position, _group];
				};
			case "combattant":
				{
					"OFrP_Soldier_2019_MachineGunner01_CE" CreateUnit[_position, _group];
				};
			case "medic":
				{
					"OFrP_Soldier_2019_Medic_CE" CreateUnit[_position, _group];
				};
			};			
		};
		"OFrP_Soldier_2019_Radio_CE" CreateUnit[_position, _group];
		"OFrP_Soldier_2019_SL_CE" CreateUnit[_position, _group]; 
	};
}
else 
{
	hint "paramètres passés ne sont pas bons";
};