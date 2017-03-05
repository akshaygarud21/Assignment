

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/List")
public class List extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public List() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		Connection con=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
			String query="Select * from users order by id";
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			
			
			
			request.setAttribute("List",rs);
			
			RequestDispatcher rd=request.getRequestDispatcher("list.jsp");
			
			rd.forward(request,response);
		
			rs.close();
			stmt.close();
			con.close();
		
		} catch (Exception e) 
		
		{
		
		}
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
