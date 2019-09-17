<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
Generate MoM
  </title>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style_1.css">
  <!-- Your custom styles (optional) -->
  <link href="css/style.css" rel="stylesheet">
  <link href="admindash.css" rel="stylesheet" type="text/css">
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="dark-edition">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="black" data-image="../assets/img/sidebar-2.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
        Tip 2: you can also add an image using data-image tag
    -->
   
      <div class="logo"><a href="#" class="simple-text logo-normal">
          ABC Ltd.
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="./dashboard.html">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item  ">
            <a class="nav-link" href="./UserProfile.html">
              <i class="material-icons">person</i>
              <p>User Profile</p>
            </a>
          </li>
          <ul class="nav">
                <li class="nav-item active  ">
                  <a class="nav-link" href="./GenerateMom.html">
                    <i class="material-icons">content_paste</i>
                    <p>Generate MoM</p>
                  </a>
                </li>
          <li class="nav-item ">
            <a class="nav-link" href="./EmployeeDetails.html">
              <i class="material-icons">content_paste</i>
              <p>Employee Details</p>
            </a>
          </li>
          <li class="nav-item  ">
            <a class="nav-link" href="./DepartmentDetails.html">
              <i class="material-icons">library_books</i>
              <p>Department Details</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
   <section>
        <div class="modal-dialog cascading-modal modal-avatar modal-sm" role="document"> 
                <!--Content-->
                <div class="modal-content" style="width:600px;margin-left: -100px;background: #283048 !important;" >
                
                  <!--Header-->
                  <!-- <div class="modal-header">
                    <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg" alt="avatar" class="rounded-circle img-responsive">
                  </div> -->
                  <!--Body-->
                  <div class="modal-body text-center mb-1"  >
                  
                        <!-- <div class="card">
                                <div class="card-header card-header-primary"> -->
                    <h5 class="mt-1 mb-2 card card-header card-header-primary" style="color:white;font-size: 35px; background:#913f9e" data-color="purple">Minutes of Meeting</h5>
                  
            <form action="GenerateMoM" method="post">
                <div>
                <div class="row">
                    <div class="col-lg-12">
                        <b><label for="momSubject" style="font-weight:bold;"><br>MoM SUBJECT </label></b>
                        <input type="text" id="momSubject" name="subject" class="form-control"/>
                    </div>
                    
                    <div class="col-lg-6">
                            <label for="momPurpose" style="font-weight:bold;"><br><br>MoM PURPOSE </label>
                            <input type="text" id="momPurpose" name="purpose" class="form-control"  />
                        </div>
                        <div class="col-lg-6">
                                <label for="creatorId" style="font-weight:bold;">
                                        <br><br>CREATOR ID
                                </label>
                                <input type="number" id="creatorId" name="creatorId" class="form-control" >
                        </div>

                        <div class="col-lg-6">
                            <label style="font-weight:bold;"><br><br>MEETING INITIATED AT</label>
                            <input type="time" id="momSubject" name="startTime"  class="form-control"/>
                        </div>
                        <div class="col-lg-6">
                                <label style="font-weight:bold;"><br><br>MEETING TERMINATED AT</label>
                                <input type="time" id="momPurpose" name="endTime"  class="form-control"/>
                            </div>
                            <div class="col-lg-6">
                                    <label style="font-weight:bold;"><br><br>DECISIONS TAKEN </label>
                                    <textarea rows="3" cols="20" placeholder="DecisionTaken" name="dt" class="form-control"></textarea>
                                </div>
                                <div class="col-lg-6">
                                        <label style="font-weight:bold;"><br><br>POINTS DISCUSSED</label>
                                        <textarea rows="3" cols="20" placeholder="points discussed" name="pd" class="form-control"></textarea>
                                    </div>
                                    <div class="col-lg-6 participants" id="partTable">
                                            <label style="font-weight:bold;"><br><br>ENTER PARTICIPANTS ID</label>
                                            <input type="text" id="part1" name="part1" class="form-control" />
                                    </div>
                                   
                                           <div class="col-lg-6 " id="partTable2">
                                               <label style="font-weight:bold;"><br><br>ENTER ATTENDANCE </label>
                                               <select name='attendance1' id='attendance1' class="browser-default custom-select form-control" >
                                                    <option value='present'  style="color:black;">Present</option>
                                                    <option value='absent' style="color:black;">Absent</option>
                                                </select>
                                           </div>   
                                           <div class="col-lg-12">
                                                <input type="button" value="add" id="addPart" name="add"  class="btn btn-block purple-gradient mt-3" />
                                           </div>
                                              
                                    <div class="col-lg-6 actions" id="actTable">
                                        <label style="font-weight:bold;"><br><br>ENTER ACTION ITEMS</label>
                                        <input type="text" placeholder="Enter Action Items" id="actionOwner1" name="actionItem1" class="form-control"/>
                                    </div>
                                    <div class="col-lg-6 actions" id="actTable2">
                                            <label style="font-weight:bold;" ><br><br>ACTION OWNER</label>
                                            <input type="text"  placeholder="Enter emp id" name="actionOwner1" id="actionOwner1" class="form-control" />
                                        </div>
                                        <div class="col-lg-12">
                                                <input type="button" value="add" id="addActions" name="add" class="btn btn-block purple-gradient mt-3" />
                                        </div>
                                        <div class="col-lg-6">
                                            <label style="font-weight:bold;"><br><br>OPEN ITEMS</label>
                                                <textarea  name="openItems" class="form-control"></textarea>
                                        </div>
                                        <div class="col-lg-6">
                                                <button type="submit" class="btn purple-gradient btn-block mt-5">CREATE MOM</button>
                                            </div>
                                          </div>
                                    
                </div>
                
            </div>
              
              
          
          
                </div>
              
          
                <div class="items">
          
                 
              </form>
              </div>
              
              </div>
              

               
                                                
  
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Filters</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger active-color">
            <div class="badge-colors ml-auto mr-auto">
              <span class="badge filter badge-purple active" data-color="purple"></span>
              <span class="badge filter badge-azure" data-color="azure"></span>
              <span class="badge filter badge-green" data-color="green"></span>
              <span class="badge filter badge-warning" data-color="orange"></span>
              <span class="badge filter badge-danger" data-color="danger"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="header-title">Images</li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-1.jpg" alt="">
          </a>
        </li>
        <li class="active">
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="assets/img/sidebar-2.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="assets/img/sidebar-3.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="assets/img/sidebar-4.jpg" alt="">
          </a>
        </li>
        
      </ul>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="assets/js/core/jquery.min.js"></script>
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="https://unpkg.com/default-passive-events"></script>
  <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Place this tag in your head or just before your close body tag. -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/material-dashboard.js?v=2.1.0"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');
        $sidebar_img_container = $sidebar.find('.sidebar-background');
        $full_page = $('.full-page');
        $sidebar_responsive = $('body > .navbar-collapse');
        window_width = $(window).width();
        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });
        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');
          $(this).siblings().removeClass('active');
          $(this).addClass('active');
          var new_color = $(this).data('color');
          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }
          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }
          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });
        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');
          var new_color = $(this).data('background-color');
          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });
        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');
          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');
          var new_image = $(this).find("img").attr('src');
          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }
          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');
            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }
          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');
            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }
          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });
        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');
          $input = $(this);
          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }
            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }
            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }
            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }
            background_image = false;
          }
        });
        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');
          $input = $(this);
          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;
            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();
          } else {
            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');
            setTimeout(function() {
              $('body').addClass('sidebar-mini');
              md.misc.sidebar_mini_active = true;
            }, 300);
          }
          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);
          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);
        });
      });
    });
//script from gen
var idPartVal=1;
	 var idActVal=1;
	 
	$('#addPart').click(function()
			
	
	{
		
		idPartVal+=1;
		if(idPartVal<15)
		$('#partTable').append(" <br><input type='text' id='part"+idPartVal+"' name='part"+idPartVal+"' class='form-control' style='width:253px;' /><br>")
        $("#partTable2").append(" <br><select style='width:253px;' class='browser-default custom-select form-control' name='attendance"+idPartVal+"' id=''attendance"+idPartVal+"' > <option style='color:black;' value='present'>Present</option> <option style='color:black;' value='absent'>Absent</option> </select><br>")
       
	});
	$('#addActions').click(function()
			
			
			{
				
				idActVal+=1;
				if(idActVal<15)
				$('#actTable').append(" <br><input type='text' placeholder='Enter Action Items' name='actionItem"+idActVal+"'  class='form-control' style='width:253px;'/><br>")
                $("#actTable2").append("<br><input type='text' placeholder='Enter emp id' name='actionOwner"+idActVal+"' id='actionOwner"+idActVal+"'  class='form-control'  style='width:253px;'/><br>")
                
			});
  </script>
</body>

</html>