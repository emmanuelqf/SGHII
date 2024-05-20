package org.example.prueba;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/servlet")
public class HelloServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
       //Leer los paramentros del formulario
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");

        PrintWriter out = response.getWriter();
        out.print("<html>");
        out.print("<body>");
        out.print("El parametro usuario es:" + usuario);
        out.print("<br/>");
        out.print("El parametro password es:" + password);
        out.print("</body>");
        out.print("</html>");
        out.close();
    }

    public void destroy() {
    }
}