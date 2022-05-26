_groupTigre = _this;
_position = position player;
_tigre = createVehicle ["AMF_TIGRE_01", _position, [], 0, "FLY"];
_tigre setVehicleVarName "Tigre";
_groupTigre addVehicle _tigre;
"B_FR_Pilote_helico_01" createUnit[ _position, _groupTigre ,
                                                   "this moveInDriver _tigre;
                                                    this setvehicleVarName 'piloteCougar'"];
"B_FR_Pilote_helico_01" createUnit[ _position, _groupTigre , "this moveInGunner _tigre"];
_tigre = assignedVehicle(leader _groupTigre);