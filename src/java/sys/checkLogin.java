package sys;

import java.io.*;

public class checkLogin {
    public static final String path = "/home/migue/Test/"; 
 
    public checkLogin () {
        super();
    }
   
    public User userExist(String user, String pasw) throws IOException {
    	user = user.replace("'","");
	user = user.replace("--","");
        
        File archivo=new File(path + user + ".usr"); 
        
        if (archivo.exists()) {
        
            String data = "";
            BufferedReader ent = new BufferedReader(new FileReader(archivo));
            data = ent.readLine();

            String[] attr = data.split(",");

            String[] u = attr[0].split(":");
            String[] p = attr[1].split(":");
            String[] r = attr[2].split(":");

            if (!(u[1].equals(user) && p[1].equals(pasw))) return null; 
            if (r[1].equals("1")) {
                return new Customer("1", user);
            }	
            if (r[1].equals("2")) {
                return new Vendor("2", user);
            }	    	
        
        }
    	return null;
    }

}
