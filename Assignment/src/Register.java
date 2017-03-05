

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String pass1=request.getParameter("pass1");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String loc=request.getParameter("loc");
		
		
		Connection con=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
			String query="insert into users (uname,pass,pass1,fname,lname,email,phone,loc)values(?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(query);
			
			pstmt.setString(1,uname);
			pstmt.setString(2,pass);
			pstmt.setString(3,pass1);
			pstmt.setString(4,fname);
			pstmt.setString(5,lname);
			pstmt.setString(6,email);
			pstmt.setString(7,phone);
			pstmt.setString(8,loc);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
					
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("List");
		System.out.println("Record inserted succ");
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
