<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="header.jsp" flush="true"/>


<body class="page-header-fixed page-full-width">

<div class="header navbar navbar-inverse navbar-fixed-top">

    <!-- BEGIN TOP NAVIGATION BAR -->

    <div class="navbar-inner">

        <div class="container">

            <!-- BEGIN LOGO -->

            <a class="brand" href="index.html">

                <img src="/image/logo.png" alt="logo" />

            </a>

            <!-- END LOGO -->

            <!-- BEGIN HORIZANTAL MENU -->

            <div class="navbar hor-menu hidden-phone hidden-tablet">

                <div class="navbar-inner">

                    <ul class="nav">

                        <li class="visible-phone visible-tablet">

                            <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

                            <form class="sidebar-search">

                                <div class="input-box">

                                    <a href="javascript:;" class="remove"></a>

                                    <input type="text" placeholder="Search..." />

                                    <input type="button" class="submit" value=" " />

                                </div>

                            </form>

                            <!-- END RESPONSIVE QUICK SEARCH FORM -->

                        </li>

                        <li <c:if test="${type == 0}">class="active"</c:if>>
                            <a href="/?type=0">
                                <c:if test="${type == 0}">
                                    <span class="selected"></span>
                                </c:if>
                                供求信息
                            </a>
                        </li>

                        <li <c:if test="${type == 1}">class="active"</c:if>>
                            <a  href="/?type=1">
                                <c:if test="${type == 1}">
                                    <span class="selected"></span>
                                </c:if>
                                招商投资信息
                            </a>

                        </li>

                        <li>
                            <a href="">会员信息</a>
                        </li>
                        <li>
                            <a href="">个人信息管理</a>
                        </li>

                    </ul>

                </div>

            </div>

            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                <img src="/image/menu-toggler.png" alt="" />
            </a>


            <ul class="nav pull-right">

                <li class="dropdown user">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                        <img alt="" src="/image/avatar1_small.jpg" />

                        <span class="username">Bob Nilson</span>

                        <i class="icon-angle-down"></i>

                    </a>

                    <ul class="dropdown-menu">

                        <li><a href="login.html"><i class="icon-key"></i> 注销</a></li>

                    </ul>

                </li>

            </ul>

        </div>

    </div>

</div>


<div class="page-container row-fluid">

    <div class="span12 blog-page">

        <div class="row-fluid">

            <div class="span12 article-block">
                <h1></h1>

                <c:forEach items="${list}" var="item">
                    <div class="row-fluid">

                        <div class="span12 blog-article">

                            <h2><a href="/detail?id=${item.id}&type=${item.type}">${item.title}</a></h2>
                            <div class="blog-img blog-tag-data">

                                <ul class="unstyled inline">

                                    <li><i class="icon-calendar"></i> <fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></li>

                                    <li><i class="icon-comments"></i> <a href="#">${item.member.name}</a></li>

                                </ul>

                            </div>

                            <p>
                                ${item.content}
                            </p>

                            <a class="btn blue" href="/detail?id=${item.id}&type=${item.type}">
                                更多详情
                                <i class="m-icon-swapright m-icon-white"></i>
                            </a>
                            <a class="btn green" href="">
                                我要投标
                                <i class="m-icon-swapright m-icon-white"></i>
                            </a>

                        </div>

                    </div>
                    <hr>
                </c:forEach>

            </div>

        </div>


        <%--分页--%>
        <div class="pagination pagination-centered">

            <ul>

                <c:if test="${page.page > 1}">
                    <li><a href="/?type=${type}&page=${(page.page - 1)}">上一页</a></li>
                </c:if>

                <c:choose>
                    <c:when test="${page.page < 6 || page.pageCount <= 10}">
                        <c:forEach begin="1" end="${page.pageCount < 10 ? page.pageCount : 10}" var="p">
                            <li ${p == page.page ? 'class="active"' : ''}><a href="/?type=${type}&page=${p}">${p}</a></li>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <c:forEach begin="${page.page - 5}" end="${(page.page + 4) < page.pageCount ? (page.page + 4) : page.pageCount }" var="p">
                            <li ${p == page.page ? 'class="active"' : ''}><a href="/?type=${type}&page=${p}">${p}</a></li>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>

                <c:if test="${page.page < page.pageCount}">
                    <li><a href="/?type=${type}&page=${(page.page + 1)}">下一页</a></li>
                </c:if>

            </ul>

        </div>

    </div>

</div>

<jsp:include page="footer.jsp"/>

</body>
</html>
