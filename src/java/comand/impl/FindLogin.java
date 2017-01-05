package comand.impl;

import comand.Icomand;
import db.UserProvider;
import entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Dima on 08.12.2016.
 */
public class FindLogin implements Icomand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse resp) {
        try {
            if((Boolean) request.getSession().getAttribute("in")){
                try {
                    if(((User)request.getSession().getAttribute("newUser")).getId()>=0){
                        request.getSession().removeAttribute("newUser");
                    }
                }catch (Exception e){
                    System.out.println("*****************");
                }
                User user;
                UserProvider userProvider = new UserProvider();
                user=  userProvider.getUser(request.getParameter("newLogin"));
                if(user.getId()==0){
                    return "pages/find.jsp";
                }
                user.setPassword("--------------");
                user.setSecretAnswer("------------");
                request.getSession().setAttribute("newUser",user);
                return "pages/user.jsp";
            }else return "pages/index.jsp";
        }catch (Exception e){
            return "pages/index.jsp";
        }
    }
}
