
// "Exported from Arsenal by valka";

// "[!] UNIT MUST BE LOCAL [!]";
if (!local _this) exitWith {};

// "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

// "Add weapons";
_this addWeapon "R3F_Minimi_762_PARA";
_this addPrimaryWeaponItem "optic_Hamr";
_this addPrimaryWeaponItem "R3F_MINIMI_100Rnd_762x51";
_this addWeapon "R3F_HKUSP";
_this addHandgunItem "muzzle_snds_L";
_this addHandgunItem "R3F_15Rnd_9x19_HKUSP";

// "Add containers";
_this forceAddUniform "R3F_uniform_f1";
_this addVest "R3F_veste_noire";
_this addBackpack "R3F_sac_moyen_CE";

// "Add binoculars";
_this addMagazine "Laserbatteries";
_this addWeapon "Laserdesignator_03";

// "Add items to containers";
for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_this addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 3 do {_this addItemToVest "R3F_15Rnd_9x19_HKUSP";};
_this addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {_this addItemToVest "MiniGrenade";};
for "_i" from 1 to 4 do {_this addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_this addItemToVest "SmokeShellBlue";};
_this addItemToVest "R3F_MINIMI_100Rnd_762x51";
for "_i" from 1 to 6 do {_this addItemToBackpack "R3F_MINIMI_100Rnd_762x51";};
_this addHeadgear "R3F_casqueFS_noir";
_this addGoggles "R3F_cagoule_olive";

// "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
_this linkItem "ItemGPS";
_this linkItem "NVGoggles_OPFOR";

// "Set identity";
[_this,"Default","male03fre"] call BIS_fnc_setIdentity;
