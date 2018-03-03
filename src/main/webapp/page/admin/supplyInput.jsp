<%--
供求编辑
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<styl>
    #editor {overflow:scroll; max-height:300px}
</styl>
<jsp:include page="header.jsp" flush="true"/>

<body class="page-header-fixed">

<jsp:include page="top.jsp" flush="true"/>

<div class="page-container row-fluid">

    <jsp:include page="menu.jsp" flush="true"/>

    <div class="page-content">

        <div class="container-fluid">

            <div class="row-fluid">
                <div class="span12">
                    <ul class="breadcrumb">
                        <li>
                            <i class="icon-home"></i>
                            <a href="#">功能</a>
                            <i class="icon-angle-right"></i>
                        </li>
                        <li>
                            <a href="/admin/supply/index?type=0">供求信息</a>
                            <i class="icon-angle-right"></i>
                        </li>
                        <li><a href="#">供求信息编辑</a></li>
                    </ul>
                </div>
            </div>
            <div class="row-fluid">

                <div class="span12">

                    <div class="portlet box blue">
                        <div class="portlet-title">
                            <div class="caption"><i class="icon-reorder"></i>供求基本信息</div>
                        </div>
                        <div class="portlet-body form">

                            <form action="/admin/member/save" class="form-horizontal" method="post">

                                <input type="hidden" name="id" value="${member.id}"/>

                                <div class="control-group">
                                    <label class="control-label">标题</label>
                                    <div class="controls">
                                        <input type="text" name="account" class="span6 m-wrap" value="${member.account}">
                                        <span class="help-inline">Some hint here</span>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">主图</label>
                                    <div class="controls">
                                        <input type="text" name="name" class="span6 m-wrap" value="${member.name}">
                                        <span class="help-inline">Some hint here</span>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">所属公司</label>
                                    <div class="controls">
                                        <textarea id="editor_id" name="content" style="width:700px;height:300px;">
                                        &lt;strong&gt;HTML内容&lt;/strong&gt;
                                        </textarea>
                                    </div>
                                </div>

                                <div class="form-actions">
                                    <button type="submit" class="btn blue">保存</button>
                                    <a class="btn" href="javascript:history.go(-1)">返回</a>
                                </div>

                            </form>

                        </div>
                    </div>

                </div>
            </div>

        </div>

    </div>

</div>


<jsp:include page="footer.jsp" flush="true"/>
<script>
    jQuery(document).ready(function () {
        App.init();
        TableManaged.init();

        KindEditor.ready(function(K) {
            window.editor = K.create('#editor_id', {
                uploadJson : '/upload/uploadForEditor',
                fileManagerJson : '/kindeditor/jsp/file_manager_json.jsp',
                allowFileManager : true,
                filePostName : 'file'
            });

        });
    });

</script>
</body>
</html>
