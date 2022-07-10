if (_this isEqualTypeParams[nil, nil, nil, 0]) then
{
	tableauDeCoordonnees = _this # 0;
	ptCentreCercle = _this # 1;
	ptArcCercle= _this # 2;
	_nbEscouade = _this # 3;

	Rayon = sqrt(
				((ptArcCercle # 1 - ptCentreCercle # 1)^2) 
			+   ((ptArcCercle # 0 - ptCentreCercle # 0)^2)
				);

	Rayon = round(Rayon);

	ptArcCercle set [0, round(ptArcCercle # 0)];
	ptArcCercle set [1, round(ptArcCercle # 1)];

	// pour déterminer le degreRef, 
	// on isole le rayon d'une de 2 équations paramétriques d'un cercle
	_distanceX = (ptArcCercle # 0 - ptCentreCercle # 0);
	_distanceY = (ptArcCercle # 1 - ptCentreCercle # 1);

	_cosx = cos(_distanceX/rayon);
	_degreRefX = round(acos(_cosx)); //cos et sinus ne sont définis que pour des valeurs positives	
	
	_siny = sin(_distanceY/rayon);
	_degreRefY = round(acos(_siny));

	_degrePossibleMin = 0;
	_degrePossibleMax = 0;

	if (_cosx <= 0 ) then 
	{
		if (_siny <= 0 ) then 
		{	
			_degrePossibleMin = 0;
			_degrePossibleMax = 90;
		};
	};

	if (_cosx < 0 ) then 
	{
		if (_siny >= 0 ) then 
		{
			_degrePossibleMin = 91;
			_degrePossibleMax = 180;
		};
	};
	if (_cosx < 0 ) then
	{ 
		if (_siny < 0 ) then
		{
			_degrePossibleMin = 181;
			_degrePossibleMax = 270;
		};
	};
	if (_cosx >= 0 ) then 
	{
		if (_siny < 0 ) then
		{
			_degrePossibleMin = 271;
			_degrePossibleMax = 359;
		};		
	};
    _pasAssigne = True;
	_degreRef=0;
	if (_degreRefX >= _degrePossibleMin) then 
	{
		if (_degreRefX <= _degrePossibleMax) then
		{
			_degreRef = _degreRefX;
			_pasAssigne = False;
		}; 
	};

	if (_degreRefY >= _degrePossibleMin) then
	{
		if (_degreRefY <= _degrePossibleMax) then
		{
			_degreRef = _degreRefY;
			_pasAssigne = False;
		};
	};
	
	if (_pasAssigne) then
	{
		diag_log "rien ne correspond";
	};

	LDegreePositif = _degreRef;
	LDegreeNegatif = _degreRef;

	for "_i" from 0 to ((_nbEscouade/2)-1) do 
	{
		LDegreePositif = LDegreePositif + 1;
		LDegreeNegatif = LDegreeNegatif - 1;

		LCoordXPostif  = (ptCentreCercle # 0) + Rayon * cos(LDegreePositif);
		LCoordYPositif = (ptCentreCercle # 1) + Rayon * sin(LDegreePositif);

		LCoordXNegatif = (ptCentreCercle # 0) + Rayon * cos(LDegreeNegatif);
		LCoordYNegatif = (ptCentreCercle # 1) + Rayon * sin(LDegreeNegatif);

		tableauDeCoordonnees set [_i*2,   [LCoordXPostif, LCoordYPositif]];
		tableauDeCoordonnees set [_i*2+1, [LCoordXNegatif, LCoordYNegatif]];
	};
}
else
{
	hint "arc de cercle est appelé avec des mauvais paramètres";
};