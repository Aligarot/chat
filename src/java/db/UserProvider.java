package db;

import com.sun.org.apache.bcel.internal.util.ClassPath;
import entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by Dima on 06.12.2016.
 */
public class   UserProvider {
    private final String password1= "root";
    private final String user1= "root";
    private final String url= "jdbc:mysql://localhost:3306/ky";

    Connection connection;


     public UserProvider() {
        try {
            connection = Provider.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
     }

    public User getUser(long userId){
        try {
            if(connection.isClosed()){
                connection=Provider.getConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement preparedStatement=null;
        User user=new User();

        try {
            preparedStatement= connection.prepareStatement("SELECT * FROM users WHERE id =?");
            preparedStatement.setInt(1,(int)userId);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                user.setId(resultSet.getInt("id"));
                user.setPassword(resultSet.getString("password"));
                user.setLogin(resultSet.getString("login"));
                user.setEmail(resultSet.getString("email"));
                user.setInfo(resultSet.getString("info"));
                user.setSecretAnswer(resultSet.getString("secret_answer"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return user;
    }

    public User getUser(String login,String password){
        PreparedStatement preparedStatement=null;
        User user=new User();
        try {
            if(connection.isClosed()){
                connection=Provider.getConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            preparedStatement= connection.prepareStatement("SELECT * FROM users WHERE login=? and password=?");
            preparedStatement.setString(1,login);
            preparedStatement.setString(2,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                user.setId(resultSet.getInt("id"));
                user.setPassword(resultSet.getString("password"));
                user.setLogin(resultSet.getString("login"));
                user.setEmail(resultSet.getString("email"));
                user.setInfo(resultSet.getString("info"));
                user.setSecretAnswer(resultSet.getString("secret_answer"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return user;
    }

    public User getUser(String login){
        PreparedStatement preparedStatement=null;
        User user=new User();
        try {
            if(connection.isClosed()){
                connection=Provider.getConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            preparedStatement= connection.prepareStatement("SELECT * FROM users WHERE login=?");
            preparedStatement.setString(1,login);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                user.setId(resultSet.getInt("id"));
                user.setPassword(resultSet.getString("password"));
                user.setLogin(resultSet.getString("login"));
                user.setEmail(resultSet.getString("email"));
                user.setInfo(resultSet.getString("info"));
                user.setSecretAnswer(resultSet.getString("secret_answer"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return user;
    }

    public List<User> getUsers(){
        PreparedStatement preparedStatement=null;
        List<User>list = new ArrayList<User>();
        try {
            if(connection.isClosed()){
                connection=Provider.getConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            preparedStatement= connection.prepareStatement("SELECT * FROM users");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                User user=new User();
                user.setId(resultSet.getInt("id"));
                user.setPassword(resultSet.getString("password"));
                user.setLogin(resultSet.getString("login"));
                user.setEmail(resultSet.getString("email"));
                user.setInfo(resultSet.getString("info"));
                user.setSecretAnswer(resultSet.getString("secret_answer"));
                list.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return list;
    }



    public boolean saveUser(User user) throws SQLException {
        PreparedStatement preparedStatement=null;
        try {
            if(connection.isClosed()){
                connection=Provider.getConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            if(getUser(user.getLogin(),user.getPassword()).getId()==0){
                try {
                    if(connection.isClosed()){
                        connection=Provider.getConnection();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                preparedStatement= connection.prepareStatement("INSERT INTO users(email,login,password,secret_answer,info)"+
                        " VALUES (?, ?, ?, ?, ?)");
                preparedStatement.setString(1,user.getEmail());
                preparedStatement.setString(2,user.getLogin());
                preparedStatement.setString(3,user.getPassword());
                preparedStatement.setString(4,user.getSecretAnswer());
                preparedStatement.setString(5,user.getInfo());
                if(preparedStatement.executeUpdate()==0){
                    return false;
                }
                return true;
            }else {
                return false;
            }
        } catch (SQLException e) {
            return false;
        } finally {
            preparedStatement.close();
            connection.close();
        }
    }

    public boolean updateUser(User user) throws SQLException {
        PreparedStatement preparedStatement=null;
        try {
            if(connection.isClosed()){
                connection=Provider.getConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            try {
                if(connection.isClosed()){
                    connection=Provider.getConnection();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
                preparedStatement= connection.prepareStatement("UPDATE users SET email=?,login=?,password=?,secret_answer=?,info=? WHERE id = "+user.getId());
                preparedStatement.setString(1,user.getEmail());
                preparedStatement.setString(2,user.getLogin());
                preparedStatement.setString(3,user.getPassword());
                preparedStatement.setString(4,user.getSecretAnswer());
                preparedStatement.setString(5,user.getInfo());
            if(preparedStatement.executeUpdate()==0){
                return false;
            }
            return true;
        } catch (SQLException e) {

            return false;
        } finally {
            preparedStatement.close();
            connection.close();
        }
    }

    public boolean deleteUser(long userId) throws SQLException {
        PreparedStatement preparedStatement=null;
        try {
            if(connection.isClosed()){
                connection=Provider.getConnection();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM users WHERE id="+userId);
            if(preparedStatement.executeUpdate()==0){
                return false;
            }
            return true;
        } catch (SQLException e) {
            return false;
        }finally {
            preparedStatement.close();
            connection.close();
        }
    }






}
