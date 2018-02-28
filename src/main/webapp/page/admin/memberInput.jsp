<%--
供求
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.jsp" flush="true"/>

<body class="page-header-fixed">

<jsp:include page="top.jsp" flush="true"/>

<div class="page-container row-fluid">

    <jsp:include page="menu.jsp" flush="true"/>

    <div class="page-content">

        <!-- BEGIN PAGE CONTAINER-->

        <div class="container-fluid">

            <!-- BEGIN PAGE HEADER-->

            <div class="row-fluid">

                <div class="span12">

                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->

                    <h3 class="page-title">

                        Editable Tables
                        <small>editable table samples</small>

                    </h3>

                    <ul class="breadcrumb">

                        <li>

                            <i class="icon-home"></i>

                            <a href="index.html">Home</a>

                            <i class="icon-angle-right"></i>

                        </li>

                        <li>

                            <a href="#">Data Tables</a>

                            <i class="icon-angle-right"></i>

                        </li>

                        <li><a href="#">Editable Tables</a></li>

                    </ul>

                    <!-- END PAGE TITLE & BREADCRUMB-->

                </div>

            </div>

            <!-- END PAGE HEADER-->

            <!-- BEGIN PAGE CONTENT-->

            <div class="row-fluid">

                <div class="span12">

                    <!-- BEGIN EXAMPLE TABLE PORTLET-->

                    <div class="portlet box blue">
                        <div class="portlet-title">
                            <div class="caption"><i class="icon-reorder"></i>会员基本信息</div>
                        </div>
                        <div class="portlet-body form">

                            <!-- BEGIN FORM-->

                            <form action="/admin/member/save" class="form-horizontal" method="post">

                                <input type="hidden" name="id" value="${member.id}"/>

                                <div class="control-group">
                                    <label class="control-label">账号</label>
                                    <div class="controls">
                                        <input type="text" name="account" class="span6 m-wrap" value="${member.account}">
                                        <span class="help-inline">Some hint here</span>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">昵称</label>
                                    <div class="controls">
                                        <input type="text" name="name" class="span6 m-wrap" value="${member.name}">
                                        <span class="help-inline">Some hint here</span>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">邮箱</label>
                                    <div class="controls">
                                        <div class="input-icon left">
                                            <i class="icon-envelope"></i>
                                            <input class="m-wrap " name="email" type="text" value="${member.email}" />
                                        </div>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">所属公司</label>
                                    <div class="controls">
                                        <input type="text" name="company" class="span6 m-wrap" value="${member.company}">
                                        <span class="help-inline">Some hint here</span>
                                    </div>
                                </div>

                                <div class="form-actions">
                                    <button type="submit" class="btn blue">保存</button>
                                    <a class="btn" href="javascript:history.go(-1)">返回</a>
                                </div>

                            </form>
                            <!-- END FORM-->
                        </div>
                    </div>
                    <!-- END EXAMPLE TABLE PORTLET-->
                </div>
            </div>

            <!-- END PAGE CONTENT -->

        </div>

        <!-- END PAGE CONTAINER-->

    </div>

    <!-- END PAGE -->

</div>


<jsp:include page="footer.jsp" flush="true"/>
<script>
    jQuery(document).ready(function () {
        App.init();
        TableManaged.init();
//        Index.initJQVMAP(); // init index page's custom scripts
//        Index.initCalendar(); // init index page's custom scripts
//        Index.initCharts(); // init index page's custom scripts
//        Index.initChat();
//        Index.initMiniCharts();
//        Index.initDashboardDaterange();
//        Index.initIntro();

    });

</script>
</body>
</html>
