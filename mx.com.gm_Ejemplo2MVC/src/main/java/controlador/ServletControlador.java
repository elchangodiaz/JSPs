package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import modelo.Rectangulo;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //1.Pasamos parametros
        String accion = request.getParameter("accion");
                
        //2.Creamos los JavaBeans
        Rectangulo recRequest = new Rectangulo(1,2);
        Rectangulo recSesion = new Rectangulo(3,4);
        Rectangulo recAplicacion = new Rectangulo(5,6);
        
        //3.Agregamos el JavaBean a algun alcance
        
        //revisamos la aacion proporcionada
        if("agregarVariables".equals(accion)){
            //a;cance request
            request.setAttribute("rectanguloRequest", recRequest);
            //alcance session
            HttpSession sesion = request.getSession();
            sesion.setAttribute("rectanguloSesion", recSesion);
            //alcance application
            ServletContext application = this.getServletContext();
            application.setAttribute("rectanguloAplicacion", recAplicacion);
            //agregamos un mensaje
            request.setAttribute("mensaje", "Las variables fueron agregadas");
            //4.redireccionamos al jsp de index
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        else if("listarVariables".equals(accion)){
            //4.redireccionamos al jsp que despliega las variables
            request.getRequestDispatcher("WEB-INF/alcanceVariables.jsp").forward(request, response);
        }else{
            //4.redireccionamos a pagina de inicio
            request.setAttribute("mensaje", "Accion desconocida");
            request.getRequestDispatcher("index.jsp").forward(request, response);
            
            //esta linea no agregaria info al jsp
            //no propaga los objetos response y request
            //response.sendRedirect("index.jsp")
        }
    }
}
