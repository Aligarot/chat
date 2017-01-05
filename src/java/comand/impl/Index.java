package comand.impl;

import comand.Icomand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Dima on 05.12.2016.
 */
public class Index implements Icomand{
    public String execute(HttpServletRequest request, HttpServletResponse resp) {
        try {
            if((Boolean) request.getSession().getAttribute("in")==true){
                return "pages/home.jsp";
            }
        }catch (Exception e){
            System.out.println("====================================");
        }
        resp.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
        resp.setHeader("Pragma", "no-cache");
        resp.setDateHeader("Expires", 0);
        return "pages/index.jsp";
    }
}
