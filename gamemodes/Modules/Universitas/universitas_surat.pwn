#include <YSI_Coding\y_hooks>

enum E_LETTER_INPUT {
    LETTER_TARGET,
    LETTER_GRADUATE[64],
    LETTER_DEGREE[48],
    LETTER_UNIV[64],
    LETTER_DATE[32],
    LETTER_GIVER[64]
};
new LetterInput[MAX_PLAYERS][E_LETTER_INPUT];

CMD:lulusuniv(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 3)
        return PermissionError(playerid);
    new targetid;
    if (sscanf(params, "u", targetid))
        return SendClientMessage(playerid, -1, "Usage: /lulusuniv [playerid]");

    if (!IsPlayerConnected(targetid))
        return SendClientMessage(playerid, -1, "Player tidak ditemukan.");

    LetterInput[playerid][LETTER_TARGET] = targetid;

    Dialog_Show(playerid, DIALOG_LETTER_GRADUATE, DIALOG_STYLE_INPUT,
        "Surat Kelulusan - Nama Lulusan",
        "Masukkan nama lulusan:",
        "Lanjut", "Batal");
    return 1;
}

Dialog:DIALOG_LETTER_GRADUATE(playerid, response, listitem, inputtext[])
{
    if (!response) return 1;
    if (isnull(inputtext)) return Dialog_Show(playerid, DIALOG_LETTER_GRADUATE, DIALOG_STYLE_INPUT,
        "Surat Kelulusan - Nama Lulusan", "Tidak boleh kosong!\nMasukkan nama lulusan:", "Lanjut", "Batal");

    format(LetterInput[playerid][LETTER_GRADUATE], 64, "%s", inputtext);

    Dialog_Show(playerid, DIALOG_LETTER_DEGREE, DIALOG_STYLE_INPUT,
        "Surat Kelulusan - Gelar",
        "Masukkan gelar lulusan:",
        "Lanjut", "Batal");
    return 1;
}

Dialog:DIALOG_LETTER_DEGREE(playerid, response, listitem, inputtext[])
{
    if (!response) return 1;
    if (isnull(inputtext)) return Dialog_Show(playerid, DIALOG_LETTER_DEGREE, DIALOG_STYLE_INPUT,
        "Surat Kelulusan - Gelar", "Tidak boleh kosong!\nMasukkan gelar:", "Lanjut", "Batal");

    format(LetterInput[playerid][LETTER_DEGREE], 48, "%s", inputtext);

    Dialog_Show(playerid, DIALOG_LETTER_UNIV, DIALOG_STYLE_INPUT,
        "Surat Kelulusan - Universitas",
        "Masukkan nama universitas:",
        "Lanjut", "Batal");
    return 1;
}

Dialog:DIALOG_LETTER_UNIV(playerid, response, listitem, inputtext[])
{
    if (!response) return 1;
    if (isnull(inputtext)) return Dialog_Show(playerid, DIALOG_LETTER_UNIV, DIALOG_STYLE_INPUT,
        "Surat Kelulusan - Universitas", "Tidak boleh kosong!\nMasukkan universitas:", "Lanjut", "Batal");

    format(LetterInput[playerid][LETTER_UNIV], 64, "%s", inputtext);

    Dialog_Show(playerid, DIALOG_LETTER_DATE, DIALOG_STYLE_INPUT,
        "Surat Kelulusan - Tanggal",
        "Masukkan tanggal kelulusan (DD/MM/YYYY):",
        "Lanjut", "Batal");
    return 1;
}

Dialog:DIALOG_LETTER_DATE(playerid, response, listitem, inputtext[])
{
    if (!response) return 1;
    if (isnull(inputtext)) return Dialog_Show(playerid, DIALOG_LETTER_DATE, DIALOG_STYLE_INPUT,
        "Surat Kelulusan - Tanggal", "Tidak boleh kosong!\nMasukkan tanggal (DD/MM/YYYY):", "Lanjut", "Batal");

    format(LetterInput[playerid][LETTER_DATE], 32, "%s", inputtext);

    Dialog_Show(playerid, DIALOG_LETTER_GIVER, DIALOG_STYLE_INPUT,
        "Surat Kelulusan - Diberikan Oleh",
        "Masukkan nama pemberi surat:",
        "Selesai", "Batal");
    return 1;
}

Dialog:DIALOG_LETTER_GIVER(playerid, response, listitem, inputtext[])
{
    if (!response) return 1;
    if (isnull(inputtext)) return Dialog_Show(playerid, DIALOG_LETTER_GIVER, DIALOG_STYLE_INPUT,
        "Surat Kelulusan - Diberikan Oleh", "Tidak boleh kosong!\nMasukkan nama pemberi surat:", "Selesai", "Batal");

    format(LetterInput[playerid][LETTER_GIVER], 64, "%s", inputtext);

    new query[512];
    mysql_format(g_SQL, query, sizeof(query),
        "INSERT INTO graduation_letters (owner_id, graduate_name, degree, university, created_at, given_by) \
         VALUES (%d, '%e', '%e', '%e', '%e', '%e')",
        AccountData[LetterInput[playerid][LETTER_TARGET]][pID],
        LetterInput[playerid][LETTER_GRADUATE],
        LetterInput[playerid][LETTER_DEGREE],
        LetterInput[playerid][LETTER_UNIV],
        LetterInput[playerid][LETTER_DATE],
        LetterInput[playerid][LETTER_GIVER]
    );
    mysql_tquery(g_SQL, query);

    SendClientMessage(LetterInput[playerid][LETTER_TARGET], -1, "Kamu baru saja menerima surat kelulusan.");
    SendClientMessage(playerid, -1, "Surat kelulusan berhasil diberikan.");
    return 1;
}

forward OnLoadShowSurat(playerid);
public OnLoadShowSurat(playerid)
{
    if (cache_num_rows() == 0)
        return SendClientMessage(playerid, -1, "Kamu belum memiliki surat kelulusan.");

    new graduate[64], degree[48], univ[64], tgl[32], giver[64];
    cache_get_value_name(0, "graduate_name", graduate, sizeof graduate);
    cache_get_value_name(0, "degree", degree, sizeof degree);
    cache_get_value_name(0, "university", univ, sizeof univ);
    cache_get_value_name(0, "created_at", tgl, sizeof tgl);
    cache_get_value_name(0, "given_by", giver, sizeof giver);

    new strname[64], strdegree[48], struniv[64], strdate[32], strgiver[64];
    format(strname, sizeof(strname), "Nama: %s", graduate);
    PlayerTextDrawSetString(playerid, UnivLulus[playerid][6], strname);
    format(strdegree, sizeof(strdegree), "Gelar: %s", degree);
    PlayerTextDrawSetString(playerid, UnivLulus[playerid][7], strdegree);
    format(struniv, sizeof(struniv), "Program Studi: %s", univ);
    PlayerTextDrawSetString(playerid, UnivLulus[playerid][8], struniv);
    format(strdate, sizeof(strdate), "Tanggal: %s", tgl);
    PlayerTextDrawSetString(playerid, UnivLulus[playerid][9], strdate);
    format(strgiver, sizeof(strgiver), "Diberikan Oleh %s", giver);
    PlayerTextDrawSetString(playerid, UnivLulus[playerid][13], strgiver);

    for(new i; i < 18; i++) PlayerTextDrawShow(playerid, UnivLulus[playerid][i]);
    Info(playerid, "Gunakan "ASTRALCITY"'/hideuniv'"WHITE" untuk menghilangkan/menutup textdraw Surat Universitas");
    return 1;
}

forward OnLoadSuratShowNearby(playerid);
public OnLoadSuratShowNearby(playerid)
{
    if (cache_num_rows() == 0)
        return SendClientMessage(playerid, -1, "Kamu belum memiliki surat kelulusan.");

    new graduate[64], degree[48], univ[64], tgl[32], giver[64];
    cache_get_value_name(0, "graduate_name", graduate, sizeof graduate);
    cache_get_value_name(0, "degree", degree, sizeof degree);
    cache_get_value_name(0, "university", univ, sizeof univ);
    cache_get_value_name(0, "created_at", tgl, sizeof tgl);
    cache_get_value_name(0, "given_by", giver, sizeof giver);

    new strname[64], strdegree[48], struniv[64], strdate[32], strgiver[64];
    format(strname, sizeof(strname), "Nama: %s", graduate);
    format(strdegree, sizeof(strdegree), "Gelar: %s", degree);
    format(struniv, sizeof(struniv), "Program Studi: %s", univ);
    format(strdate, sizeof(strdate), "Tanggal: %s", tgl);
    format(strgiver, sizeof(strgiver), "Diberikan Oleh %s", giver);

    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);

    foreach(new i : Player)
    {
        if(IsPlayerConnected(i) && IsPlayerInRangeOfPoint(i, 3.0, x, y, z))
        {
            PlayerTextDrawSetString(i, UnivLulus[i][6], strname);
            PlayerTextDrawSetString(i, UnivLulus[i][7], strdegree);
            PlayerTextDrawSetString(i, UnivLulus[i][8], struniv);
            PlayerTextDrawSetString(i, UnivLulus[i][9], strdate);
            PlayerTextDrawSetString(i, UnivLulus[i][13], strgiver);

            for(new t = 0; t < 18; t++)
                PlayerTextDrawShow(i, UnivLulus[i][t]);

            Info(i, "Gunakan "ASTRALCITY"'/hideuniv'"WHITE" untuk menutup textdraw Surat Universitas");
        }
    }
    return 1;
}


CMD:hideuniv(playerid, params[])
{
	for(new i = 0; i < 18; i ++)
	{
		PlayerTextDrawHide(playerid, UnivLulus[playerid][i]);
	}
	return 1;
}
