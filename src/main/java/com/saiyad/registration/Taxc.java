package com.saiyad.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class Tax
 */
@WebServlet("/taxc")
public class Taxc extends HttpServlet {
    private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Taxc() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String income = request.getParameter("income");
        String category = request.getParameter("category");
        String expense = request.getParameter("expense");
        String dateStr = request.getParameter("date");
        java.sql.Date date = java.sql.Date.valueOf(dateStr);;
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tax", "root", "94925");
            PreparedStatement pst = con.prepareStatement("insert into tax1(name,income,category,expense,date) values(?,?,?,?,?)");
            pst.setString(1, name);
            pst.setString(2, income);
            pst.setString(3, category);
            pst.setString(4, expense);
            pst.setDate(5, date);
            out.println("<tr>");
         // After setting other attributes, set income and expense
            request.setAttribute("name", name);
            request.setAttribute("income", income);
            request.setAttribute("category", category);
            request.setAttribute("expense", expense);
            request.setAttribute("date", date);

            int rowCount = pst.executeUpdate();
            RequestDispatcher dispatcher;
            dispatcher = request.getRequestDispatcher("index.jsp");
            if (rowCount > 0) {
                // If the operation is successful, forward to a success page
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }

            dispatcher.forward(request, response);

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
