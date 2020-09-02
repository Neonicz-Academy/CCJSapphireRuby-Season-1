<!DOCTYPE html>

<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<html>
  <head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>College Attendance Management System - Admin Dashboard</title>
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
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
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
            
          </div>
        </div>
        <div class="container-fluid d-flex align-items-center justify-content-between">
          <div class="navbar-header">
            <!-- Navbar Header--><a href="adminHome.html" class="navbar-brand">
              <div class="brand-text brand-big visible text-uppercase"><strong class="text-primary">College &nbsp</strong><strong> Attendance &nbsp</strong><strong class="text-primary"> Management &nbsp</strong><strong> System &nbsp</strong></div>
              <div class="brand-text brand-sm"><strong class="text-primary">C &nbsp</strong><strong>A &nbsp</strong><strong class="text-primary">M &nbsp</strong><strong>S &nbsp</strong></div></a>
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
            <h4 class="h5">Attendance Buddy</h4>
          </div>
        </div>
        <!-- Sidebar Navidation Menus--><span class="heading">Menu</span>
        <ul class="list-unstyled">
          <li class="active"><a href="adminHome.html"> <i class="icon-home"></i>Home </a></li>
		  <li><a href="AddFacultyForm"> <i class="icon-padnote" value="add" name="addbatch"></i>Add Faculty </a></li>
        </ul>
        
      </nav>
      <!-- Sidebar Navigation end-->
      <div class="page-content">
        <div class="page-header">
          <div class="container-fluid">
            <h2 class="h5 no-margin-bottom"><strong class="text-primary">ADMIN &nbsp</strong><strong> HOME</strong></h2>
          </div>
        </div>

        <!-- tables.html -->
        


        <!-- Breadcrumb-->
        <section class="no-padding-top">
          <div class="container-fluid">
          
            <!-- <div class="form-group" ><a href="AddFacultyForm"><input type="submit" value="Add Faculty" class="btn btn-primary" name="Add" ></a></div> -->
          <form action= "admin" method="post">
            <div class="row">
              <div class="col-lg-12">
                <div class="block  margin-bottom-sm">
                

                  <div class="title"><strong>Faculty Database</strong></div>
                 
                    <div class="table-responsive"> 
                      <table class="table" id= "myTable">
                        <thead>
                          <tr>
                            <th>Faculty Id</th>
                            <th>Faculty Name</th>
                            <th>Department</th>
                            <th>Email id</th>
                            <th>Action</th>
                          </tr>
                        </thead>
										<%
											List<Map<String, String>> faculty = (List<Map<String, String>>) request.getAttribute("faculty");
										           if (faculty == null) {
										%><div class="alert alert-warning">NO DATA FOUND</div>
										<%
											} else {

										for (Map<String, String> row : faculty) {
										%>
										<tbody>
                        <tr>
                          <td><%=row.get("faculty_id") %></td>
                          <td><%=row.get("faculty_name") %></td>
                          <td><%=row.get("faculty_dept") %></td>
                          <td><%=row.get("faculty_email") %></td>
                          <td><label class="checkbox-inline"><input id="inlineCheckbox1" type="checkbox" name="removeCheckBox" value="<%=row.get("faculty_id") %>"> Remove </label></td>
                        </tr>
                         <% 
                                }
							}
						%>
						
						
                   <!--      <tr>
                          <th scope="row">2</th>
                          <td>Jacob</td>
                          <td>Thornton</td>
                          <td>@fat</td>
                          <td><label class="checkbox-inline"><input id="inlineCheckbox1" type="checkbox" value="option1"> Remove </label></td>
                        </tr>
                        <tr>
                          <th scope="row">3</th>
                          <td>Larry</td>
                          <td>the Bird</td>
                          <td>@twitter</td>
                          <td><label class="checkbox-inline"><input id="inlineCheckbox1" type="checkbox" value="option1"> Remove </label></td>
                        </tr> -->
                      </tbody>
                      </table>
                    </div>
                    
                  
                    
                  </div>
                <div class="col-sm-9 ml-auto">
                 
                  <button type="submit" class="btn btns btn-primary float-right">Save changes</button>
               
                </div>
               
              </div>
              
            </div>
            </form>
          </div>

        </section>
        <footer class="footer">
          <div class="footer__block block no-margin-bottom">
            <div class="container-fluid text-center">
              <!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
              <p class="no-margin-bottom">2020 &copy;Team Sapphire @ Neonicz. Design by <a href="https://bootstrapious.com/p/bootstrap-4-dark-admin">Bootstrapious</a>.</p>
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
