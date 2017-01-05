package comand.impl;

import chat.Chat;
import comand.Icomand;
import db.UserProvider;
import entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 * Created by Dima on 11.12.2016.
 */
public class AllChat implements Icomand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse resp) {
        try {
            if((Boolean) request.getSession().getAttribute("in")){
                Set<Map.Entry<Long, List<String>>> set = Chat.getUserChats(((User)request.getSession().getAttribute("user")).getId()).entrySet();
                Map<String, List<String>> map = new LinkedHashMap<>();
                for (Map.Entry<Long,List<String>> s:set) {
                    UserProvider userProvider = new UserProvider();
                    map.put(userProvider.getUser(s.getKey()).getLogin(),s.getValue());
                }
                Set<Map.Entry<String, List<String>>> set1 =map.entrySet();
                request.setAttribute("chats",set1);
                return "pages/allChat.jsp";
            }
        }catch (Exception e){
            System.out.println("-------------------------------------------------");
        }
        return "pages/index.jsp";
    }
}
