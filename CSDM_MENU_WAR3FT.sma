/* Plugin generated by andrey */

#include < amxmodx >
#include < amxmisc >
#include < cstrike >
#include < fun >

#define PLUGIN "CSDM MENU"
#define VERSION "1.0"
#define AUTHOR "andrey"

//^x01[^x03CSDM^x01]^x03	- prefix

public plugin_init() {
register_plugin(PLUGIN, VERSION, AUTHOR)
register_clcmd("say /menu","show_menus")
}

public client_putinserver(id)
{
set_task(15.0,"Announcer")	
}

public Announcer(id)
{
client_print(id,print_chat,"^x01[^x03CSDM^x01]^x03 Чтобы открыть меню, пропиши ^x04/menu")	
}



public show_menus(id)
{
            {
	new a_Menu = menu_create("\r.::\y[CSDM MENU]\r::.^n\dMADE ANDREY", "menu_rendering")
	menu_additem(a_Menu, "\yОбнулить счет", "1", 0);
	menu_additem(a_Menu, "\yМеню \rОружий [\yCSDM\r]", "2", 0);
	menu_additem(a_Menu, "\yМеню \r[\yWAR3FT\r]", "3", 0);

	menu_additem(a_Menu, "\yОружейная \rАдмина", "4", 0);

	menu_additem(a_Menu, "\yОружейная \rВипа", "5", 0);


	menu_additem(a_Menu, "\yОружейная \rПремиума", "6", 0);
	
	
	
	menu_setprop(a_Menu, MPROP_BACKNAME, "Назад")
	menu_setprop(a_Menu, MPROP_NEXTNAME, "Далее")
	menu_setprop(a_Menu, MPROP_EXITNAME, "Выход")
 
	menu_display(id, a_Menu, 0)
            }
}

public menu_rendering( id, menu, item )
{
    if( item == MENU_EXIT )
    {
        menu_destroy( menu );
        return PLUGIN_HANDLED;
    }
    new data[6], iName[64];
    new access, callback;
     
    menu_item_getinfo( menu, item, access, data,5, iName, 63, callback );
    new key = str_to_num( data );
    switch( key )
    {
        case 1:
        {
cs_set_user_deaths(id,0)
set_user_frags(id,0)
cs_set_user_deaths(id,0)
set_user_frags(id,0)
client_print(id,print_chat,"^x01[^x03CSDM^x01]^x03 Ваш счет успешно обнулён.")	//x01,x03,x04
}
}
	return PLUGIN_HANDLED
}
