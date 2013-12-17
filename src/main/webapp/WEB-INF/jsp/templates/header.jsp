<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Idealize-Me</title>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-theme.min.css" />"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.css" />"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/styles.css" />"/>
        <script type="text/javascript" src="<c:url value="/js/jquery.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/bootstrap.js" />"></script>
        
        <script>
            $('#myTab a').click(function(e) {
                e.preventDefault();
                $(this).tab('show');
            });
        </script>
    </head>
    <body>
        <div class="content">