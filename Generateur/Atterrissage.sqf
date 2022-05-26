coordonneesAtterrissage = _this # 0;
nbEscouade = _this # 1;
coordonneesAtterrissage resize nbEscouadesAttaque;
pointDuCentre = getMarkerPos "ptCentre";
pointDuMilieuArc = getMarkerPos "ptMilieuArc";
[coordonneesAtterrissage, pointDuCentre, pointDuMilieuArc, nbEscouadesAttaque] execVM "coordonnees\arcDeCercle.sqf";