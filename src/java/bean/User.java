
package bean;

import java.io.Serializable;

public class User implements Serializable {
    
    private static final long serialVersionUID = 1L;
    private String username;
    private String password;
    private String email;
    private int numStar;
    private int numLession;
    private String full_name;
    private String gender;

    public User() {
    }

    public User(String username, String password, String email, int numStar, int numLession, String full_name, String gender) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.numStar = numStar;
        this.numLession = numLession;
        this.full_name = full_name;
        this.gender = gender;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getNumStar() {
        return numStar;
    }

    public void setNumStar(int numStar) {
        this.numStar = numStar;
    }

    public int getNumLession() {
        return numLession;
    }

    public void setNumLession(int numLession) {
        this.numLession = numLession;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    
}