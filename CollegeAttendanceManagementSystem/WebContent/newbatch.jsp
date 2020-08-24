<!DOCTYPE html>
<html>
  <head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Add Batch</title>
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
            <div class="list-inline-item logout"><a id="logout" href="index.html" class="nav-link"> <span class="d-none d-sm-inline">Logout </span><i class="icon-logout"></i></a></div>
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
        <ul class="list-unstyled">.
          <li class="active"><a href="adminHome.html"> <i class="icon-home"></i>Home </a></li>
		  <!--<li><a href="facultyhome.html"> <i class="icon-home"></i>Faculty Home </a></li>-->
          <li class="active"><a href="newbatch.html"> <i class="icon-padnote"></i>Add Batch </a></li>
          <!--<li onclick="myFunction()"><a> <i class="icon-grid"></i>Attendance </a></li>-->
        </ul>
        
      </nav>
      <!-- Sidebar Navigation end-->
      <div class="page-content">
        <div class="page-header">
          <div class="container-fluid">
            <h2 class="h5 no-margin-bottom"><strong class="text-primary">ADD&nbsp</strong><strong>BATCH</strong></h2>
          </div>
        </div>
        <!-- Breadcrumb-->
        <section class="no-padding-top">
          <div class="container-fluid">
            <div class="row">
              <!-- Form Elements -->
              <div class="col-lg-12">
                <div class="block">
                  <div class="block-body">
                    <form class="form-horizontal">
                      <div class="form-group row">
                        <label class="col-sm-3 form-control-label">Batch Name</label>
                        <div class="col-sm-9">
                          <input type="batch" name="batch" class="form-control">
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-sm-3 form-control-label">Subject</label>
                        <div class="col-sm-9">
                          <input type="subject" name="subject" class="form-control">
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-sm-3 form-control-label">Department</label>
                        <div class="col-sm-9">
                          <select name="department" class="form-control mb-3 mb-3">
                            <option>Civil Engineering</option>
                            <option>Electrical Engineering</option>
                            <option>Mechanical Engineering</option>
                            <option>Electronics And Communication Engineering</option>
                            <option>Computer Science And Engineering</option>
                          </select>
                        </div>
                      </div>
                      <div class="line"></div>
                      <div class="form-group row">
                        <label class="col-sm-3 form-control-label">No.of Students</label>
                        <div class="col-sm-9">
                          <input type="number" name="stnumber" class="form-control">
                        </div>
                      </div>
                      <div class="line"></div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <section class="no-padding-top">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-12">
                <div class="block margin-bottom-sm">
                  <div class="title"><strong>Enter Student Details</strong></div>
                  <div class="table-responsive"> 
                  <script>
                  var table = '';
                  var rows = stnumber, cols = 4;
                  for (var r=0; r<rows; r++){
                    table += '<tr>';
                    for(var c=1; c<=cols; c++){
                        table += '<td>' + c + '</td>';           
					}
                    table += '</tr>';
				  }
                  document.write('<table border=1>' + table + '</table>');
                  </script>
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th>Roll No.</th>
                          <th>Admission No.</th>
                          <th>Student Name</th>
                          <th>Email ID</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">1</th>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Admission No.</label>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Student Name</label>
                              </div>
                            </div>
                          </td>
                          
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Email ID</label>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row">2</th>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Admission No.</label>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Student Name</label>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Email ID</label>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row">3</th>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Admission No.</label>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Student Name</label>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Email ID</label>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row">4</th>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Admission No.</label>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Student Name</label>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Email ID</label>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <th scope="row">5</th>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Admission No.</label>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Student Name</label>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="col-sm-12">
                              <div class="form-group-material">
                                <input id="register-username" type="text" name="registerUsername" required class="input-material">
                                <label for="register-username" class="label-material">Email ID</label>
                              </div>
                            </div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <hr>
                  <div class="form-group row">
                        <div class="col-sm-3 ml-auto">
                          <button type="submit"  data-toggle="modal" data-target="#myModal1"  class="btn btn-primary">Save changes</button>
                          <button type="submit" data-toggle="modal" data-target="#myModal2"  class="btn btn-secondary">Cancel</button>
                        </div>
                        <!-- Modal-->
                    <div id="myModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
                      <div role="document" class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-body">
                            <p>New Batch Added Successfully</p>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn"><a href="facultyhome.html">Go To Faculty Home</a></button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div id="myModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
                      <div role="document" class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-body">
                            <p>Are You Sure You Want To Leave?</p>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn"><a href="facultyhome.html">Leave</a></button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
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
    <script>
    function myFunction() {
      alert("Go to faculty home and select a batch to add the attendence!");
    }
    </script>
  </body>
</html>