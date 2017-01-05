package comand.impl;

import comand.Icomand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Dima on 09.12.2016.
 */
public class Settings implements Icomand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse resp) {
        try {
            if((Boolean) request.getSession().getAttribute("in")){
                return "pages/settings.jsp";
            }
        }catch (Exception e){
            System.out.println("-------------------------------------------------");
        }
        return "pages/index.jsp";
    }
}
