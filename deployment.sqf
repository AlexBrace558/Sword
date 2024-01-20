deleteVehicle baseSpawn;

deployeHeli1 engineOn true;

sleep 10;

baseHeli1 engineOn true;

sleep 7;

playMusic "EventTrack02a_F_EPA";
titleCut ["", "BLACK OUT", 5];

sleep 5;

titleText ["<t color='#ffffff' size='3.5'>10 Minutes Later...</t><br/>", "BLACK OUT", 2, true, true];
skipTime 0.1;

{_x setPos (deployPos getPos [([0, 30] call BIS_fnc_randomInt),([-12, 12] call BIS_fnc_randomInt)]);
_x playAction "PlayerCrouch";} forEach allPlayers;

sleep 5;

titleText ["", "BLACK IN", 2, true, true];

titleCut ["", "BLACK IN", 5];


baseHeli1 engineOn false;
