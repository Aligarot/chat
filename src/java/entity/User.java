package entity;

/**
 * Created by Dima on 06.12.2016.
 */
public class User {
    private long id;
    private String password;
    private String login;
    private String email;
    private String info;
    private String secretAnswer;

    public User(long id, String password, String login, String email, String info, String secretAnswer) {
        this.id = id;
        this.password = password;
        this.login = login;
        this.email = email;
        this.info = info;
        this.secretAnswer = secretAnswer;
    }

    public User() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getSecretAnswer() {
        return secretAnswer;
    }

    public void setSecretAnswer(String secretAnswer) {
        this.secretAnswer = secretAnswer;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (id != user.id) return false;
        if (!password.equals(user.password)) return false;
        if (!login.equals(user.login)) return false;
        if (!email.equals(user.email)) return false;
        if (!info.equals(user.info)) return false;
        return secretAnswer.equals(user.secretAnswer);

    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + password.hashCode();
        result = 31 * result + login.hashCode();
        result = 31 * result + email.hashCode();
        result = 31 * result + info.hashCode();
        result = 31 * result + secretAnswer.hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", password='" + password + '\'' +
                ", login='" + login + '\'' +
                ", email='" + email + '\'' +
                ", info='" + info + '\'' +
                ", secretAnswer='" + secretAnswer + '\'' +
                '}';
    }
}
