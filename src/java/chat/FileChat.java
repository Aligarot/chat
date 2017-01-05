package chat;

import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Dima on 11.12.2016.
 */
public class FileChat {

    public void writeChat(Map<Long,List<String>> map){
        try (ObjectOutputStream outputStream = new ObjectOutputStream(new FileOutputStream("chat"))){
            outputStream.writeObject(map);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public Map<Long,List<String>> readChat(){
        try (ObjectInputStream inputStream = new ObjectInputStream(new FileInputStream("chat"))){
            Map<Long,List<String>> map;
            map=(Map<Long, List<String>>) inputStream.readObject();
            return map;
        } catch (IOException e) {
            e.printStackTrace();
            return new HashMap<>();
        } catch (ClassNotFoundException e) {
            return new HashMap<>();
        }
    }

}
