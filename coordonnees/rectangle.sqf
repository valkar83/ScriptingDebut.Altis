if (_this isEqualTypeParams [nil, nil, nil, 0, 0]) then
{
	_tabDeCoordonnees = _this # 0;
	_PtDepart = _this # 1;
	_PtFin = _this # 2;
	nbPointsParLargeur = _this # 3;
	nbEscouades = _this  # 4;

	_angleTheta = 0;
	_largeur = 0;
	_tableauInfos = [_angleTheta, _largeur, _PtDepart, _PtFin];
	
    _script = _tableauInfos execVM "coordonnees\calculerLargeurEtAngle.sqf";
	waitUntil {scriptDone _script};
	_angleTheta = _tableauInfos # 0;
	_largeur = _tableauInfos # 1;
	tailleSegment = (_largeur / (nbPointsParLargeur - 1));
	nbLignes = nbEscouades / nbPointsParLargeur;
	tableauPos = _PtDepart;
	LDepartInitialX = (tableauPos # 0);
	LDepartInitialY = (tableauPos # 1);
	for "_i" from 1 to nbLignes do
	{
		for "_j" from 0 to (nbPointsParLargeur - 1) do
		{
			tableauPos set [0, ((tableauPos # 0) + (tailleSegment * cos(_angleTheta)))];
			tableauPos set [1, ((tableauPos # 1) + (tailleSegment * sin(_angleTheta)))];
			_tabDeCoordonnees set [count _tabDeCoordonnees, +tableauPos];
		};
		tableauPos set [0, LDepartInitialX + (_largeur * _i * sin(_angleTheta))];
		tableauPos set [1, LDepartInitialY + (_largeur * _i * cos(_angleTheta))];
	};
}
else
{
	hint "les paramètres passés dans l'appel rectangle.sqf ne sont pas bons !";
}; 