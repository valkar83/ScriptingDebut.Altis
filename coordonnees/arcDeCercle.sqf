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

	ptArcCercle set [0, round(ptArcCercle # 0)];
	ptArcCercle set [1, round(ptArcCercle # 1)];

	degreRef = 0;
	// pour déterminer le degreRef, 
	// on isole le rayon d'une de 2 équations paramétriques d'un cercle
	_distanceX = (ptArcCercle # 0 - ptCentreCercle # 0);
	_degreRef = round(acos(_distanceX/rayon));	
	_chaine = format["distance : %1, rayon : %2 , degreRef : %3", _distanceX, rayon, _degreRef];
	diag_log _chaine; 
	
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