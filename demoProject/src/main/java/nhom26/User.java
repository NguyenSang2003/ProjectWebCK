package nhom26;

import java.util.Date;

public class User {
    int id;
    String email;
    String username;
    String pasword;
    boolean isVerifyEmail;
    boolean isActive;
    boolean isAdmin;

    Date createdAt;

    public User(){
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPasword() {
        return pasword;
    }

    public void setPasword(String pasword) {
        this.pasword = pasword;
    }

    public boolean isVerifyEmail() {
        return isVerifyEmail;
    }

    public void setVerifyEmail(boolean verifyEmail) {
        isVerifyEmail = verifyEmail;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "nhom26.User{" + "email='" + email + '\'' + ", username='" + username + '\'' + ", pasword='" + pasword + '\'' + ", isVerifyEmail=" + isVerifyEmail + ", isActive=" + isActive + ", isAdmin=" + isAdmin + ", createdAt=" + createdAt + '}';
    }
}
