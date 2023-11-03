package sys;

public class Register {
    private String firstName = "";
    private String lastName = "";
    private String phone = "";
    private String email = "";
    private String password = "";
    private String role = "";

    public Register() { }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
    public String valor() {
        return this.firstName + "-" + this.lastName;
    }
    
}
