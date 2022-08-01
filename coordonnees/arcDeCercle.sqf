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

	ptCentreCercle set [0, round(ptCentreCercle # 0)];
	ptCentreCercle set [1, round(ptCentreCercle # 1)];

	// pour déterminer le degreRef, 
	// on isole le rayon d'une des 2 équations paramétriques d'un cercle
	_distanceX = (ptArcCercle # 0 - ptCentreCercle # 0);
	_degreX = round(acos(_distanceX/Rayon)); //cos et sinus ne sont définis que pour des valeurs positives	
	
	if (_degreX < 0) then 
	{
		_degreX = 360 + _degreX;
	};
	_cosX = cos(_degreX);

	_distanceY = (ptArcCercle # 1 - ptCentreCercle # 1);
	_degreY = round(asin(_distanceY/Rayon));
	if (_degreY < 0) then 
	{
		_degreY = 360 + _degreY;
	};
	_siny = sin(_degreY);

	_degreAAjouter = (180 - _degreX) * 2;
	_degreXAutrePossibilite = _degreAAjouter + _degreX;

	_degreYAutrePossibilite = 0;
	if (_degreY < 180) then 
	{
		_degreAAjouter = (90 - _degreY) * 2;
		_degreYAutrePossibilite = _degreAAjouter + _degreY;
	}
	else 
	{
		_degreAAjouter = (270 - _degreY) * 2;
		_degreYAutrePossibilite = _degreAAjouter + _degreY;
	};

	_DegreIdentifie = 0;
	_pasAssigne = True;
	if (_degreX == _degreY) then 
	{
		_pasAssigne = False;
     	_DegreIdentifie = _degreX;
	};
	if (_degreX == _degreYAutrePossibilite) then
	{
		_pasAssigne = False;
     	_DegreIdentifie = _degreX;
	};
	if (_degreXAutrePossibilite == _degreY) then
	{
		_pasAssigne = False;
     	_DegreIdentifie = _degreXAutrePossibilite;
	};
	if (_degreXAutrePossibilite == _degreYAutrePossibilite) then
	{
		_pasAssigne = False;
     	_DegreIdentifie = _degreXAutrePossibilite;
	};
    
	if (_pasAssigne) then
	{
		diag_log "rien ne correspond";
	};

	LDegreePositif = _DegreIdentifie;
	LDegreeNegatif = _DegreIdentifie;

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