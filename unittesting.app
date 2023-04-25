import java.util.HashMap; 
import java.util.Map;
import java.util.Scanner; 
public class WordOccurrences {

   public static void main(String[] args) { 
       String text = ("Once upon a midnight dreary, while I pondered, weak and weary,\r\n"
       		+ "Over many a quaint and curious volume of forgotten lore\r\n"
       		+ "While I nodded, nearly napping, suddenly there came a tapping,\r\n"
       		+ "As of some one gently rapping, rapping at my chamber door.\r\n"
       		+ "Tis some visiter, I muttered, tapping at my chamber door\r\n"
       		+ "Only this and nothing more.\r\n"
       		+ "");
     				
  			         		      	
			   String[] words = text.split(" "); 
			   Map<String, Integer> counts = new HashMap<String, Integer>(); 
			   for (String word : words) { 
			       Integer count = counts.get(word); 
			       if (count == null) {  
			           counts.put(word, 1); 
			       }
			       else  {
			           counts.put(word, count + 1); 
			       }
			       }
			   
			   System.out.println("Word Occurrences:  " + counts); 
   }
}


Here is my test code:
package testing;
 
import static org.junit.Assert.*; 
import org.junit.Test; 
import java.util.HashMap; 
import java.util.Map; 
public class WordOccurrencesTest {

   @Test 
   public void testWordOccurrences() { 
       String text = ("Once upon a midnight dreary, while I pondered, weak and weary,\r\n"
          		+ "Over many a quaint and curious volume of forgotten lore\r\n"
           		+ "While I nodded, nearly napping, suddenly there came a tapping,\r\n"
           		+ "As of some one gently rapping, rapping at my chamber door.\r\n"
           		+ "Tis some visiter, I muttered, tapping at my chamber door\r\n"
           		+ "Only this and nothing more.\r\n"
           		+ "");
       		       String[] words = text.split(" "); 
       Map<String, Integer> counts = new HashMap<String, Integer>(); 
       for (String word : words) { 
           Integer count = counts.get(word); 
           if (count == null) { 
               counts.put(word, 1); 
           } 
           else { 
               counts.put(word, count + 1); 
           } 
       } 
  
   }

}
