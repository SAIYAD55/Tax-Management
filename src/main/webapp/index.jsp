
<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>TAX management</title>
<!-- Favicon-->
<link rel="icon" href="images/titleimg.jpg" type="image/x-icon">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>

<body>
    <!--===== HEADER =====-->
    <header class="l-header">
        <nav class="nav bd-grid">
            <div>
                <h2>TAX MANAGEMENT</h2>
            </div>

            <div class="nav__menu" id="nav-menu">
                <ul class="nav__list">
                    <li class="nav__item"><a href="#" class="nav__link active">Home</a></li>
                    <li class="nav__item"><a href="#about" class="nav__link">About</a></li>
                    <li class="nav__item"><a href="#contact" class="nav__link">contact</a></li>
                    <li class="nav__item session nav__link " ><i class="zmdi zmdi-account material-icons-name"></i><%=session.getAttribute("name") %></li>
                    <li class="nav__item logout"><a href="logout" class="nav__link">Logout</a></li>
                </ul>
            </div>
        </nav>
    </header>

        <!--===== Introduction =====-->
        <section class="introduction" id="about">
            <h2 class="section-title">Understand TAX management</h2>

            <div class="projectcontainer bd-grid">
                <a href="taxplan.jsp" class="introduction">
                    <div>
                        <img src="images/taxplanning.jpg" alt="int+roduction-image">
                    </div>

                    <div>
                        <h3>TAX PLANNING</h3>
                    </div>
                </a>

                <a href="taxplantaxmanage.jsp" class="introduction">
                    <div>
                        <img src="images/taxmanagement.jpg" alt="introduction-image">
                    </div>

                    <div>
                        <h3>TAX PLANNING VS TAX MANAGEMENT</h3>
                    </div>
                </a>
                
                <a href="taxmanage.jsp" class="introduction">
                    <div>
                        <img src="images/taxmanage.jpg" alt="introduction-image">
                    </div>

                    <div>
                        <h3>TAX MANAGEMENT</h3>
                    </div>
                </a>
            </div>
            
<div class="bd-grid">
<br>
<h1>ENTER TAX DETAILS</h1>
    <form method="post" action="taxc">
        <div class="label text-input ">
            <label class="label" for="name">Name:</label>
            <input class="text-input " type="text" name="name" id="name" placeholder="Your Name" />
        </div>
        
         <div >
            <label class="label" for="income">Income:</label>
            <input class="text-input " type="text" name="income" id="income" placeholder="Income" />
        </div>
        
         <div class="label select-input">
            <label class="label" for="category">Category:</label>
            <select class="select-input"name="category" id="category">
                <option value="Income Tax">Income Tax</option>
                <option value="Sales Tax">Sales Tax</option>
                <option value="Corporate Tax">Corporate Tax</option>
                <option value="Dividend Tax">Dividend Tax</option>
                <option value="Property Tax">Property Tax</option>
                <option value="Excise Tax">Excise Tax</option>
                <option value="Property">Capital Gains Tax</option>
                <option value="Other">Other</option>
            </select>
        </div>
        
        <div class="label text-input ">
            <label class="label" for="expense">Expense:</label>
            <input class="text-input" type="text" name="expense" id="expense" placeholder="Expense" />
        </div>

        <div >
            <label class="label" for="date">Date:</label>
            <input class="text-input " type="date" name="date" id="date" placeholder="Date" />
        </div>

       

        <div class="button submit-button">
            <input class="button submit-button" type="submit" value="Calculate tax" />
        </div>
    </form>
    
    <br></br>

</div>

<div class="bd-grid">
<form method="post" action="search">
      <div>
      <h1>SEE TAX</h1>
            <label class="label" for="search">Enter name</label>
            <input class="text-input " type="search" name="search" id="search" placeholder="search" />
        </div>

       

        <div class="button submit-button">
            <input class="button submit-button" type="submit" value="display tax" />
        </div>
    </form>
</div>

 <div class="bd-grid bord">
      <h1>TAX</h1>

    <table border="1">
        <tr>
            <td>NAME</td>
            <td>INCOME</td>
            <td>CATEGORY</td>
            <td>EXPENSE</td>
            <td>DATE</td>
            <td>TAX</td>
        </tr>
        <tr>
            <td><%=request.getAttribute("name")%></td>
            <td><%=request.getAttribute("income")%></td>
            <td><%=request.getAttribute("category")%></td>
            <td><%=request.getAttribute("expense")%></td>
            <td><%=request.getAttribute("date")%></td>
             <td>
    <%-- Calculate tax using Java code (you can replace this with your logic) --%>
    <%
        String incomeStr = (String) request.getAttribute("income");
        String expenseStr = (String) request.getAttribute("expense");

        if (incomeStr!=null && expenseStr!=null) {
            double income=Double.parseDouble(incomeStr.trim());
            double expense=Double.parseDouble(expenseStr.trim());
            double tax=(income-expense)*0.12; 
    %>
        <%=tax%>
    <%
        } else {
    %>
        N/A
    <%
        }
    %>
</td>

        </tr>
    </table>

        <br></br>
    </div>
    
    
    
        </section>
  


        <!--===== FOOTER =====-->
        <footer class="footer section" id="contact">
            <p><a class="footern" href="#">saiyad@gmail.com</a></p>
            <div class="social-media-icons">
                <a href="https://www.linkedin.com/" class="fa fa-linkedin"></a>
                <a href="https://twitter.com/" class="fa fa-twitter"></a>
                <a href="https://www.instagram.com/" class="fa fa-instagram"></a>
            </div>
            <p class="footer__copy">&#169; SAIYAD. All rigths reserved</p>
        </footer>


        <script src="https://unpkg.com/scrollreveal"></script>

        <script src="js/main2.js"></script>
</body>
</html>
