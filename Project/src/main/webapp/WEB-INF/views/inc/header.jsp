<%@page import="dto_vo.Emp.Empinfo"%>
<%@page import="dto_vo.Emp.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<%  

	String command = request.getServletPath();
	/* String emp = (String)session.getAttribute("emp"); */
	
%>
      <header class="main-header">
        <!-- Logo -->
        <a href="<%=request.getContextPath() %>/login.htm" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>Se7en</b></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Se7en </b>International</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                 <!--  <span class="label label-success">4</span> -->
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 4 messages</li>
                      
               <%--    <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- start message -->
                        <a href="#">
                          <div class="pull-left">
                            <img src="<%=request.getContextPath() %>/resources/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
                          </div>
                          <h4>
                            Support Team
                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li><!-- end message -->
                    </ul>
                  </li> --%>
            
                  <li class="footer">
                  <a href="${pageContext.request.contextPath}/message/RMSGList.htm">받은 쪽지함</a>
                  <a href="${pageContext.request.contextPath}/message/SMSGList.htm">보낸 쪽지함</a>
                  <a href="${pageContext.request.contextPath}/message/MSGWrite.htm">쪽지 쓰기</a>
                  </li>
                </ul>
              </li>
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 10 notifications</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 new members joined today
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-red"></i> 5 new members joined
                        </a>
                      </li>

                      <li>
                        <a href="#">
                          <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-user text-red"></i> You changed your username
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li>
              <!-- Tasks: style can be found in dropdown.less -->
              <li class="dropdown tasks-menu">
              <!-- 2단계 Spring taglib -->
				<%-- <se:authorize ifNotGranted="ROLE_USER">
					<li><a href="${pageContext.request.contextPath}/login.htm">로그인</a></li>
				</se:authorize> --%>
				 
				<se:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN">
					 <a href="${pageContext.request.contextPath}/j_spring_security_logout" class="dropdown-toggle">
                  		<i class="fa fa-fw fa-sign-out"></i> logout               
              		 </a>
				</se:authorize>
                
              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="<%=request.getContextPath() %>/resources/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs"><%-- <%= emp.getEname() %> --%></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="<%=request.getContextPath() %>/resources/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                    <p>
                     <%--  <%= emp.getEname() %> - <%= empinfo.getUseremail() %> --%>
                      <small>Member since Nov. 2012</small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
		                <se:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN">
							  
		              		 <a href="${pageContext.request.contextPath}/j_spring_security_logout" class="btn btn-default btn-flat">Sign out</a>
						</se:authorize>
                      
                    </div>
                  </li>
                </ul>
              </li>
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
            </ul>
          </div>
        </nav>
      </header>
