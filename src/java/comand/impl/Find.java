package comand.impl;

import comand.Icomand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Dima on 07.12.2016.
 */
public class Find implements Icomand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse resp) {
        try {
            if((Boolean) request.getSession().getAttribute("in")){
                return "pages/find.jsp";
            }else return "pages/index.jsp";
        }catch (Exception e){
            return "pages/index.jsp";
        }

    }
}
