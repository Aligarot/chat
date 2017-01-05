package util;

import comand.impl.AllChat;
import comand.Icomand;
import comand.impl.*;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Dima on 05.12.2016.
 */
public class Chooser {
    private Map<String, Icomand> chooser = new HashMap<String, Icomand>();

    public Chooser() {
        chooser.put("home",new Home());
        chooser.put("index",new Index());
        chooser.put("kyChat",new Index());
        chooser.put("registr",new Registr());
        chooser.put("registrSave",new RegistrSave());
        chooser.put("logOut",new LogOut());
        chooser.put("find",new Find());
        chooser.put("findLogin",new FindLogin());
        chooser.put("openChat", new Openchat());
        chooser.put("updateChat", new UpdateChat());
        chooser.put("settings",new Settings());
        chooser.put("changeData",new ChangeData());
        chooser.put("allChat",new AllChat());
        chooser.put("startChat", new StartChat());
    }

    public Icomand getComand(String s){
        return chooser.get(s);
    }
}
