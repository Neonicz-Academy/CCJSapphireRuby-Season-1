
<!DOCTYPE html>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<html>
  <head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Add Attendance</title>
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
    <link rel="stylesheet" href="css/style.sea.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/logo.ico">
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
            <div class="list-inline-item logout"><a href="logoutServlet" class="nav-link"> <span class="d-none d-sm-inline">Logout </span><i class="icon-logout"></i></a></div>
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
          <li><a href="facultyhome.html"> <i class="icon-home"></i>Faculty Home </a></li>
          <li><a href="newbatch.html"> <i class="icon-padnote"></i>Add Batch </a></li>
          <li class="active"><a> <i class="icon-grid"></i>Attendance </a></li>
        </ul>
        
      </nav>
      <!-- Sidebar Navigation end-->
      <div class="page-content">
        <div class="page-header">
          <div class="container-fluid">
            <h2 class="h5 no-margin-bottom"><strong class="text-primary">FACULTY&nbsp</strong><strong>HOME</strong></h2>
          </div>
        </div>
        <section class="no-padding-top no-padding-bottom">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-12">
              
                <div class="block  margin-bottom-sm">

                  <div class="title"><strong>Enter attendance for the day</strong></div>
                  <div><strong>Last Updated: </strong>
                  <span>
                  <div class="col-lg-6">
                  <div class="details d-flex">
                    <div class="item"><strong>day/&nbsp</strong></div>
                    <div class="item"><strong>month/&nbsp</strong></div>
                    <div class="item"><strong>year</strong></div>
                  </div>
                  </div>
                  </span>
                  
                </div>
                <form action= "AddAttendanceServlet" method="post">
                  <div class="year float-right">
                    <select name="year" id="year">
                      <option value="0">Year</option>
                      <option value="2020">2020</option>
                      <option value="2021">2021</option>
                      <option value="2022">2022</option>
                      <option value="2023">2023</option>
                      <option value="2024">2024</option>
                    </select>
                  </div>
                  <div class="month float-right">
                    <select name="month" id="month">
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
                  </div>
                  <div class="day float-right">
                    <select name="day" id="day">
                      <option value="0">day</option>
                      <option value="1">01</option>
                      <option value="2">02</option>
                      <option value="3">03</option>
                      <option value="4">04</option>
                      <option value="5">05</option>
                      <option value="6">06</option>
                      <option value="7">07</option>
                      <option value="8">08</option>
                      <option value="9">09</option>
                      <option value="10">10</option>
                      <option value="11">11</option>
                      <option value="12">12</option>
                      <option value="13">13</option>
                      <option value="14">14</option>
                      <option value="15">15</option>
                      <option value="16">16</option>
                      <option value="17">17</option>
                      <option value="18">18</option>
                      <option value="19">19</option>
                      <option value="20">20</option>
                      <option value="21">21</option>
                      <option value="22">22</option>
                      <option value="23">23</option>
                      <option value="24">24</option>
                      <option value="25">25</option>
                      <option value="26">26</option>
                      <option value="27">27</option>
                      <option value="28">28</option>
                      <option value="29">29</option>
                      <option value="30">30</option>
                      <option value="31">31</option>
                    </select>
                  </div>
								<%
                 List<Map<String, String>> students = (List<Map<String,String>>) request.getAttribute("students");
                 if(students==null){
                	 %>
								<div class="alert alert-warning">NO DATA FOUND</div>
								<% 
                	 
                 }else{
                      %>
                     <!--  <form action= "AddAttendanceServlet" method="post"> -->
                      <div class="table-responsive"> 
                      <table class="table">
                        <thead>
                          <tr>
                            <th>Roll no.</th>
                            <th>Name</th>
                            <th>Present</th>
                            <th>Absent</th>
                          </tr>
                        </thead>
                        <tbody>
                       <%
                       for(Map<String,String> row: students){
                    	   %> 
                    	   
                    	   <tr>
       
                           <td><%=row.get("batch_student.student_id") %></td>
                           <td><%=row.get("student_table.student_name") %></td>
                            <td><input id="r1" type="checkbox"  name="attendanceCheckBox" value="<%=row.get("batch_student.student_id") %>">
                             <label for="r1"></label></td>
                            
                            </td>
                          </tr>
                    	 
                    <% 	     
                       }
                       
                       
                      
                     
                 }
                 %>
                 </tbody>
                 </table>
                 </div>
                 
								<!-- <form action= "AddAttendanceServlet" method="post">
                    <div class="table-responsive"> 
                      <table class="table">
                        <thead>
                          <tr>
                            <th>Roll no.</th>
                            <th>Name</th>
                            <th>Present</th>
                            <th>Absent</th>
                          </tr>
                        </thead>
                        <tbody>
                        <tr>
                          <th scope="row">1</th>
                          <td>Mark</td>
                          <td><input id="r1" type="radio" value="present" name="optionsRadios1">
                            <label for="r1"></label></td>
                          <td><input id="r2" type="radio" value="absent" name="optionsRadios1">
                            <label for="r2"></label>
                           </td>
                         </tr>
                        <tr>
                          <th scope="row">2</th>
                          <td>Jacob</td>
                          <td><input id="r1" type="radio" value="" name="optionsRadios2">
                            <label for="r1"></label></td>
                          <td><input id="r2" type="radio" value="" name="optionsRadios2">
                            <label for="r2"></label></td>
                        </tr>
                        <tr>
                          <th scope="row">3</th>
                          <td>Larry</td>
                          <td><input id="r1" type="radio" value="" name="optionsRadios3">
                            <label for="r1"></label></td>
                          <td><input id="r2" type="radio" value="" name="optionsRadios3">
                            <label for="r2"></label></td>
                        </tr>
                      </tbody>
                      </table>
                    </div>
                  </div>
                  -->
                <div class="col-sm-9 ml-auto">
                  <button type="submit" class="btn btn-secondary float-right">Cancel</button>
                  <button type="submit" class="btn btns btn-primary float-right">Save changes</button>
                </div>
                </form>
              </div>
            </div>
          </div>
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
  </body>
</html>