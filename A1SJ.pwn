/**********-------------------------------------------
����:Cherish ���Ͻ�ʱ��ɶ����޸� 
�����޸�ǰ��һ��������� ��֪��һ�� лл
�������ᷢ��һЩԴ���һЩ�ű�
������ ��һЩ��Ȥ�Ľű� лл���֧�� ϲ���Ļ�
���ҵ��star?лл��İ���ˡ�
����:Yu7ioi@Foxmail.com
*/
#include <a_samp>
#define FILTERSCRIPT

new Text:Time, Text:Date;

forward settime(playerid);

public OnFilterScriptInit()
{
	

    SetTimer("settime",1000,true);

	Date = TextDrawCreate(547.000000,11.000000,"--");

	TextDrawFont(Date,3);
	TextDrawLetterSize(Date,0.399999,1.900000);
    TextDrawColor(Date,0xffCC00FF);
    //TextDrawColor(Date,0xffFF00FF);
    //TextDrawColor(Date,0x00FF00FF);
    TextDrawSetOutline(Date, 1);
    TextDrawSetProportional(Date, 1);
	//TextDrawSetPreviewVehColorԤ����ɫ
	Time = TextDrawCreate(547.000000,28.000000,"--");

	TextDrawFont(Time,3);
	TextDrawLetterSize(Time,0.399999,1.900000);
	TextDrawColor(Time,0x99CCFFFF);
    TextDrawSetOutline(Time, 1);
	TextDrawSetProportional(Time, 1);

	SetTimer("settime",1000,true);
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	//SendClientMessage(playerid, 0xF97804FF, "���������������Ӱ������ʱ�ӹ��+����");
	TextDrawShowForPlayer(playerid, Time), TextDrawShowForPlayer(playerid, Date);


	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	TextDrawHideForPlayer(playerid, Time), TextDrawHideForPlayer(playerid, Date);
	return 1;
}

public settime(playerid)
{
	new string[256],day,month,year,seconds,minutes,hours;
	getdate(day, month, year), gettime(hours, minutes, seconds);
	format(string, sizeof(string), "%d/%s%d/%s%d", day, ((month < 10) ? ("0") : ("")), month, (year < 10) ? ("0") : (""), year);
	//TextDrawColor(Date,day,0xff0000FF);
	//TextDrawColor(Date,month,0xff4500FF);
	//TextDrawColor(Date,year,0xffFF00FF);
	TextDrawSetString(Date,string);
	format(string, sizeof string, "%s%d:%s%d:%s%d", (hours < 10) ? ("0") : (""), hours, (minutes < 10) ? ("0") : (""), minutes, (seconds < 10) ? ("0") : (""), seconds);
	TextDrawSetString(Time, string);
}
//(hours < 10) ? ("0") : (""), hours, (minutes < 10) ? ("0") : (""), minutes, (seconds < 10) ? ("0") : (""), seconds)
