<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
    <!--===== HEADER ===111==-->
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

<div class="bd-grid">
<h1>Tax Planning VS Tax Management</h1>
<br>
<h2>Tax planning</h2>
<p>Tax planning is the process of analyzing financial situations and making strategic decisions to minimize tax liability. It involves the use of legal methods and financial planning techniques to optimize the tax consequences of various financial decisions.</p>
<br>
<dl> 
        <dt>Minimizing Tax Liability</dt> 
        <dd>Tax planning aims to reduce the amount of taxes owed by taking advantage of available deductions, credits, exemptions, and other incentives.</dd> 
    	
    </dl>
   
<dl> 
        <dt>Long-Term Perspective</dt> 
        <dd>It often involves long-term strategies, looking ahead to future financial years. This may include retirement planning, estate planning, and investment strategies with lasting tax implications.</dd> 
    	
    </dl>
    
<dl> 
        <dt>Compliance with Tax Laws</dt> 
        <dd>Tax planning is done within the framework of existing tax laws and regulations. It focuses on legal strategies to optimize tax outcomes.</dd> 
    	
    </dl>
    
<dl> 
        <dt>Goal-Oriented</dt> 
        <dd>Goals can vary, such as reducing overall tax burden, maximizing after-tax income, or achieving specific financial objectives like buying a home or funding education.</dd> 
    	
    </dl>
    
<dl> 
        <dt>Proactive Approach</dt> 
        <dd>Tax planning is a proactive approach that involves making financial decisions with an awareness of their tax implications. It may include adjusting investment portfolios, retirement contributions, or business structures.</dd> 
    	
    </dl>
    


<h1>Tax Planning VS Tax Management</h1>
<br>
<h2>Tax management</h2>
<p>Tax management involves the ongoing process of handling and overseeing tax-related matters. It includes the implementation of tax planning strategies but extends to the day-to-day and year-to-year activities required to manage taxes efficiently.</p>
<br>
<dl> 
        <dt>Implementation of Tax Planning</dt> 
        <dd>Tax management involves putting tax planning strategies into action. It includes the practical execution of planned activities to achieve desired tax outcomes.</dd> 
    	
    </dl>
    
<dl> 
        <dt>Record Keeping and Documentation</dt> 
        <dd>Proper record keeping of financial transactions is crucial for tax management. This includes maintaining receipts, invoices, and other relevant documents for income, expenses, and deductions.</dd> 
    	
    </dl>
    
<dl> 
        <dt>Timely Compliance</dt> 
        <dd>Managing tax obligations involves timely filing of tax returns, making accurate calculations, and complying with tax deadlines. This ensures adherence to tax laws and regulations.</dd> 
    	
    </dl>
    
<dl> 
        <dt>Response to Changes</dt> 
        <dd>Tax management includes adapting to changes in tax laws. It requires staying informed about updates and adjusting strategies accordingly to maintain tax efficiency.</dd> 
    	
    </dl>
</div>



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
