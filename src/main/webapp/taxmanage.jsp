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
<h1>TAX management</h1>
<br>
<dl> 
        <dt>Income Tax</dt> 
        <dd>Income tax is a direct tax imposed on the income that individuals, businesses, and other entities earn from various sources. It is a progressive tax, meaning that higher-income individuals are subject to higher tax rates.</dd>
        <br>
    	<dd>Sources of Income:Taxable income can come from employment, investments, rental income, business profits, and other sources.</dd>
<dd>Progressive Structure:Income tax rates typically increase as income levels rise, with different tax brackets.</dd>
<dd>Deductions and Credits:Taxpayers may benefit from deductions, credits, and exemptions to reduce taxable income.
    	</dd> 
    </dl>

<dl> 
        <dt>Sales Tax</dt> 
        <dd>Sales tax is an indirect tax levied on the sale of goods and services. It is usually a percentage of the purchase price and is collected by the seller at the point of sale.</dd>
        <br>
    	<dd>Point of Collection:Collected by the seller at the time of the transaction.</dd>
<dd>Variability: Rates can vary by jurisdiction, and some items or services may be exempt.</dd>
<dd>Consumer Payment:Ultimately, consumers bear the burden of the sales tax.
    	</dd> 
    </dl>
    
    <br>
<dl> 
        <dt>Gift Tax</dt> 
        <dd>Gift tax is a tax on the transfer of assets, usually money or property, from one person to another without the expectation of receiving something of equal value in return.</dd>
        <br>
    	<dd></dd> 
    </dl>
    
<dl> 
        <dt>Income Tax</dt> 
        <dd></dd>
        <br>
    	<dd>Limits and Exemptions:There are annual and lifetime limits on the amount of gifts that can be given tax-free.</dd> 
			<dd>Applicability:Typically paid by the donor, not the recipient.</dd> 
			<dd>Exceptions: Certain gifts, such as those between spouses, may be exempt.
    	</dd> 
    </dl>
    
<dl> 
        <dt>Corporate Tax</dt> 
        <dd>Corporate tax is a direct tax imposed on the profits earned by corporations and business entities. It is distinct from individual income tax.</dd>
        <br>
    	<dd>Taxable Income:Corporations are taxed on their profits, calculated as revenue minus allowable expenses.</dd>
<dd>Tax Rates:Corporate tax rates can vary, and some jurisdictions offer preferential rates for certain activities.</dd>
<dd>Double Taxation:In some cases, corporate profits are taxed at both the corporate and individual levels (dividends).
    	</dd> 
    </dl>
   
<dl> 
        <dt>Dividend Tax</dt> 
        <dd>Dividend tax is a tax on the income that individuals receive from dividends paid by corporations. It is a form of taxation on the distribution of corporate profits to shareholders.</dd>
        <br>
    	<dd>Taxation at Source:Corporations withhold taxes on dividends before distributing them to shareholders.</dd>
<dd>Tax Rates:The tax rates on dividends may differ from other types of income.</dd>
<dd>Impact on Shareholders:Shareholders report dividend income on their personal tax returns.
    	</dd> 
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
