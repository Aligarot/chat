package comand.impl;

import comand.Icomand;
import db.UserProvider;
import entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 * Created by Dima on 07.12.2016.
 */
public class RegistrSave implements Icomand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse resp) {
        try {
            if((Boolean) request.getSession().getAttribute("in")==true){
                return "pages/home.jsp";
            }
        }catch (Exception e){
            System.out.println("====================================");
        }

        User user = new User();
        UserProvider userProvider = new UserProvider();
        System.out.println(user);
        user.setLogin(request.getParameter("login"));
        System.out.println(user);
        user.setPassword(request.getParameter("password"));
        System.out.println(user);
        user.setEmail(request.getParameter("email"));
        System.out.println(user);
        user.setSecretAnswer(request.getParameter("secret_answer"));
        System.out.println(user);
        user.setInfo(request.getParameter("info"));
        System.out.println("+++++++++++++++++++++++++");
        try {
            if(userProvider.saveUser(user)==true){
                System.out.println("/////////////////////////////////");
                //userProvider=new UserProvider();
                request.getSession().setAttribute("in",true);
                request.getSession().setAttribute("user",userProvider.getUser(user.getLogin()));
                System.out.println("*****************************************************");
                return "pages/home.jsp";
            }
        } catch (SQLException e) {
            System.out.println("kkkkkkkkkkkkkkkkkkkk");
            return "pages/registr.jsp";
        }
        return "pages/registr.jsp";
    }
}
