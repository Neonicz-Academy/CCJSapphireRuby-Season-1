<!DOCTYPE html>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<html>
<head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Student Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Custom Font Icons CSS-->
    <link rel="stylesheet" href="css/font.css">
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.green.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/logo.ico">

    <link href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,700' rel='stylesheet' type='text/css'>
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
  <body>
    <header class="header">   
      <nav class="navbar navbar-expand-lg">
        <div class="search-panel">
          <div class="search-inner d-flex align-items-center justify-content-center">
            <div class="close-btn">Close <i class="fa fa-close"></i></div>
            <form id="searchForm" action="#">
              <div class="form-group">
                <input type="search" name="search" placeholder="What are you searching for...">
                <button type="submit" class="submit">Search</button>
              </div>
            </form>
          </div>
        </div>
        <div class="container-fluid d-flex align-items-center justify-content-between">
          <div class="navbar-header">
            <!-- Navbar Header--><a href="facultyhome.html" class="navbar-brand">
              <div class="brand-text brand-big visible text-uppercase"><strong class="text-primary">COLLEGE&nbsp</strong><strong>ATTENDANCE&nbsp</strong><strong class="text-primary">MANAGEMENT&nbsp</strong><strong>SYSTEM</strong></div>
              <div class="brand-text brand-sm"><strong class="text-primary">C&nbsp</strong><strong>A&nbsp</strong><strong class="text-primary">M&nbsp</strong><strong>S</strong></div></a>
            <!-- Sidebar Toggle Btn-->
            <button class="sidebar-toggle"><i class="fa fa-long-arrow-left"></i></button>
          </div>
          <div class="right-menu list-inline no-margin-bottom">    
            
            <!-- Log out               -->
            <div class="list-inline-item logout"><a id="logout" href="logoutServlet" class="nav-link"> <span class="d-none d-sm-inline">Logout </span><i class="icon-logout"></i></a></div>
          </div>
        </div>
      </nav>
    </header>
    <div class="d-flex align-items-stretch">
      <!-- Sidebar Navigation-->
      <nav id="sidebar">
        <!-- Sidebar Header-->
        <div class="sidebar-header d-flex align-items-center">
          <div class="avatar"><img src="logo_orginal.jpg" alt="..." class="img-fluid rounded-circle"></div>
          <div class="title">
            <p class="h5">Attendance Buddy</p>
          </div>
        </div>
        <!-- Sidebar Navidation Menus--><span class="heading">Menu</span>
        <ul class="list-unstyled">
          <li class="active"><a href="studentHome.html"> <i class="icon-home"></i>Home </a></li>
        </ul>
        
      </nav>
      <!-- Sidebar Navigation end-->
      <div class="page-content">
        <div class="page-header">
          <div class="container-fluid">
            <h2 class="h5 no-margin-bottom"><strong class="text-primary">Home&nbsp</strong></h2>
          </div>
        </div>
        <% 
         List<Map<String, String>> students = (List<Map<String,String>>) request.getAttribute("students");
                 if(students==null){
                	 %><div class="alert alert-warning">NO DATA FOUND</div>
								<% 
                	 
                 }else{
                                  
                       for(Map<String,String> row: students){
                    	   %> 
        <section class="no-padding-top no-padding-bottom">
          <div class="container-fluid studentdetails">
            <h5 id="studentName"> NAME : <%=row.get("studentName") %> </h5>
            <h5 id="studentRegNum"> REGISTER NUMBER : <%=row.get("studentId") %> </h5>
            <h5 id="semester">EMAIL ID : <%=row.get("email") %> </h5>
           <!--  <h5 id="department">DEPARTMENT :   </h5> -->
          </div>
          <% 
                                }
							}
						%>
            <div class="selectday">
            <form action= "GetAttendance" method="post">
                
                <h5 class="monthselector">SELECT MONTH AND YEAR &nbsp: &nbsp

                    <select name="month" id="months">
                      <option value="0">Month</option>
                      <option value="01">January</option>
                      <option value="02">February</option>
                      <option value="03">March</option>
                      <option value="04">April</option>
                      <option value="05">May</option>
                      <option value="06">June</option>
                      <option value="07">July</option>
                      <option value="08">August</option>
                      <option value="09">September</option>
                      <option value="10">October</option>
                      <option value="11">November</option>
                      <option value="12">December</option>
                    </select>

                    <select name="year" id="years">
                      <option value="0">Year</option>
                      <option value="2020">2020</option>
                      <option value="2021">2021</option>
                      <option value="2022">2022</option>
                      <option value="2023">2023</option>
                      <option value="2024">2024</option>
                    </select>
                  </h5>
                  
                  <button type="submit" class="btn btn-secondary float-right">Select</button>   
                </form>  
                  
                    
                  
          </div>
				<%
                 List<Integer> atten = (List<Integer>) request.getAttribute("atten");
                 if(atten==null){
                	 %>
				<div class="alert alert-warning">NO DATA FOUND</div>
				<% 
                	 
                 }else{
                      %>
				<table class="stview">
					<%
					String presents="";
					for(int i=1;i<31;i++){
	                         if(i==1 ){	
	                         	%>
		                       		 <tr>
		                     	<%
	                          	 }
	                         	
	                          if (atten.contains(i))
	                              	 {
	                              		presents="present";
	                              	 }
	                          else
	                          {
	                        	  presents="absent";
	                          }
	                              	   %>
	                              	 <td class="day stviewtd <%=presents %>">
	                              	 
	                              	  <span class="number"><%=i %></span>
	                              	  </td>
	                        	 <% 
	                        if(i!= 1 && i%6 == 0){
	                    	  %>
	                    	     </tr>
	                    	  <% 
	                    	   		 if(i<30){
	                    		   			 %>
		                            		 <tr>
		                            		<%
	                    	      		}
	                           }
					  }
					%>
					<tr> 
					<% if (atten.contains(31))
	                              	 {
	                              		presents="present";
	                              	 }
	                          else
	                          {
	                        	  presents="absent";
	                          }
	                              	   %>
	                              	 <td class="day stviewtd <%=presents %>">
	                              	 
	                              	  <span class="number">31</span>
	                              	  </td>
	                        	 
					
					</tr>
						<% 
                 }
	                  %>



					<!-- <td class="day present stviewtd"><span class="number">2</span></td>
						<td class="day present stviewtd"><span class="number">3</span></td>
						<td class="day present stviewtd"><span class="number">4</span></td>
						<td class="day absent stviewtd"><span class="number">5</span></td>
						<td class="day present stviewtd"><span class="number">6</span></td> -->
					
					
				</table>

			</section>
        <footer class="footer">
          <div class="footer__block block no-margin-bottom">
            <div class="container-fluid text-center">
              <!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
              <p class="no-margin-bottom">2020 &copy; Team Sapphire @ Neonicz. Design by <a href="https://bootstrapious.com/p/bootstrap-4-dark-admin">Bootstrapious</a>.</p>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="js/charts-home.js"></script>
    <script src="js/front.js"></script>
    <script src="js/charts-custom.js"></script>
    
  </body>
</html>