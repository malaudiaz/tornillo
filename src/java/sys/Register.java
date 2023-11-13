package sys;

import java.io.*;

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
    
    public String valor() throws IOException {
        return this.getDataSave();
    }
    
    public String getDataSave() {
  	return "username:"+ this.username +",password:"+ this.password +",role:"+ this.role;
    }  
    
    
    public boolean save() {
        boolean res = false;    
        
         File archivo=new File(checkLogin.path + this.username + ".usr"); 
         
        if (!archivo.exists()) {
        
            try (PrintWriter sal = new PrintWriter(new FileWriter(archivo))) {
                sal.print(this.getDataSave());
                res = true;        
            } catch (IOException ex) {
                System.err.println(ex.getMessage());
            }
            
        }
        return res;
    }
    
}
