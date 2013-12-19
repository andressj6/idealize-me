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
                        <li><a href="#">Home</a></li>
                        <c:if test="${user == null}" >
                            <li><a href="<c:url value='/signup'/>">Cadastrar</a></li>
                        </c:if>
                        <c:if test="${user != null}" >
                            <li class="active"><a href="<c:url value='/dashboard'/>">Minha Conta</a></li>
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

    <div class="content container">
        <hr>
        <h1>Minha Conta</h1>
        <hr>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-md-offset-2">
                    <a class="btn btn-primary btn-lg" href="<c:url value="/idea/new"/>">Nova Ideia</a>
                </div>
                <div class="col-md-3 col-md-offset-2">
                    <a class="btn btn-primary btn-lg">Quero Ajudar</a>
                </div>
            </div>
        </div>
        <hr>
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#MyIdeas" data-toggle="tab">Minhas ideias</a></li>
            <li><a href="#Helping" data-toggle="tab">Ideias que participo</a></li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane active" id="MyIdeas">
                <table class="table">
                   <thead>
                    <th>Nome</th>
                    <th>Marca<th>
                   </thead>
                   <tbody>
                   <c:forEach items="${ideas}" var="idea">
                    <tr>
                        <td>idea.ideaName</td>
                        <td>idea.productBrand</td>
                    </tr>
                   </c:forEach>
                   </tbody>
                </table>

            </div>
            <div class="tab-pane" id="Helping">...</div>

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