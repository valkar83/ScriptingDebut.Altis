_coordonneesGenerationCougar = [];
escouadesCougar = _this # 0;
nbEscouadesAttaque = _this # 1;
nbPointsParLargeur = 4;
pointDeDepart = getMarkerPos "ptInitGenCougar";
PointDArrive = getMarkerPos "ptFInalGenCougar";
_script = [_coordonneesGenerationCougar, pointDeDepart, PointDArrive,
 nbPointsParLargeur, nbEscouadesAttaque] execVM "coordonnees\rectangle.sqf";
waitUntil {scriptDone _script};

for "_i" from 0 to (nbEscouadesAttaque - 1) do
{
	_groupCougar = createGroup [West, true];
	_script = [_groupCougar, (_coordonneesGenerationCougar # _i)] execVM "groupes\equipageCougar.sqf";
	waitUntil {scriptDone _script};
	escouadesCougar set [_i, _groupCougar];
};

 
