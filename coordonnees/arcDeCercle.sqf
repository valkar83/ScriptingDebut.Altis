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

	LCoordTestX = 0;
	LCoordTestY = 0;
	rayonRef = 0;
	for "_i" from 0 to 359 step 1/10 do
	{
		LCoordTestX = round(Rayon * cos(_i));
		LCoordTestY = round(Rayon * sin(_i));
		if ((LCoordTestX == ptArcCercle # 0) && (LCoordTestY == ptArcCercle # 1)) then 
		{
			rayonRef = _i;
			break;
		}
	};

	LDegreePositif = rayonRef;
	LDegreeNegatif = rayonRef;

	for "_i" from 0 to ((_nbEscouade/2)-1) do 
	{
		LDegreePositif = LDegreePositif + 1;
		LDegreeNegatif = LDegreeNegatif - 1;

		LCoordXPostif = Rayon * cos(LDegreePositif);
		LCoordYPositif = Rayon * sin(LDegreePositif);

		LCoordXNegatif = Rayon * cos(LDegreeNegatif);
		LCoordYNegatif = Rayon * sin(LDegreeNegatif);

		tableauDeCoordonnees set [_i*2,   [LCoordXPostif, LCoordYPositif]];
		tableauDeCoordonnees set [_i*2+1, [LCoordXNegatif, LCoordYNegatif]];
	};
}
else
{
	hint "arc de cercle est appelé avec des mauvais paramètres";
};