package sys;

import java.io.*;

public class Login {
    private String username = "";
    private String password = "";

    public Login() { }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String valor() {
        return this.username + "-" + this.password;
    }
       
    public User authenticate() throws Exception {
    	checkLogin login = new checkLogin ();
    	return login.userExist(username, password); 
    }

}
