package comand.impl;

import comand.Icomand;
import db.UserProvider;
import entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 * Created by Dima on 09.12.2016.
 */
public class ChangeData implements Icomand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse resp) {
        try {
            if((Boolean) request.getSession().getAttribute("in")){
                UserProvider userProvider = new UserProvider();
                User user = (User) request.getSession().getAttribute("user");
                String newPassword = request.getParameter("newPassword");
                String newEmail = request.getParameter("newEmail");
                String newInfo = request.getParameter("newInfo");

                if (newPassword.length() > 0){
                    user.setPassword(newPassword);
                    try {
                        userProvider.updateUser(user);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if (newEmail.length() > 0){
                    user.setEmail(newEmail);
                    try {
                        userProvider.updateUser(user);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if (newInfo.length() > 0){
                    user.setInfo(newInfo);
                    try {
                        userProvider.updateUser(user);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }

                return "pages/settings.jsp";
            }else {
                return "pages/index.jsp";
            }
        }catch (Exception e){
            return "pages/index.jsp";
        }

    }
}
