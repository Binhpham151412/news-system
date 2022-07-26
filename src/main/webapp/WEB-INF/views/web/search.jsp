<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Báo Mới - Tin tức nóng nhất, tin tức mới nhất cập nhật liên tục 24H - BAOMOI.COM</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value='/template/web/lib/bootstrap/css/bootstrap.min.css'/>">
    <!-- End Bootstrap CSS -->

    <!-- Custom Fonts -->
    <link href="<c:url value='/template/web/css/fontawesome-all.min.css'/>" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<c:url value='/template/web/lib/chart/all.min.css'/>" />
    <link rel="stylesheet" href="<c:url value='/template/web/lib/slick/css/slick.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/web/lib/slick/css/slick-theme.css'/>">
    <link rel="stylesheet" href="<c:url value='/template/web/css/style.css'/>">
</head>
<body>

  <%@ include file="./_header.jsp" %>

    <section class="mt-5">
        <div class="container">
            <div class="row">
                <div class="col-8">
                    <div class="row">
                        <div class="col-12">
                            <ul class="list-group list-group-flush">
                            	<c:if test="${listArticle.size() > 0}">
	                            	<c:forEach items="${listArticle}" var="article">
		                                <li class="list-group-item pl-0">
		                                    <div class="row">
		                                        <div class="col-3">
		                                            <a href="${pageContext.request.contextPath}/bai-viet?id=${article.id}" class="nav-link p-0">
		                                                <img src="<c:url value='/template/photo/'/>${article.photo }" alt="#" class="img img-fluid rounded">
		                                            </a>
		                                        </div>
		                                        <div class="col-9">
		                                            <h4 class="mb-0">
		                                                <a href="${pageContext.request.contextPath}/bai-viet?id=${article.id}" class="text-dark nav-link p-0">${article.title}</a>
		                                            </h4>
		                                            <div>
		                                                <span class="ml-3"><i class="fas fa-certificate"></i> ${ article.category.name }</span>
		                                                <span class="ml-3"><i class="far fa-clock"></i> ${ article.createDate }</span>
		                                                <span class="ml-3"><i class="fas fa-eye"></i> ${ article.view }</span>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </li>
	         						</c:forEach>
         						   	</c:if>
         							<c:if test="${listArticle.size() == 0}"><h3>Không tìm thấy bài viết</h3></c:if>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="row">
                        <div class="col-12">
                            <ul class="list-group list-group-flush">
                            	<c:forEach items="${findTopByCreateDate}" var="articleByCreateDate">
	                                <li class="list-group-item pl-0">
	                                    <div class="row">
	                                        <div class="col-4">
	                                            <a href="${pageContext.request.contextPath}/bai-viet?id=${articleByCreateDate.id}" class="nav-link p-0">
	                                                <img src="<c:url value='/template/photo/'/>${articleByCreateDate.photo }" alt="#" class="img img-fluid rounded">
	                                            </a>
	                                        </div>
	                                        <div class="col-8">
	                                            <h6 class="mb-0">
	                                                <a href="${pageContext.request.contextPath}/bai-viet?id=${articleByCreateDate.id}" class="text-dark nav-link p-0">${articleByCreateDate.title}</a>
	                                            </h6>
	                                        </div>
	                                    </div>
	                                </li>
                               	</c:forEach>
                            </ul>
                        </div>
                        <div class="col-12 mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <iframe height="720" src="http://www.tygia.com/api.php?cols=1&title=1&chart=1&gold=1&rate=1&expand=1&color=1D4C75&nganhang=VIETCOM&ngoaite=usd,jpy,chf,eur,gbp,aud&fontsize=80&change=0&css=%23gold_tb%7Bdisplay%3Anone%7D" frameborder="0"></iframe>
                                </div>
                            </div>
                        </div>
                        <c:forEach items="${listPromotion}" var="promotion">
	                        <div class="col-12 mb-3">
	                            <div class="card">
	                                <div class="card-body">
	                                    <a href="${promotion.url}">
	                                        <img src="<c:url value='/template/photo/'/>${promotion.photo }" class="img img-fluid" width="100%">
	                                    </a>
	                                </div>
	                            </div>
	                        </div>
                        </c:forEach>                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="mt-4 mb-4">
        <div class="container">
            <div class="text-center page-info-lite page-info">
                <div class="row">
                    <div class="col-4">
                        <div class="iconbox-wrap">
                            <div class="iconbox">
                                <div class="iconbox-wrap-icon">
                                    <i class="far fa-file-alt"></i>
                                </div>
                                <div class="iconbox-wrap-content">
                                    <h2 class="mb-0">8</h2>
                                    <div class="iconbox-wrap-text">Việc làm</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="iconbox-wrap">
                            <div class="iconbox">
                                <div class="iconbox-wrap-icon">
                                    <i class="fas fa-users"></i>
                                </div>
                                <div class="iconbox-wrap-content">
                                    <h2 class="mb-0">16</h2>
                                    <div class="iconbox-wrap-text">Người dùng</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="iconbox-wrap">
                            <div class="iconbox">
                                <div class="iconbox-wrap-icon">
                                    <i class="fas fa-map"></i>
                                </div>
                                <div class="iconbox-wrap-content">
                                    <h2 class="mb-0">91+</h2>
                                    <div class="iconbox-wrap-text">Địa điểm</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer-content">
        <div class="text-center">
            <span>© 2021 Việc làm. Đã đăng ký Bản quyền.</span>
        </div>
    </footer>


    <script src="<c:url value='/template/web/lib/jquery/jquery-3.3.1.slim.min.js'/>"></script>
    <script>
        window.jQuery || document.write('<script src="/docs/4.0/assets/js/vendor/jquery-slim.min.js"><\/script>')
    </script>
    <script src="<c:url value='/template/web/lib/popper/popper.min.js'/>"></script>
    <script src="<c:url value='/template/web/lib/bootstrap/js/bootstrap.min.js'/>"></script>
<%--    <script type="text/javascript" src="<c:url value='/template/web/lib/chart/shieldui-all.min.js'/>"></script>--%>
    <script src="<c:url value='/template/web/lib/slick/js/slick.min.js'/>"></script>
    <script src="<c:url value='/template/web/js/chart.js'/>"></script>
    <script src="<c:url value='/template/web/js/style.js'/>"></script>
</body>

</html>