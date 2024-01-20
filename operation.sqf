briefStart = True;

playMusic "LeadTrack04_F_EPC";
titleCut ["", "BLACK OUT", 5];

sleep 6;

openMap [true, true];
mapAnimAdd [0.1, 0.5, markerPos "zoomOut1"];
mapAnimCommit;

titleCut ["", "BLACK IN", 5];

playSound "Track01";

["Officer", "Alright let's get straight to business, the MLF have made the next move and have set up shop in the village of Arudy."] spawn BIS_fnc_showSubtitle;

sleep 2.25;

"town1" setMarkerAlpha 1;
mapAnimAdd [3, 0.1, markerPos "town1"];
["town1", 0.5, 3] spawn BIS_fnc_blinkMarker;
mapAnimCommit;

sleep 2.25;

["Officer", "This makes it the third village to fall under their control and has proven that the regular army is simply unprepared to counter their aggression."] spawn BIS_fnc_showSubtitle;

"town2" setMarkerAlpha 1;
"town3" setMarkerAlpha 1;
mapAnimAdd [1, 0.3, markerPos "zoomOut1"];
["town2", 0.5, 3] spawn BIS_fnc_blinkMarker;
["town3", 0.5, 3] spawn BIS_fnc_blinkMarker;
mapAnimCommit;

sleep 3.75;

"flag1" setMarkerAlpha 1;
"flag2" setMarkerAlpha 1;

["flag1", 0.5, 3] spawn BIS_fnc_blinkMarker;
["flag2", 0.5, 3] spawn BIS_fnc_blinkMarker;

mapAnimCommit;

sleep 3.75;

"flag1" setMarkerAlpha 0;
"flag2" setMarkerAlpha 0;

["Officer", "To make matters worse, they have begun probing operations in the nearby mountains and have begun launching probing attacks as far south as Chapoi."] spawn BIS_fnc_showSubtitle;

mapAnimAdd [1, 0.4, markerPos "zoomOut2"];

sleep 1;

"expand1" setMarkerAlpha 1;
"expand2" setMarkerAlpha 1;
"expand3" setMarkerAlpha 1;

["expand1", getMarkerPos "expand1Destination", 4.6, 1] call BIS_fnc_moveMarker;
["expand2", getMarkerPos "expand2Destination", 4.6, 1] call BIS_fnc_moveMarker;
["expand3", getMarkerPos "expand3Destination", 4.6, 1] call BIS_fnc_moveMarker;

mapAnimCommit;

sleep 4.6;

"town4" setMarkerAlpha 1;
["town4", 0.5, 3] spawn BIS_fnc_blinkMarker;
mapAnimCommit;

sleep 2;

"expand1" setMarkerAlpha 0;
"expand2" setMarkerAlpha 0;
"expand3" setMarkerAlpha 0;


["Officer", "The high command desperately needs a victory, and so the challenge has fallen to us."] spawn BIS_fnc_showSubtitle;

"town4" setMarkerAlpha 0;

sleep 0.1;

mapAnimAdd [1, 0.4, markerPos "zoomOut1"];
mapAnimCommit;

sleep 4.6;

["Officer", "Task force Spartan has been tasked with engaging and destroying the MLF presence in western Malden."] spawn BIS_fnc_showSubtitle;

sleep 5.5;

["Officer", "After a few days of reconnaissance we uncovered a vulnerability in their territory."] spawn BIS_fnc_showSubtitle;

sleep 4.25;

["Officer", "They appear to have established a hideout at a farmhouse between Arudy and La Pessagne; an attack here would undermine their presence in the area and strike a blow at their morale."] spawn BIS_fnc_showSubtitle;

mapAnimAdd [1, 0.3, markerPos "zoomOut3"];
mapAnimCommit;

sleep 2;

"farm" setMarkerAlpha 1;
["farm", 0.5, 3] spawn BIS_fnc_blinkMarker;
mapAnimCommit;


sleep 1.5;

["town1", 0.5, 3] spawn BIS_fnc_blinkMarker;
["town3", 0.5, 3] spawn BIS_fnc_blinkMarker;
mapAnimCommit;

sleep 5.75;

["Officer", "The position appears to be lightly defended so task force Spartan will be helo dropped at LZ Yankee."] spawn BIS_fnc_showSubtitle;

mapAnimAdd [2.6, 0.2, markerPos "yankee"];
mapAnimCommit;

sleep 2.7;

"yankee" setMarkerAlpha 1;
["yankee", 0.5, 3] spawn BIS_fnc_blinkMarker;
mapAnimCommit;

sleep 2.7;

["Officer", "The task force will then proceed towards the farm house, recon has warned that the enemy may have foot patrols in the area so keep your eyes peeled."] spawn BIS_fnc_showSubtitle;

["spartan", getMarkerPos "spartanMove1", 0.1, 1] call BIS_fnc_moveMarker;
mapAnimCommit;

sleep 1;
mapAnimAdd [1, 0.2, markerPos "farm"];
["spartan", getMarkerPos "spartanMove2", 3, 1] call BIS_fnc_moveMarker;
mapAnimCommit;

sleep 6.5;

["Officer", "Spartan will then engage and secure the hideout and sweep the area for any intelligence."] spawn BIS_fnc_showSubtitle;

sleep 5;

["Officer", "Any smart phones, laptops or hard drives are to be bagged and taken."] spawn BIS_fnc_showSubtitle;

sleep 4.5;

["Officer", "Once the hideout has been cleared the task force will disengage and proceed to LZ Zulu for extraction via helo."] spawn BIS_fnc_showSubtitle;

"farmDown" setMarkerAlpha 1;
"farm" setMarkerColor "ColorWhite";

mapAnimAdd [0.5, 0.08, markerPos "zoomOut4"];
mapAnimCommit;

sleep 3.5;

["spartan", getMarkerPos "spartanMove3", 1, 1] call BIS_fnc_moveMarker;
mapAnimCommit;

sleep 1;

["spartan", getMarkerPos "spartanMove4", 1, 1] call BIS_fnc_moveMarker;
mapAnimCommit;

sleep 1;

"zulu" setMarkerAlpha 1;
["zulu", 0.5, 3] spawn BIS_fnc_blinkMarker;
mapAnimCommit;

sleep 1.5;

["Officer", "Speed and aggression will be vital for this operation. I expect nothing less than the complete destruction of the MLF at your hands."] spawn BIS_fnc_showSubtitle;

mapAnimAdd [5, 0.5, markerPos "zoomOut1"];
mapAnimCommit;

["spartan", getMarkerPos "spartanReturn", 0.1, 1] call BIS_fnc_moveMarker;
mapAnimCommit;

sleep 1;

"farmDown" setMarkerAlpha 0;
"farm" setMarkerColor "ColorOpfor";
"town4" setMarkerAlpha 0;
sleep 7.5;

["Officer", "That is all, dismissed."] spawn BIS_fnc_showSubtitle;

missionBegin = True;

sleep 2;
openMap [false, false];

baseHeli1 setVehicleLock "UNLOCKED";
