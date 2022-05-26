coordonneesGeneration = [];
escouadesAssaut = _this # 0;
nbEscouadesAssaut = _this # 1;
pointDeDepart = getMarkerPos "ptInitGenEscouade";
PointDArrive = getMarkerPos "ptFinalGenEscouade";
nbPointsParLargeur = 5;
_script = [coordonneesGeneration, pointDeDepart, PointDArrive,
 nbPointsParLargeur, nbEscouadesAssaut] execVM "coordonnees\rectangle.sqf";
waitUntil {scriptDone _script};

for "_i" from 0 to (nbEscouadesAssaut - 1) do
{
	_groupEscouade = createGroup [West, true];
	_scrip = [_groupEscouade, (coordonneesGeneration # _i)] execVM "groupes\commandoGroup.sqf";
	waitUntil {scriptDone _script};
	escouadesAssaut set [_i, _groupEscouade];
};
 
