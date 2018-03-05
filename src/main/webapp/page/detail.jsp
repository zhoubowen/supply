<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="header.jsp" flush="true"/>

<body class="page-header-fixed page-full-width">

<div class="header navbar navbar-inverse navbar-fixed-top">

    <%@include file="nav.jsp"%>

</div>


<div class="page-container row-fluid">

    <div class="span12 blog-page">

        <div class="row-fluid">

            <div class="span12 article-block">
                <h1></h1>

                    <div class="row-fluid">

                        <div class="span12 blog-article">

                            <h4>${article.title}</h4>
                            <div class="blog-img blog-tag-data">

                                <ul class="unstyled inline">

                                    <li><i class="icon-calendar"></i> <fmt:formatDate value="${article.createTime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></li>

                                    <li><i class="icon-comments"></i> <a href="#">${article.member.name}</a></li>

                                </ul>

                            </div>

                            <p>
                                ${article.content}
                            </p>

                        </div>

                    </div>
            </div>

        </div>

    </div>

</div>

<%@include file="footer.jsp"%>

</body>
</html>
