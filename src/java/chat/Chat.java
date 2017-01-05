package chat;

import com.sun.deploy.net.HttpRequest;
import db.ChatProvider;

import java.util.*;

/**
 * Created by Dima on 09.12.2016.
 */
public class Chat {
    private static Map<Long,List<String>> chat = new LinkedHashMap<>();
    public  static Map<Long,List<HttpRequest>> update = new HashMap<>();

    public static void addChat(long chatId){

        List<Long> id = new ArrayList<>();

        chat.put(chatId,new LinkedList<String>());

    }

    public static List<String> getChatList(long chatId){

        synchronized (chat.get(chatId)){
            return chat.get(chatId);
        }

    }

    public static void addMessage(long chatId,String message){

        synchronized (chat.get(chatId)){
            if(chat.get(chatId).size()>10){
                chat.get(chatId).remove(0);
                chat.get(chatId).add(message);
            }else{
                chat.get(chatId).add(message);
            }
        }
    }

    public static void deleteChat(long chatId){

        synchronized (chat.get(chatId)){
            chat.remove(chatId);
        }

    }

    public static Map<Long,List<String>> getUserChats(long id){
        ChatProvider chatProvider = new ChatProvider();
        List<Long>listChatId= chatProvider.getAll(id);
        chatProvider=new ChatProvider();
        List<Long>listUserId= chatProvider.getAllOtherUsers(id);
        Map<Long,List<String>> map = new HashMap<>();
        while (!listUserId.isEmpty()){
            map.put(listUserId.remove(0),chat.get(listChatId.remove(0)));
        }
        return map;
    }

    public static void setChat(Map<Long, List<String>> chat) {
        Chat.chat = chat;
    }

    public static Map<Long, List<String>> getChat() {

        return chat;
    }
}
