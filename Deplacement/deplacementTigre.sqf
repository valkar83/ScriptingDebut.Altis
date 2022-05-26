_groupTigre = _this;
_wpAttaquerTigre =  _groupTigre addWaypoint [getmarkerPos "tigrePos1", 0];
_wpAttaquerTigre setWaypointType "MOVE";

_wpAttaquerTigre =  _groupTigre addWaypoint [getmarkerPos "tigrePos2", 0];
_wpAttaquerTigre setWaypointType "MOVE";

_wpAttaquerTigre =  _groupTigre addWaypoint [getmarkerPos "tigrePos3", 0];
_wpAttaquerTigre setWaypointType "MOVE";

_wpAttaquerTigre =  _groupTigre addWaypoint [getmarkerPos "tigrePos1", 0];
_wpAttaquerTigre setWaypointType "CYCLE";

_wpAttaquerTigre =  _groupTigre addWaypoint [getmarkerPos "detruire", 0];
_wpAttaquerTigre setWaypointType "SAD";

triggerTigre setTriggerType "SWITCH";
triggerTigre setTriggerStatements ["Cougar in thisList", "hint 'ok'", "hint 'pas bon ! '"];
triggerTigre synchronizeWaypoint [[_groupTigre,4]];
