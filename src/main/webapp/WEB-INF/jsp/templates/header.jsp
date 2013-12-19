<%@page pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Idealize-Me</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-theme.min.css" />"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.css" />"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/styles.css" />"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/jquery.steps.css" />"/>
        <script type="text/javascript" src="<c:url value="/js/jquery.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/bootstrap.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/fbconnect.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/jquery.steps.js" />"></script>
        <script>
            $('#myTab a').click(function(e) {
                e.preventDefault();
                $(this).tab('show');
            });
            $(function () {
                $('#myTab a:first').tab('show')
            })
            $(function ()
            {
                $("#form").steps({
                    headerTag: "h2",
                    bodyTag: "fieldset",
                    transitionEffect: "slideLeft",
                    stepsOrientation: "vertical",
                    onFinished: function(event, currentIndex){
                        var form = $(this);

                        form.submit();
                    }
                });
            });
        </script>
    </head>
    <body>
        <div class="content">
