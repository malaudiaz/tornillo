package sys;

import java.util.*;

public class checkLogin {
 
    public checkLogin () {
        super();
    }
   
    public User userExist(String user, String pasw) throws Exception {
    	user = user.replace("'","");
	user = user.replace("--","");

        String passw = "123";

        List<User> arr = new ArrayList<>();
        arr.add(new Customer("1", "pepe"));
        arr.add(new Vendor("2", "jose"));

        for (int i = 0; i < arr.size(); i++) {
            boolean v = arr.get(i).check(user);
            if (v && passw.equals(pasw)) {
                return arr.get(i);
            }           
        }
    	
    	return null;
    }

}
