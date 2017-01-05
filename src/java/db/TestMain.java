package db;

import chat.Chat;
import chat.FileChat;
import entity.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by Dima on 06.12.2016.
 */
public class TestMain {
    public static void main(String[] args) throws SQLException {
//        Provider provider = new Provider();
//        PreparedStatement preparedStatement = provider.getConnection().prepareStatement("SELECT * FROM users WHERE id = 1");
//        ResultSet resultSet = preparedStatement.executeQuery();
//        resultSet.next();
//        System.out.println( resultSet.getString("login"));
//        provider.getConnection().close();
//        preparedStatement.close();
//        User user = new User(12,"re1r","e1re","r1er","1","r1er");
//        UserProvider userProvider = new UserProvider();
////        System.out.println(userProvider.updateUser(user));
//        System.out.println(userProvider.getUser("1","1").getId());
//        ChatProvider chatProvider = new ChatProvider();
////        System.out.println(chatProvider.getAll(6));
////        chatProvider=new ChatProvider();
////        System.out.println(chatProvider.getAllOtherUsers(6));
//        Chat.addChat(1);
//        Chat.addChat(2);
//        Chat.addChat(3);
//        Chat.addChat(5);
//
//        Chat.addMessage(2,"hello1");
//        Chat.addMessage(2,"hello2");
//        Chat.addMessage(2,"hello3");
//        Chat.addMessage(2,"hello4");
//        Chat.addMessage(2,"hello5");
//        Chat.addMessage(2,"hello6");
//        Chat.addMessage(2,"hello7");
//        Chat.addMessage(2,"hello8");
//        Chat.addMessage(2,"hello9");
//        Chat.addMessage(2,"hello10");
//        Chat.addMessage(2,"hello11");
//        Chat.addMessage(2,"hello12");
//        Chat.addMessage(5,"hello13");
//
//        Set<Map.Entry<Long, List<String>>> set = Chat.getChat().entrySet();
//        for (Map.Entry<Long,List<String>> s:set) {
//            System.out.println(s.getValue().size());
//        }
////        System.out.println(Chat.getChatList(2));
////
////        FileChat fileChat = new FileChat();
////        fileChat.writeChat(Chat.getChat());
////        System.out.println(fileChat.readChat());
        System.out.println(-1.0/0.0);

    }
}
