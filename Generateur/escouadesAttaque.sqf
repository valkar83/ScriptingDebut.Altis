if (_this isEqualTypeParams [nil, 0]) then
{
	_coordonneesGeneration = [];
	escouadesAssaut = _this # 0;
	nbEscouadesAssaut = _this # 1;

	pointDeDepart = getMarkerPos "ptInitGenEscouade";
	PointDArrive = getMarkerPos "ptFinalGenEscouade";
	nbPointsParLargeur = 6;
	
	_script = [_coordonneesGeneration, pointDeDepart, PointDArrive,
	nbPointsParLargeur, nbEscouadesAssaut] execVM "coordonnees\rectangle.sqf";
	waitUntil {scriptDone _script};

	_nb = count _coordonneesGeneration;

	_chaine = format["Le nombre est : %1", _nb];
	diag_log _chaine; 

	if (_nb isEqualTo nbEscouadesAssaut) then
	{ 
		_fin = (nbEscouadesAssaut - 1);
		for "_i" from 0 to _fin do
		{
			_groupEscouade = createGroup [West, true];
			_position = (_coordonneesGeneration # _i);
			_scrip = [_groupEscouade, _position] execVM "groupes\commandoGroup.sqf";
			escouadesAssaut set [_i, _groupEscouade];
		};
	}
	else
	{
		diag_log "le compte n'est pas le même";
	};
}
else
{
	diag_log "Les paramètres passés ne respectent pas les types voulus";
}
