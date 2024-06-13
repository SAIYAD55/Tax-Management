package com.saiyad.registration;

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
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("search");

        out.println("<html>");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tax", "root", "94925");

            // Use prepared statement to avoid SQL injection
            String qu = "SELECT * FROM tax1 WHERE name=?";
            try (PreparedStatement pst = conn.prepareStatement(qu)) {
                pst.setString(1, name);

                // Debugging: Print the SQL query
                System.out.println("SQL Query: " + pst.toString());

                ResultSet rs = pst.executeQuery();

                // Debugging: Print the result set
                if (!rs.next()) {
                    out.println("No data found for name: " + name);
                } else {
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<link rel=css/styles.css>");
                    out.println("</head>");
                    out.println("<body>");

                    out.println("<center><h style=' font-size:50px; background-color:#00d4ff; padding: 10px;'>WELCOME "
                            + name + "!</h1></center>");
                    out.println("<center><h3>Here are your tax details.</center>");
                    out.println(
                            "<center><table style=\"border-collapse: collapse; width: 80%; margin-top: 20px;\" border=\"2\"");
                    out.println("<tr>");
                    out.print("<th><b>NAME </b> </th>");
                    out.print("<th><b>INCOME </b>  </th>");
                    out.print("<th><b>CATEGORY </b>  </th>");
                    out.print("<th><b>EXPENSE </b>  </th>");
                    out.print("<th><b>DATE</b>   </th>");
                    out.print("<th><b>CGST</b> </th>");
                    out.print("<th><b>SGST</b> </th>");
                    out.print("<th><b>IGST</b> </th>");
                    out.print("<th><b>TAX  </b> </th>");
                    out.println("</tr></br>");

                    double totalIncome = 0;
                    double totalExpense = 0;
                    double totalTax = 0;
                    double totalcgst = 0;
                    double totalsgst = 0;
                    double totaligst = 0;

                    do {
                        out.println("<tr>");
                        out.print("<td>"+rs.getString("name") + "</td>");
                        out.print("<td>"+rs.getString("income") + "</td>");
                        out.print("<td>"+rs.getString("category") + "</td>");
                        out.print("<td>"+rs.getString("expense") + "</td>");
                        out.print("<td>"+rs.getString("date") + "</td>");

                        double recordIncome=Double.parseDouble(rs.getString("income").trim());
                        double recordExpense=Double.parseDouble(rs.getString("expense").trim());
                        double recordTax=(recordIncome - recordExpense) * 0.12;
                        double cgst=(recordIncome-recordExpense)*0.06;
                        double sgst=(recordIncome-recordExpense)*0.04;
                        double igst=(recordIncome-recordExpense)*0.02;

                        totalIncome+=recordIncome;
                        totalExpense+=recordExpense;
                        totalTax+=recordTax;
                        totalcgst+=cgst;
                        totalsgst+=sgst;
                        totaligst+=igst;

                        out.print("<td>"+cgst+"</td>");
                        out.print("<td>"+sgst+"</td>");
                        out.print("<td>"+igst+"</td>");
                        out.print("<td>"+recordTax+"</td>");
                        out.println("</tr>");
                    } while (rs.next());

                    out.println("<tr>");
                    out.print("<td><b></b></td>");
                    out.print("<td><b>Total Income</b></td>");
                    out.print("<td><b></b></td>");
                    out.print("<td><b>Total Expense</b></td>");
                    out.print("<td><b></b></td>");
                    out.print("<td><b>Total CGST</b></td>");
                    out.print("<td><b>Total SGST</b></td>");
                    out.print("<td><b>Total IGST</b></td>");
                    out.print("<td><b>Total Tax</b></td>");
                    out.println("</tr>");

                    out.println("<tr>");
                    out.print("<td></td>");
                    out.print("<td>"+totalIncome +"</td>");
                    out.print("<td></td>");
                    out.print("<td>"+totalExpense+"</td>");
                    out.print("<td></td>");
                    out.print("<td>"+totalcgst+"</td>");
                    out.print("<td>"+totalsgst+"</td>");
                    out.print("<td>"+totaligst+"</td>");
                    out.print("<td>"+totalTax+"</td>");
                    out.println("</tr>");

                    out.println("</table></center>");
                    out.println("<body>");
                    out.println("<head>");
                    out.println("<html>");
                    ;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();

            // Debugging: Print the exception message
            out.println("Exception: " + e.getMessage());
        }

        out.println("</html>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Call the doGet method to handle the POST request
        doGet(request, response);
    }
}
