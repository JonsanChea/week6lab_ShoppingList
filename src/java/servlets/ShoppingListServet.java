/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jonat
 */
public class ShoppingListServet extends HttpServlet {
    ArrayList<String> cart = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        
        if(session.getAttribute("username") != null){
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
            
        }else{
             getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }
        
        
        if(action.equals("logout")){
            session.invalidate();
            
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
          
        }
        
        
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        String action = request.getParameter("action");
        String username = request.getParameter("username");
        String item = request.getParameter("item");
        String[] userItems = request.getParameterValues("userItems");
        
        switch(action.toLowerCase()){
            
            case "register":
                session.setAttribute("username", username);
                break;
                
            case "add":
                cart.add(item);
                break;
                
            case "delete":
                
                
        }
     
        getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
    }
}
