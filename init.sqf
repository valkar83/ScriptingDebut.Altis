nbInitUnitsEastMoitie = 0;
declencheOperation = false;

nbEscouadesAttaque = 12;
escouadesCougar = [];
_script = [escouadesCougar, nbEscouadesAttaque]  execVM "Generateur\cougar.sqf";
waitUntil {scriptDone _script};

// // REMPLIR coordonneesAtterrissage 
// coordonneesAtterrissage = [];
// [coordonneesAtterrissage, nbEscouadesAttaque]  execVM "Generateur\Atterrissage.sqf";

// // GENERATION des escouades
// escouadesAttaque = [];
// [escouadesAttaque, nbEscouadesAttaque]  execVM "Generateur\escouadesAttaque.sqf";

// [coordonneesAtterrissage, nbPointsAtterrissageAdjacents]
groupTigre = createGroup [West, true];
groupTigre execVM "groupes\helicopTigre.sqf";
// for "_i" from 0 to (nbEscouadesAttaque - 1) do
// {
// [escouadesAttaque # _i, escouadesCougar # _i, coordonneesAtterrissage # _i] execVM "Deplacement\deplacementHelicopGroupe.sqf";
// };
groupTigre execVM "Deplacement\deplacementTigre.sqf";
