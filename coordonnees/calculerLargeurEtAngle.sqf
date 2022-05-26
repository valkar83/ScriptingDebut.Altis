if (_this isEqualTypeParams [0, 0, nil, nil]) then
{
	_angle = _this # 0;
	_largeur = _this # 1;
	_ptDebut = _this # 2;
	_ptFin = _this # 3;
	//pour calculer angle Theta 
	_adjacent = sqrt((_ptFin # 0 - _ptDebut # 0)^2);
	_largeur = sqrt((_ptFin # 0 - _ptDebut # 0)^2 + (_ptFin # 1 - _ptDebut # 1)^2);
	_this set [1, _largeur];
	_this set [0, acos(_adjacent/_largeur)];
}
else
{
	hint 'les parametres passés dans l''appel calculerLargeurEt... ne sont pas bons'; 
};
