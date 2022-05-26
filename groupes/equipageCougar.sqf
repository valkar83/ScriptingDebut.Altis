if (_this isEqualTypeParams[grpNull, nil]) then
{
	_group = _this # 0;
	_positionDeGeneration = _this # 1;
	_cougarHelicop = "ffaa_famet_cougar" createVehicle _positionDeGeneration;
	_group addVehicle _cougarHelicop;

	"B_FR_Pilote_helico_01" createUnit[ _positionDeGeneration, _group , "this moveInDriver _cougarHelicop; this setVehicleVarName 'pilote';"];
	"B_FR_Pilote_helico_01" createUnit[ _positionDeGeneration, _group , "this moveInGunner _cougarHelicop;  this setVehicleVarName 'tireur';"];
	_cougarHelicop = assignedVehicle(leader _group);
}
else
{
	hint 'les paramètres passés dans equipageCougar sont faux';
}