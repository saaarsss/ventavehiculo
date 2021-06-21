
package Controlador;

import ModeloDAO.DatosPersonalesDAO;
import ModeloDAO.RolDAO;
import ModeloDAO.UsuarioDAO;
import ModeloVO.DatosPersonalesVO;
import ModeloVO.UsuarioVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "UsuarioControlador", urlPatterns = {"/Usuario"})
public class UsuarioControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        //1. Regojer los datos
        String usuId = request.getParameter("textId");
        String usuLogin = request.getParameter("textUsuario");
        String usuPassword = request.getParameter("textClave");
        int opcion = Integer.parseInt(request.getParameter("opcion"));

        //2. Quién tiene los datos en el sistema = VO
        UsuarioVO usuVO = new UsuarioVO(usuId, usuLogin, usuPassword);
        //3. Quién hace las operacion en el sistema = DAO
        UsuarioDAO usuDAO = new UsuarioDAO(usuVO);


        switch (opcion) {
            case 1: //Agregar Registro
                if (usuDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El usuario se registró correctamente");
                } else {
                    request.setAttribute("mensajeError", "El usuario  NO se registró correctamente");

                }
                request.getRequestDispatcher("registrarUsuario.jsp").forward(request, response);
                break;
            case 2: //Actualizar Registro

                if (usuDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "El usuario se actualizó correctamente");
                } else {
                    request.setAttribute("mensajeError", "El usuario  NO se actualizó correctamente");

                }
                request.getRequestDispatcher("actualizarUsuario.jsp").forward(request, response);
                break;

            case 3: //Iniciar Sesión
                
                String idUsuario="";

                if (usuDAO.iniciarSesion(usuLogin, usuPassword)) {

                    HttpSession miSesion = request.getSession(true);
                    RolDAO rolDAO = new RolDAO();
                    ArrayList<UsuarioVO> listaRoles = rolDAO.roles(usuLogin);

                    usuVO = new UsuarioVO(usuId, usuLogin, usuPassword);
                    miSesion.setAttribute("datos", usuVO);

                    for (int i = 0; i < listaRoles.size(); i++) {
                        usuVO = listaRoles.get(i);
                        idUsuario = usuVO.getUsuId();
                        //lo llena con el id

                    }
                    miSesion.setAttribute("roles", listaRoles);

                    //llamar metodoVO
                    //consultar los que hay iniciado sesion
                    DatosPersonalesVO datVO = new DatosPersonalesVO();
                    DatosPersonalesDAO datDAO = new DatosPersonalesDAO();
                    datVO = datDAO.datosPersonales(idUsuario);
                    miSesion.setAttribute("datosPersonales", datVO);

                    if (listaRoles.size() > 1) {
                        request.getRequestDispatcher("menu.jsp").forward(request, response);
                    } else if (usuVO.getRolTipo().equals("Vendedor")) {
                        request.getRequestDispatcher("menu_Vendedor.jsp").forward(request, response);
                    } else {
                        request.getRequestDispatcher("menu_Comprador.jsp").forward(request, response);
                    }

                } else {
                    request.setAttribute("mensajeError", "Datos de inicio de sesion incorrectos");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                break;

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
