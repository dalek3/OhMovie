<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Oh!Movie</title>
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value='/resources/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<c:url value='/resources/vendor/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<c:url value='/resources/dist/css/star/fontawesome-stars.css'/>">

    <!-- Custom CSS -->
    <link href="<c:url value='/resources/dist/css/list.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/dist/css/style.css'/>" rel="stylesheet">

</head>
<body>
    <div class="wrap">
        <header>
            <nav class="navbar navbar-default top-fixed">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1"
                            aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/">Oh!Movie</a>
                    </div>
        
                    <div class="collapse navbar-collapse" id="navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="/category">카테고리</a></li>
                            <li><a href="/rating">평가하기</a></li>
                            
                           	<sec:authorize access="isAnonymous()">
	                            <li>
                                	<a href="/auth/login">로그인/회원가입</a>
                            	</li>
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
								<li class="dropdown">
	                                <a class="dropdown-toggle" data-toggle="dropdown">
	                                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
	                                </a>
	                                <ul class="dropdown-menu dropdown-user">
	                                    <li><a href="/profile/"><i class="fa fa-user fa-fw"></i> 마이페이지</a></li>
	                                    <li><a href="/setting"><i class="fa fa-gear fa-fw"></i> 설정</a></li>
	                                    <li class="divider"></li>
	                                    <li>
	                                    		<!-- <a href="/customLogout"><i class="fa fa-sign-out fa-fw"></i> 로그아웃</a> -->
	                                    	<form action="/logout" method="post">
												<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
												<button><i class="fa fa-sign-out fa-fw"></i>로그아웃</button>
											</form>
										</li>
	                                </ul>
                            	</li>
							</sec:authorize>

                            
                        </ul>
                        <ul class="nav navbar-nav">
                            <li class="navbar-form">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control search" placeholder="Search">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default btn-search">
                                            <i class="fa fa-microphone"></i>
                                        </button>
                                    </span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>