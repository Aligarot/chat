package db;

import entity.User;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by Dima on 09.12.2016.
 */
public class ChatProvider {
    private final String password1= "root";
    private final String user1= "root";
    private final String url= "jdbc:mysql://localhost:3306/ky";

    Connection connection;

    public ChatProvider() {
        try {

                connection=Provider.getConnection();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

//    public void addChat(long first, long second){
//        PreparedStatement preparedStatement;
//
//    }

    public long getChat(long first, long second){
        PreparedStatement preparedStatement=null;
        try {
            if(connection.isClosed()){
                connection=Provider.getConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            //System.out.println(connection.isClosed());
            preparedStatement= connection.prepareStatement("SELECT * FROM chat WHERE (first_id=? AND second_id=?)OR(first_id=? AND second_id=?)");
            preparedStatement.setLong(1,first);
            preparedStatement.setLong(2,second);
            preparedStatement.setLong(4,first);
            preparedStatement.setLong(3,second);
        } catch (SQLException e) {
            return 0;
        }

        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            long id = resultSet.getInt("idchat");
            return id;
        } catch (SQLException e) {
            return 0;
        }finally {
            try {
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                return 0;
            }
        }
    }

    public List<Long> getAll(long id){
        PreparedStatement preparedStatement=null;
        try {
            if(connection.isClosed()){
                connection=Provider.getConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            //System.out.println(connection.isClosed());
            preparedStatement= connection.prepareStatement("SELECT * FROM chat WHERE (first_id=? OR second_id=?)");
            preparedStatement.setLong(1,id);
            preparedStatement.setLong(2,id);
        } catch (SQLException e) {
            return new LinkedList<Long>();
        }

        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Long> list = new LinkedList<>();
            while (resultSet.next()){
                list.add((long)resultSet.getInt("idchat"));
            }
            return list;
        } catch (SQLException e) {
            return new LinkedList<>();
        }finally {
            try {
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                new LinkedList<>();
            }
        }
    }
    public List<Long> getAllOtherUsers(long id){
        try {
            if(connection.isClosed()){
                connection=Provider.getConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement preparedStatement=null;
        try {
            //System.out.println(connection.isClosed());
            preparedStatement= connection.prepareStatement("SELECT * FROM chat WHERE (first_id=? OR second_id=?)");
            preparedStatement.setLong(1,id);
            preparedStatement.setLong(2,id);
        } catch (SQLException e) {
            return new LinkedList<Long>();
        }

        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Long> list = new LinkedList<>();
            while (resultSet.next()){
                if(resultSet.getInt("first_id")==id){
                    list.add((long)resultSet.getInt("second_id"));
                }else {
                    list.add((long)resultSet.getInt("first_id"));
                }
            }
            return list;
        } catch (SQLException e) {
            return new LinkedList<>();
        }finally {
            try {
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                new LinkedList<>();
            }
        }
    }

    public boolean addChat(long first, long second){
        PreparedStatement preparedStatement=null;
        try {
            if(connection.isClosed()){
                connection=Provider.getConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if(getChat(first,second)!=0){
            return false;
        }else{
            try {
                try {
                    if(connection.isClosed()){
                        connection=Provider.getConnection();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                preparedStatement= connection.prepareStatement("INSERT INTO chat(first_id,second_id)"+
                        " VALUES (?, ?)");
                preparedStatement.setLong(1,first);
                preparedStatement.setLong(2,second);
                if(preparedStatement.executeUpdate()==0){
                    return false;
                }else {
                    return true;
                }
            } catch (SQLException e) {
                return false;
            }finally {
                try {
                    preparedStatement.close();
                    connection.close();
                } catch (SQLException e) {
                    return false;
                }
            }
        }
    }


}
