package sys;

import java.util.ArrayList;
import java.util.List;

public class Register {
    private String username = "";
    private String password = "";
    private String role = "";

    public Register() { }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
    public String valor() {
        return this.username + " -> " + this.role;
    }

    public List<User> register() {
        List<User> arr = new ArrayList<User>();
        
        if (this.role.equals("1")) {
            arr.add(new Customer("1", this.username));        
        } else {
            arr.add(new Vendor("2", this.username));
        }
        return arr;
    }
}
