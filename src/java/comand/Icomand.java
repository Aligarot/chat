package comand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Dima on 05.12.2016.
 */
public interface Icomand {
    String execute(HttpServletRequest request, HttpServletResponse resp);
}
