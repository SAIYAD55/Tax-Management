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

<div class="bd-grid">
<h1>What is Tax Planning?</h1>
<br>
<h2>Corporate Tax Planning</h2>
<dl> 
        <dt>Objective</dt> 
        <dd>The goal of corporate tax planning is to help businesses minimize their overall tax liability, ensuring they comply with tax laws while optimizing their financial strategies.</dd> 
    	<dt>Methods:</dt> 
        <dd>Structural Adjustments: Examining the business structure to ensure it aligns with tax regulations and exploring any changes that might yield tax benefits.</dd> 
    	<dd>Income Shifting: Strategically managing income and expenses to distribute them across different entities within the organization, potentially lowering the overall tax burden.</dd>
    	<dd>Tax Credits and Incentives: Identifying and utilizing available tax credits and incentives that are applicable to the industry or business activities.</dd>
    </dl>

<br>
<h2>Individual Tax Planning</h2>
<dl> 
        <dt>Objective</dt> 
        <dd>Individual tax planning focuses on minimizing an individual's tax liability, taking advantage of various deductions, credits, and exemptions available.</dd> 
    	<dt>Methods:</dt> 
        <dd>Investment Planning:Choosing tax-efficient investment options to maximize returns while minimizing tax implications.</dd>
        <dd>Retirement Planning:Contributing to retirement accounts like 401(k) or IRA to benefit from tax advantages and plan for future financial security.</dd>
        <dd>Estate Planning:Structuring assets and inheritances in a tax-efficient manner to reduce potential tax burdens for heirs.</dd>
    </dl>
    
    <br>
<h2>Purposive Tax Planning</h2>
<dl> 
        <dt>Objective</dt> 
        <dd>This type of planning is goal-oriented, aiming to achieve specific financial objectives while minimizing taxes related to those objectives.</dd> 
    	<dt>Methods:</dt> 
        <dd>Real Estate Tax Planning:Structuring real estate transactions to minimize capital gains tax or property tax.</dd>
        <dd>Investment Tax Planning:Planning investments with a focus on minimizing tax liabilities on capital gains or dividends.</dd>
    </dl>
    
    <br>
<h2>Permissive Tax Planning</h2>
<dl> 
        <dt>Objective</dt> 
        <dd>Permissive tax planning involves taking advantage of legal loopholes within the tax code to reduce overall tax liability.</dd> 
    	<dt>Methods:</dt> 
        <dd>Tax Credits and Deductions:Utilizing available tax credits and deductions allowed by law to reduce taxable income.</dd>
        <dd>Tax-Efficient Investments:Making investments that offer tax advantages, such as municipal bonds with tax-free interest.</dd>
        <dd></dd>
    </dl>
    
    <br>
<h2>Long-Range and Short-Range Tax Planning</h2>
<dl> 
        <dt>Objective</dt> 
        <dd>Long-Range Tax Planning:Focused on minimizing taxes over an extended period, often involving comprehensive financial and estate planning.
     <br>Short-Range Tax Planning:Aims to reduce taxes within the current tax year through immediate actions and adjustments.
        </dd> 
    	<dt>Methods:</dt> 
        <dd>Long-Range:Estate planning, retirement planning, and investment strategies with long-term tax implications.</dd>
        <dd>Short-Range:Timing income and expenses, taking advantage of tax deductions and credits available in the current year.</dd>
        <dd></dd>
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
