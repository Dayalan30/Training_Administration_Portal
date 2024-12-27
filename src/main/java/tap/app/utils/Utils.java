package tap.app.utils;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class Utils {

	public static String generatePasswordSalt(int length) {
		  if (length < 1) throw new IllegalArgumentException();
		    
		  final String CHAR_LOWER="abcdefghijklmnopqrstuvwxyz";           
		  final String CHAR_UPPER=CHAR_LOWER.toUpperCase();      
		  final String NUMBER="0123456789";
		                                                  
		  final String DATA_FOR_RANDOM_STRING=CHAR_LOWER+CHAR_UPPER+NUMBER;
          SecureRandom random=new SecureRandom();
	        StringBuilder sb = new StringBuilder(length);
	        for (int i = 0; i < length; i++) {

	            int rndCharAt = random.nextInt(DATA_FOR_RANDOM_STRING.length());
	            char rndChar = DATA_FOR_RANDOM_STRING.charAt(rndCharAt);

	          
	            System.out.format("%d\t:\t%c%n", rndCharAt, rndChar);

	            sb.append(rndChar);

	        }

	        return sb.toString();

		
		
		
	}
	public static String generatePasswordHash(String str) {
		try {
          MessageDigest digest = MessageDigest.getInstance("SHA-256");
          byte[] hash = digest.digest(str.getBytes(StandardCharsets.UTF_8));

        
          StringBuilder hexString = new StringBuilder();
          for (byte b : hash) {
              String hex = Integer.toHexString(0xff & b);
              if (hex.length() == 1) {
                  hexString.append('0');
              }
              hexString.append(hex);
          }

          return hexString.substring(0, 20);

      } catch (NoSuchAlgorithmException e) {
          e.printStackTrace();
         
          return null;
      }
  }
}
