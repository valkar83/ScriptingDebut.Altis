coordonneesAtterrissage = _this # 0;
nbEscouade = _this # 1;
coordonneesAtterrissage resize nbEscouade;
pointDuCentre = getMarkerPos "ptCentre";
pointDuMilieuArc = getMarkerPos "ptMilieuArc";
_script = [coordonneesAtterrissage, pointDuCentre, pointDuMilieuArc, nbEscouade] execVM "coordonnees\arcDeCercle.sqf";
waitUntil {scriptDone _script};