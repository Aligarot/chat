package comand.impl;

import comand.Icomand;
import db.UserProvider;
import sun.misc.UCDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Created by Dima on 05.12.2016.
 */
public class Home implements Icomand {
    public String execute(HttpServletRequest request, HttpServletResponse resp) {
        try {
            if((Boolean) request.getSession().getAttribute("in")){
                return "pages/home.jsp";
            }
        }catch (Exception e){
            System.out.println("-------------------------------------------------");
        }
        System.out.println("fdfdfdfdfdfgkusdvbkvdkbakvbkcbevkjbej");
        UserProvider userProvider = new UserProvider();
        String login=request.getParameter("login");
        String password=request.getParameter("password");
        if(userProvider.getUser(login,password).getId()!=0){
            Map<Long,List> chat = new HashMap();
            //userProvider = new UserProvider();
            request.getSession().setAttribute("in",true);
            request.getSession().setAttribute("user",userProvider.getUser(login,password));
            resp.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
            resp.setHeader("Pragma", "no-cache");
            resp.setDateHeader("Expires", 0);
            return "pages/home.jsp";
        }
        return "pages/index.jsp";
    }
}
