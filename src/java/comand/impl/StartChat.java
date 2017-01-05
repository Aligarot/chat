package comand.impl;

import chat.Chat;
import comand.Icomand;
import db.ChatProvider;
import db.UserProvider;
import entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Dima on 12.12.2016.
 */
public class StartChat implements Icomand {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse resp) {
        UserProvider userProvider = new UserProvider();
        ChatProvider chatProvider = new ChatProvider();
        request.getSession().setAttribute("newUser",userProvider.getUser(request.getParameter("newUser")));
        System.out.println(request.getParameter("newUser"));
//        chatProvider =new ChatProvider();
        //request.removeAttribute("massages");
        request.setAttribute("massages",Chat.getChatList(chatProvider.getChat(((User)request.getSession().getAttribute("user")).getId(),((User)request.getSession().getAttribute("newUser")).getId())));
        resp.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
        resp.setHeader("Pragma", "no-cache");
        resp.setDateHeader("Expires", 0);
        return "pages/privateChat.jsp";
    }
}
