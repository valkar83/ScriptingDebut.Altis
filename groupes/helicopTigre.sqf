_groupTigre = _this;
_position = position player;
_tigre = createVehicle ["AMF_TIGRE_01", _position, [], 0, "FLY"];
_tigre setVehicleVarName "Tigre";
_groupTigre addVehicle _tigre;
"R3F_APSO_PILOT_HELI_BLUFOR" createUnit[ _position, _groupTigre ,
                                                   "this moveInDriver _tigre;
                                                    this setvehicleVarName 'piloteCougar'"];
"R3F_APSO_PILOT_HELI_BLUFOR" createUnit[ _position, _groupTigre , "this moveInGunner _tigre"];
_tigre = assignedVehicle(leader _groupTigre);