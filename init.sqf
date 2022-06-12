nbInitUnitsEastMoitie = 0;
declencheOperation = false;

nbEscouadesAttaque = 12;
escouadesCougar = [];
_script = [escouadesCougar, nbEscouadesAttaque]  execVM "Generateur\cougar.sqf";
waitUntil {scriptDone _script};

// REMPLIR coordonneesAtterrissage 
coordonneesAtterrissage = [];
_script = [coordonneesAtterrissage, nbEscouadesAttaque]  execVM "Generateur\Atterrissage.sqf";
waitUntil {scriptDone _script};

// GENERATION des escouades
escouadesAttaque = [];
_script = [escouadesAttaque, nbEscouadesAttaque]  execVM "Generateur\escouadesAttaque.sqf";
waitUntil {scriptDone _script};

// [coordonneesAtterrissage, nbPointsAtterrissageAdjacents]
groupTigre = createGroup [West, true];
_script = groupTigre execVM "groupes\helicopTigre.sqf";
private _future = time + 3;
waitUntil { time >= _future }; 

for "_i" from 0 to (nbEscouadesAttaque - 1) do
{
	_groupAttaque = escouadesAttaque # _i;
	_groupHelicop = escouadesCougar # _i;
	_coordonneAtte = coordonneesAtterrissage # _i;

[ _groupAttaque, _groupHelicop, _coordonneAtte] execVM "Deplacement\deplacementHelicopGroupe.sqf";
};
groupTigre execVM "Deplacement\deplacementTigre.sqf";
