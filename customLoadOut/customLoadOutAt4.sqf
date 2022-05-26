
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
_this addWeapon "AMF_614_long_FS3_BLK";
_this addPrimaryWeaponItem "R3F_POINTEUR_SURB";
_this addPrimaryWeaponItem "optic_Hamr";
_this addPrimaryWeaponItem "30Rnd_556x45_Stanag";
_this addWeapon "R3F_AT4CS";
_this addSecondaryWeaponItem "R3F_AT4CS_mag";
_this addWeapon "R3F_HKUSP";
_this addHandgunItem "muzzle_snds_L";
_this addHandgunItem "R3F_15Rnd_9x19_HKUSP";

// "Add containers";
_this forceAddUniform "R3F_uniform_urr";
_this addVest "R3F_veste_noire";
_this addBackpack "R3F_sac_petit_noir";

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
for "_i" from 1 to 3 do {_this addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {_this addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {_this addItemToBackpack "R3F_AT4CS_mag";};
for "_i" from 1 to 2 do {_this addItemToBackpack "30Rnd_556x45_Stanag_Tracer_Red";};
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
