package sys;

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

    
}
