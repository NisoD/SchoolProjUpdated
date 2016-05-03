package MyClasses;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletContext;

public class MyUtils
{
  
    public static Connection getSiteDBconnection(ServletContext app, String dbPath)
    {
        Connection con = null;

        String s = app.getRealPath("/");
        if(s.indexOf("build") > 0)
        {
            s = s.substring(0, s.indexOf("build"));
            s = s + "web\\"+dbPath;
        }
        else
        {
            s = s + dbPath;
        }

        try
        {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            String dbURL = "jdbc:ucanaccess://"+s; 
            con = DriverManager.getConnection(dbURL);
        }
        catch(Exception ex)
        {
            System.err.println(ex);
        }

        return con;
    }

    
}
