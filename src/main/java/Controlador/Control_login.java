package Controlador;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class Control_login
 */
@WebServlet("/Control_login")
public class Control_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Control_login() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario,password;


		
		if (request.getParameter("Ingreso")!=null) {
			usuario=request.getParameter("Correo");
			password=request.getParameter("Contraseņa");
			if(usuario.equals("admininicial") && password.equals("admin123456")) {
				JOptionPane.showMessageDialog(null, "Bienvenido administrador");
				response.sendRedirect("usuarios.jsp?nom"+usuario);
			} else{
				JOptionPane.showMessageDialog(null, "usuario o contraseņa errados, intente de nuevo");
				response.sendRedirect("index.jsp");
			}
				
		}
		
		

		

}
}