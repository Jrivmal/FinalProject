Java Code:
package jdbcdemo;
import java.sql.*;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
public class jdbcpackage
{
public static void main(String[] args)
{
int choice;

do		{

Scanner in = new Scanner(System.in);

try
	{

System.out.println("Enter a word:");
String word = in.next();

Class.forName("com.mysql.cj.jdbc.Driver");

String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/wordoccurrences";
String username = "root";
String password = "Jrivmal1016!";
Connection connection = DriverManager.getConnection(url, username,password);


PreparedStatement ps = connection.prepareStatement("insert into word (words) values(?)");

ps.setString(1,word);
ps.executeUpdate();

System.out.println("Words added in the database:");
Statement st = connection.createStatement();
ResultSet rs = st.executeQuery("select * from word");
while(rs.next()){
System.out.println(rs.getString(1));
				}

connection.close();
			}
catch(ClassNotFoundException |SQLException c){
System.out.println(c.getMessage());
	}
System.out.println("Do you want to enter another word?(1 for yes,0 for no)");
choice = in.nextInt();
			}
while(choice==1);

System.out.println("Word Occurrences in the database:");

Map<String,Integer> frequency = new LinkedHashMap<>();

try{
Class.forName("com.mysql.cj.jdbc.Driver");
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/wordoccurrences";
String username = "root";
String password = "Jrivmal1016!";
Connection connection = DriverManager.getConnection(url, username,password);
Statement st = connection.createStatement();
ResultSet rs = st.executeQuery("Select * from word");
while(rs.next()){

String s = rs.getString(1);

if(frequency.get(s)==null){

frequency.put(s,1);
	}
else{

frequency.put(s,frequency.get(s)+1);
}
}

connection.close();
					}
catch(ClassNotFoundException | SQLException s){
System.out.println(s.getMessage());
				}

Set<String> key = frequency.keySet();
for(String k:key){
System.out.println("Word: "+k+" Ocurrences: "+frequency.get(k));
	}
		}
		}

