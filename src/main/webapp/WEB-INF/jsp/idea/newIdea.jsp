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
    <div class="content">
        <div class="container">
            <hr>
            <h1>Nova Ideia</h1>
            <hr>

            <form method="POST" id="form" action="<c:url value="/idea/create"/>">

                <h2>Ideia</h2>
                <fieldset>
                    <legend>Sobre a idéia</legend>
                    <div class="form-group">
                        <label for="ideaPitch">Fale sobre sua ideia em 140 caracteres</label>
                        <textarea id="ideaPitch" name="idea.ideaPitch" class="form-control" rows="4" cols="100" maxlength="140" placeholder="Pitch"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="ideaName">Nome da ideia</label>
                        <input id="ideaName" name="idea.ideaName" type="text" class="form-control" placeholder="Nome da idea"/>
                    </div>
                    <div class="form-group">
                        <label for="ideaProblem">Qual problema que sua ideia quer resolver</label>
                        <textarea id="ideaProblem" name="idea.ideaProblem" class="form-control" rows="4" cols="100" placeholder="Problema"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="ideaSolution">Qual a solucao que sua ideia da para o problema</label>
                        <textarea id="ideaSolution" name="idea.ideaSolution" class="form-control" rows="4" cols="100" placeholder="Solucao"></textarea>
                    </div>
                </fieldset>

                <h2>Mercado</h2>
                <fieldset>
                    <legend>Sobre o mercado</legend>
                    <div class="form-group">
                        <label for="marketTarget">Mercado Alvo</label>
                        <textarea id="marketTarget" name="idea.marketTarget" class="form-control" rows="4" cols="100" placeholder="Mercado Alvo"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="marketCompetion">Concorrência</label>
                        <textarea id="marketCompetion" name="idea.marketCompetion" class="form-control" rows="4" cols="100" placeholder="Concorrência"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="marketAdvantage">Vantagem da sua idéia</label>
                        <textarea id="marketAdvantage" name="idea.marketAdvantage" class="form-control" rows="4" cols="100" placeholder="Vantagens"></textarea>
                    </div>
                </fieldset>

                <h2>Produto</h2>
                <fieldset>
                    <legend>Sobre o produto</legend>
                    <div class="form-group">
                        <label for="productUseCases">O que é e como vai funcionar o Produto/ Serviço</label>
                        <textarea id="productUseCases" name="idea.productUseCases" class="form-control" rows="4" cols="100" placeholder="Casos de uso"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="productFeatures">Caracteristicas do Produto/ Serviço</label>
                        <textarea id="productFeatures" name="idea.productFeatures" class="form-control" rows="4" cols="100" placeholder="Caracteristicas"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="productBrand">Qual é sua marca e comente sobre</label>
                        <textarea id="productBrand" name="idea.productBrand" class="form-control" rows="4" cols="100" placeholder="Marca"></textarea>
                    </div>
                </fieldset>

                <h2>Negocio</h2>
                <fieldset>
                    <legend>Sobre o negócio</legend>
                    <div class="form-group">
                        <label for="businessMonetization">Como você vai gerar receita?</label>
                        <textarea id="businessMonetization" name="idea.businessMonetization" class="form-control" rows="4" cols="100" placeholder="Monetização"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="businessDistribution">Como você irá distribuir o seu produto?</label>
                        <textarea id="businessDistribution" name="idea.businessDistribution" class="form-control" rows="4" cols="100" placeholder="Distribuição"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="businessFinancials">Quais os gastos que serão necessários para executar a idéia</label>
                        <textarea id="businessFinancials" name="idea.businessFinancials" class="form-control" rows="4" cols="100" placeholder="Financeiro"></textarea>
                    </div>
                </fieldset>

                <h2>Execucao</h2>
                <fieldset>
                    <legend>Sobre a execução</legend>
                    <div class="form-group">
                        <label for="executionPeople">De que pessoas você precisa? (Coloque a área separado por virgula, ex. Programador, Designer)</label>
                        <textarea id="executionPeople" name="idea.executionPeople" class="form-control" rows="4" cols="100" placeholder="Pessoas"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="executionMilestones">Coloque seus marcos e próximos passos( ex. Plano de negócios em 4 mesês, Desenvolvimento pronto em 5 mesês ):</label>
                        <textarea id="executionMilestones" name="idea.executionMilestones" class="form-control" rows="10" cols="100" placeholder="Execução"></textarea>
                    </div>
                </fieldset>
            </form>
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