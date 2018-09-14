/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package yapilk;

import java.io.IOException;
import java.io.PrintWriter;
import javafx.scene.control.Alert;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yapilk
 */
public class HomeController extends HttpServlet {

    private String storeCsrfToken = null;
    private String homeCsrfToken = null;
    
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
        try (PrintWriter out = response.getWriter()) {
        
        out.println(homeCsrfToken);
        out.println(storeCsrfToken);
            
        
        if(homeCsrfToken != null)
        {
            if(storeCsrfToken.equals(homeCsrfToken))
            {
                out.println("Successful");
                response.sendRedirect("http://localhost:8080/SynchronizerTokenPattern/Successful.jsp");
            }
            else
            {
                out.println("Error");
                response.sendRedirect("http://localhost:8080/SynchronizerTokenPattern/Error.jsp");
            }
        }
        else
        {
            out.print("CSRF Token Empty");
            response.sendRedirect("http://localhost:8080/SynchronizerTokenPattern/Login.jsp");
        }
            
            
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
        
        homeCsrfToken = request.getParameter("csrfToken");
        
        Cookie[] cookies = request.getCookies();
        
        if(cookies != null)
        {
            for(Cookie cookie : cookies)
            {
                if(cookie.getName().equals("JSESSIONID"))
                {
                    storeCsrfToken = TokenStore.getToken(cookie.getValue());
                }
            }
        }
        
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
