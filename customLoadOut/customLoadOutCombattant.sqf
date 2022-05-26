
comment "Exported from Arsenal by valka";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "R3F_Minimi_556_PARA";
this addPrimaryWeaponItem "AMF_xps3_magnifier_side";
this addPrimaryWeaponItem "R3F_MINIMI_200Rnd_556x45";
this addWeapon "R3F_HKUSP";
this addHandgunItem "muzzle_snds_L";
this addHandgunItem "R3F_15Rnd_9x19_HKUSP";

comment "Add containers";
this forceAddUniform "R3F_uniform_f1";
this addVest "R3F_veste_noire";
this addBackpack "R3F_sac_petit_noir";

comment "Add binoculars";
this addMagazine "Laserbatteries";
this addWeapon "Laserdesignator_03";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {this addItemToUniform "Chemlight_blue";};
for "_i" from 1 to 3 do {this addItemToVest "R3F_15Rnd_9x19_HKUSP";};
this addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {this addItemToVest "MiniGrenade";};
for "_i" from 1 to 4 do {this addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
this addItemToVest "R3F_MINIMI_200Rnd_556x45";
for "_i" from 1 to 2 do {this addItemToBackpack "FirstAidKit";};
for "_i" from 1 to 3 do {this addItemToBackpack "R3F_MINIMI_200Rnd_556x45";};
this addItemToBackpack "B_IR_Grenade";
for "_i" from 1 to 3 do {this addItemToBackpack "SmokeShellRed";};
this addHeadgear "R3F_casqueFS_noir";
this addGoggles "R3F_cagoule_olive";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
this linkItem "NVGoggles_OPFOR";

comment "Set identity";
[this,"WhiteHead_09","male07eng"] call BIS_fnc_setIdentity;
