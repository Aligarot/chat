package main;

import chat.Chat;
import chat.FileChat;
import util.Chooser;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

/**
 * Created by Dima on 05.12.2016.
 */
public class Controller extends HttpServlet {
    private final String comand = "comand";
    Chooser chooser = new Chooser();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req,resp);
    }

    protected void processRequest( HttpServletRequest req, HttpServletResponse resp){


        System.out.println(req.getParameter(comand));
        String page = chooser.getComand(req.getParameter(comand)).execute(req,resp);
        try {
            req.getRequestDispatcher(page).forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }



    }

    @Override
    public void init() throws ServletException {
        FileChat fileChat = new FileChat();
        Chat.setChat(fileChat.readChat());
        super.init();
    }

    @Override
    public void destroy() {
        FileChat fileChat = new FileChat();
        fileChat.writeChat(Chat.getChat());
        super.destroy();
    }

    //    private boolean equalsStr(String str1,String str2){
//        try {
//            return str1.equals(str2);
//        }catch (NullPointerException e){
//            return true;
//        }
//    }
//
//    class Check extends Thread{
//        @Override
//        public void run() {
//            try {
//                while (){
//
//                    System.out.println("1111111111111111111111111111111111111111");
//                }
//            }catch (NullPointerException e){
//                //System.out.println("nuul");
//                this.run();
//            }
//        }
//    }

}


