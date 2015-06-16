<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<%=request.getContextPath() %>/resources/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>Alexander Pierce</p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
			<li>
              <a href="pages/widgets.html">
                <i class="fa fa-th"></i> <span>웹메일</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i>
                <span>커뮤니티</span>
                <span class="label label-primary pull-right">4</span>
              </a>
              <ul class="treeview-menu">
                <li><a href="<%=request.getContextPath() %>/WEB-INF/views/layout/top-nav.html"><i class="fa fa-circle-o"></i> 자유게시판</a></li>
              </ul>
            </li>
            <li>
              <a href="pages/widgets.html">
                <i class="fa fa-th"></i> <span>일정관리</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-pie-chart"></i>
                <span>전자결재</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="${pageContext.request.contextPath}/sign/SignMain.htm"><i class="fa fa-circle-o"></i>전자결재 메인</a></li>
                <li><a href="<%=request.getContextPath() %>/WEB-INF/views/charts/morris.html"><i class="fa fa-circle-o"></i> Morris</a></li>
                <li><a href="<%=request.getContextPath() %>/WEB-INF/views/charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>
                <li><a href="<%=request.getContextPath() %>/WEB-INF/views/charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>
              </ul>
            </li>
           <li>
              <a href="pages/widgets.html">
                <i class="fa fa-th"></i> <span>조직도</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
            <li>
              <a href="pages/widgets.html">
                <i class="fa fa-th"></i> <span>근태관리</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
            <li>
              <a href="pages/widgets.html">
                <i class="fa fa-th"></i> <span>관리자</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
        </section>
        <!-- /.sidebar -->
      </aside>
</body>
</html>