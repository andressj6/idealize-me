<%@include file="../templates/header.jsp" %>

<div id="wrap">
    <div class="row">
        <header class="navbar navbar-inverse navbar-fixed-top ideaMeNav" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="../" class="navbar-brand">Idealize.Me</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <c:if test="${user == null}" >
                            <li><a href="<c:url value='/signup'/>">Cadastrar</a></li>
                        </c:if>
                        <c:if test="${user != null}" >
                            <li><a href="<c:url value='/dashboard'/>">Minha Conta</a></li>
                        </c:if>
                    </ul>
                    <c:if test="${user == null}" >
                        <form class="navbar-form navbar-right" role="form" method="POST" action="<c:url value="/login/doLogin"/>">
                            <div class="form-group">
                                <input type="text" name="email" placeholder="E-Mail" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" placeholder="Senha" class="form-control"/>
                            </div>
                            <button type="submit" class="btn btn-success">Login</button>
                        </form>
                    </c:if>
                    <c:if test="${user != null}" >
                        <form class="navbar-form navbar-right" role="form" method="POST" action="<c:url value="/logout"/>">
                            <label style="color: #ffffff">Olá, ${user.name}</label>
                            <button type="submit" class="btn btn-danger">Logout</button>
                        </form>
                    </c:if>
                </div>

            </div>
        </header>
    </div>

    <div class="row">
        <div class="ideaMeHeader" id="content">
            <div class="container">
                <div>
                    <h1>Idealize.Me</h1>
                    <p>Crie suas ideias e encontre pessoas que irao ajudar ela sair do papel.</p>
                </div>
            </div>

        </div>
    </div>

    <div class="container ideaMeMarketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" data-src="holder.js/140x140" alt="Generic placeholder image">
                <h2>Heading</h2>
                <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
                <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <img class="img-circle" data-src="holder.js/140x140" alt="Generic placeholder image">
                <h2>Heading</h2>
                <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
                <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <img class="img-circle" data-src="holder.js/140x140" alt="Generic placeholder image">
                <h2>Heading</h2>
                <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
        </div>
    </div>
    <div id="push"></div>
</div>
<!-- FOOTER -->
<hr>
<div id="footer" class="container">
    <p>&copy; 2013 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</div>


<%@include file="../templates/footer.jsp" %>

<%--&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: guilherme--%>
  <%--Date: 16/12/13--%>
  <%--Time: 17:56--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@include file="/WEB-INF/jsp/templates/header.jsp"%>--%>
<%--<div class="jumbotron" style="text-align: center">--%>
    <%--<div class="container" style="background-image: ">--%>
        <%--<div id="capaEsquerda">--%>
            <%--<h1>Idealize.Me</h1>--%>

            <%--<p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."--%>
            <%--</p>--%>
        <%--</div>--%>
        <%--<div id="capaDireita">--%>
            <%--<ul class="nav nav-tabs">--%>
                <%--<li><a href="#home" data-toggle="tab">Login</a></li>--%>
                <%--<li><a href="#profile" data-toggle="tab">Cadastrar</a></li>--%>
            <%--</ul>--%>

            <%--<!-- Tab panes -->--%>
            <%--<div class="tab-content">--%>
                <%--<div class="tab-pane active" id="home">--%>
                    <%--<form id="loginUser" method="POST" action="<c:url value="/login/doLogin"/>" >--%>
                    <%--Efetue o login para entrar no site--%>
                    <%--<div class="form-group">--%>
                        <%--<label for="exampleInputEmail1">E-mail</label>--%>
                        <%--<input type="text" name="email" class="form-control" id="loginEmail" placeholder="Login">--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                        <%--<label for="exampleInputEmail1">Senha</label>--%>
                        <%--<input type="password" name="password" class="form-control" id="loginSenha" placeholder="Senha" pa>--%>
                    <%--</div>--%>

                    <%--<button type="submit" class="btn btn-primary">Login</button>--%>
                    <%--</form>--%>
                <%--</div>--%>
                <%--<div class="tab-pane" id="profile">--%>
                    <%--<h2>Cadastre-se</h2>--%>
                    <%--<form id="cadastroUser" method="POST" action="<c:url value="/user/addUser"/>" >--%>
                    <%--<div class="form-group">--%>
                        <%--<label for="exampleInputEmail1">Nome</label>--%>
                        <%--<input type="text" name="name" class="form-control" id="cadLogin" placeholder="Login">--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                        <%--<label for="exampleInputEmail1">E-mail</label>--%>
                        <%--<input type="email" name="email" class="form-control" id="cadEmail1" placeholder="E-mail">--%>
                    <%--</div>--%>

                    <%--<div class="form-group">--%>
                        <%--<label for="exampleInputEmail1">Senha</label>--%>
                        <%--<input type="password" name="password" class="form-control" id="cadSenha" placeholder="Senha">--%>
                    <%--</div>--%>
                    <%--<button type='submit' class="btn btn-primary" data-loading-text="Salvando" >Cadastrar</button>--%>

                    <%--</form>--%>
                <%--</div>--%>
            <%--</div>--%>

        <%--</div>--%>
<%--<%@include file="/WEB-INF/jsp/templates/footer.jsp"%>--%>