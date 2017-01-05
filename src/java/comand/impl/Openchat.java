package comand.impl;

import chat.Chat;
import comand.Icomand;
import db.ChatProvider;
import db.UserProvider;
import entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Created by Dima on 09.12.2016.
 */
public class Openchat implements Icomand {
    @Override
    public String execute(final HttpServletRequest request, HttpServletResponse resp) {
        try {
            if((Boolean) request.getSession().getAttribute("in")==true){
                System.out.println("1111111111111111111111111111111111");
                ChatProvider chatProvider = new ChatProvider();
                if(chatProvider.getChat(((User)request.getSession().getAttribute("user")).getId(),((User)request.getSession().getAttribute("newUser")).getId())==0){
//                    Check check = new Check();
//                    check.start()
//                    chatProvider = new ChatProvider();
                    chatProvider.addChat(((User)request.getSession().getAttribute("user")).getId(),((User)request.getSession().getAttribute("newUser")).getId());
//                    chatProvider = new ChatProvider();

                    Chat.addChat(chatProvider.getChat(((User)request.getSession().getAttribute("user")).getId(),((User)request.getSession().getAttribute("newUser")).getId()));
//                    chatProvider = new ChatProvider();
                    request.setAttribute("massages",Chat.getChatList(chatProvider.getChat(((User)request.getSession().getAttribute("newUser")).getId(),((User)request.getSession().getAttribute("user")).getId())));
                    resp.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
                    resp.setHeader("Pragma", "no-cache");
                    resp.setDateHeader("Expires", 0);
                    return "pages/privateChat.jsp";
                }else {
                    System.out.println("333333333333333333333333333");
//                    chatProvider =new ChatProvider();
                    request.removeAttribute("massages");
                    request.setAttribute("massages",Chat.getChatList(chatProvider.getChat(((User)request.getSession().getAttribute("user")).getId(),((User)request.getSession().getAttribute("newUser")).getId())));
                    resp.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
                    resp.setHeader("Pragma", "no-cache");
                    resp.setDateHeader("Expires", 0);
                    return "pages/privateChat.jsp";
                }
            }
        }catch (Exception e){
            System.out.println("-------------------------------------------------");
        }
        return "pages/index.jsp";
    }




}
