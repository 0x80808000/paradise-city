#include "../pawno/include/a_samp.inc"

main()
{
	print("Serveris uzsikrove");
}

public OnPlayerConnect(playerid)
{
	SendClientMessage(playerid, -1, "Sekmingai prisijungei!");
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp(cmdtext, "/car", true)) {
		new Float:pos[3];

		GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
		CreateVehicle(560, pos[0], pos[1], pos[2], 360.0, -1, -1, -1);
		return 1;
	}

	return 1;
}
