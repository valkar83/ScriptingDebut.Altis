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
					"R3F_CQB_4" CreateUnit[_position, _group,
					"this execVM 'customLoadOut\customLoadOutAt4.sqf'", 0.5, "COLONEL"];
				};
			case "combattant":
				{
					"R3F_CQB_1" CreateUnit[_position, _group,
					"this execVM 'customLoadOut\customLoadOutcombattant.sqf'"];
				};
			case "medic":
				{
					"R3F_CQB_MEDIC" CreateUnit[_position, _group,
					"this execVM 'customLoadOut\customLoadOutMedic.sqf'"];
				};
			};
			
		};
	};
}
else 
{
	hint "paramètres passés ne sont pas bons";
};