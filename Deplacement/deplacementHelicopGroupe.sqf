_groupCommando = _this select 0;
_groupHelicop = _this select 1;
_helicopCougar = vehicle leader _groupHelicop;

_wpembarqueCommando = _groupCommando addWaypoint [getPos leader _groupHelicop,0];
_wpembarqueCommando setWaypointType "GETIN";
_wpembarqueCommando waypointAttachVehicle _helicopCougar;

_wpcombattre = _groupCommando addWaypoint [getmarkerPos "detruire",0];
_wpcombattre setWaypointType "SAD";

_wpAttendreCommando = _groupHelicop addWaypoint [getPos leader _groupHelicop,0];

_wpAttendreCommando synchronizeWaypoint [_wpembarqueCommando];

_wpdechargerCommando = _groupHelicop addWaypoint [_this # 2, 0];
_wpdechargerCommando setWaypointType "TR UNLOAD";

_landCougar = "Land_HelipadEmpty_F" createVehicle (_this # 2);
_wpdechargerCommando waypointAttachVehicle _landCougar;
_wpdechargerCommando setWaypointSpeed "FULL";
_wpdechargerCommando setWaypointBehaviour "CARELESS";


_WPAtterrir = _groupHelicop addWaypoint [getPos leader _groupHelicop, 0];
_WPAtterrir setWaypointType "GETOUT";





