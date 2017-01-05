package comand.impl;

import chat.Chat;
import comand.Icomand;
import db.ChatProvider;
import entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Dima on 09.12.2016.
 */
public class UpdateChat implements Icomand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse resp) {
        try {
            if((Boolean) request.getSession().getAttribute("in")){
                resp.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
                resp.setHeader("Pragma", "no-cache");
                resp.setDateHeader("Expires", 0);
                ChatProvider chatProvider = new ChatProvider();
                if(request.getParameter("message").length()<1){
                    request.setAttribute("massages",Chat.getChatList(chatProvider.getChat(((User)request.getSession().getAttribute("user")).getId(),((User)request.getSession().getAttribute("newUser")).getId())));
                    System.out.println("111111111111111");
                    return "pages/privateChat.jsp";
                }
                String message= request.getParameter("message").trim();
                if(message.length()<1){
                    request.setAttribute("massages",Chat.getChatList(chatProvider.getChat(((User)request.getSession().getAttribute("user")).getId(),((User)request.getSession().getAttribute("newUser")).getId())));
                    System.out.println("111111111111111");
                    return "pages/privateChat.jsp";
                }
                System.out.println(request.getParameter("message"));
                Chat.addMessage( chatProvider.getChat(((User)request.getSession().getAttribute("user")).getId(),((User)request.getSession().getAttribute("newUser")).getId()) ,((User) request.getSession().getAttribute("user")).getLogin()+": "+message);
//                chatProvider=new ChatProvider();
                request.setAttribute("massages",Chat.getChatList(chatProvider.getChat(((User)request.getSession().getAttribute("user")).getId(),((User)request.getSession().getAttribute("newUser")).getId())));
                //System.out.println(request.getAttribute("massages"));
                return "pages/privateChat.jsp";
            }
        }catch (Exception e){
            System.out.println("-------------------------------------------------");
        }
       return "pages/index.jsp";
    }
}
