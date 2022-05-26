_groupCommando = _this select 0;
_groupHelicop = _this select 1;
_helicopCougar = vehicle leader _groupHelicop;

_wpembarqueCommando = _groupCommando addWaypoint [getPos leader _groupHelicop,0];
_wpembarqueCommando waypointAttachVehicle _helicopCougar;
_wpembarqueCommando setWaypointType "GETIN";

_wpcombattre = _groupCommando addWaypoint [getmarkerPos "detruire",0];
_wpcombattre setWaypointType "SAD";

_wpAttendreCommando = _groupHelicop addWaypoint [_this select 2, 0];

_wpdechargerCommando = _groupHelicop addWaypoint [_this select 2, 0];
_wpdechargerCommando setWaypointType "TR UNLOAD";
_landCougar = "Land_HelipadEmpty_F" createVehicle (_this select 2);
_wpdechargerCommando setWaypointSpeed "FULL";
_wpdechargerCommando setWaypointBehaviour "CARELESS";

_wpdechargerCommando = _groupHelicop addWaypoint [getPos leader _groupHelicop, 0];
_wpdechargerCommando setWaypointType "GETOUT";

[_groupHelicop, 2] waypointAttachVehicle _landCougar;

[_groupCommando, 1] synchronizeWaypoint [[_groupHelicop, 1]];


