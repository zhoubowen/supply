<%--
供求
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" flush="true"/>

<body class="page-header-fixed">

<jsp:include page="top.jsp" flush="true"/>

<div class="page-container row-fluid">

    <jsp:include page="menu.jsp" flush="true"/>

    <div class="page-content">

        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <div id="portlet-config" class="modal hide">

            <div class="modal-header">

                <button data-dismiss="modal" class="close" type="button"></button>

                <h3>portlet Settings</h3>

            </div>

            <div class="modal-body">

                <p>Here will be a configuration form</p>

            </div>

        </div>

        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

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

                    <div class="portlet box light-grey">

                        <div class="portlet-title">

                            <div class="caption"><i class="icon-globe"></i>Managed Table</div>

                            <div class="tools">

                                <a href="javascript:;" class="collapse"></a>

                                <a href="#portlet-config" data-toggle="modal" class="config"></a>

                                <a href="javascript:;" class="reload"></a>

                                <a href="javascript:;" class="remove"></a>

                            </div>

                        </div>

                        <div class="portlet-body">

                            <div class="clearfix">

                                <div class="btn-group">

                                    <button id="sample_editable_1_new" class="btn green">

                                        Add New <i class="icon-plus"></i>

                                    </button>

                                </div>

                                <div class="btn-group pull-right">

                                    <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="icon-angle-down"></i>

                                    </button>

                                    <ul class="dropdown-menu pull-right">

                                        <li><a href="#">Print</a></li>

                                        <li><a href="#">Save as PDF</a></li>

                                        <li><a href="#">Export to Excel</a></li>

                                    </ul>

                                </div>

                            </div>

                            <table class="table table-striped table-bordered table-hover" id="sample_1">

                                <thead>

                                <tr>

                                    <th style="width:8px;"><input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes" /></th>

                                    <th>Username</th>

                                    <th class="hidden-480">Email</th>

                                    <th class="hidden-480">Points</th>

                                    <th class="hidden-480">Joined</th>

                                    <th ></th>

                                </tr>

                                </thead>

                                <tbody>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>shuxer</td>

                                    <td class="hidden-480"><a href="mailto:shuxer@gmail.com">shuxer@gmail.com</a></td>

                                    <td class="hidden-480">120</td>

                                    <td class="center hidden-480">12 Jan 2012</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>looper</td>

                                    <td class="hidden-480"><a href="mailto:looper90@gmail.com">looper90@gmail.com</a></td>

                                    <td class="hidden-480">120</td>

                                    <td class="center hidden-480">12.12.2011</td>

                                    <td ><span class="label label-warning">Suspended</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>userwow</td>

                                    <td class="hidden-480"><a href="mailto:userwow@yahoo.com">userwow@yahoo.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">12.12.2012</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>user1wow</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">12.12.2012</td>

                                    <td ><span class="label label-inverse">Blocked</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>restest</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">12.12.2012</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>foopl</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">19.11.2010</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>weep</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">19.11.2010</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>coop</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">19.11.2010</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>pppol</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">19.11.2010</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>test</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">19.11.2010</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>userwow</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">12.12.2012</td>

                                    <td ><span class="label label-inverse">Blocked</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>test</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">12.12.2012</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>goop</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">12.11.2010</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>weep</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">15.11.2011</td>

                                    <td ><span class="label label-inverse">Blocked</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>toopl</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">16.11.2010</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>userwow</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">9.12.2012</td>

                                    <td ><span class="label label-inverse">Blocked</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>tes21t</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">14.12.2012</td>

                                    <td ><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>fop</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">13.11.2010</td>

                                    <td ><span class="label label-warning">Suspended</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>kop</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">17.11.2010</td>

                                    <td><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>vopl</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">19.11.2010</td>

                                    <td><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>userwow</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">12.12.2012</td>

                                    <td><span class="label label-inverse">Blocked</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>wap</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">12.12.2012</td>

                                    <td><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>test</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">19.12.2010</td>

                                    <td><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>toop</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">17.12.2010</td>

                                    <td><span class="label label-success">Approved</span></td>

                                </tr>

                                <tr class="odd gradeX">

                                    <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                    <td>weep</td>

                                    <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                    <td class="hidden-480">20</td>

                                    <td class="center hidden-480">15.11.2011</td>

                                    <td><span class="label label-success">Approved</span></td>

                                </tr>

                                </tbody>

                            </table>

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