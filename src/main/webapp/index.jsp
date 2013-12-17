<%@include file="WEB-INF/jsp/templates/header.jsp"%>
<div class="jumbotron" style="text-align: center">
    <div class="container" style="background-image: ">
        <div id="capaEsquerda">
            <h1>Idealize.Me</h1>

            <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
            </p>
        </div>
        <div id="capaDireita">
            <ul class="nav nav-tabs">
                <li><a href="#home" data-toggle="tab">Login</a></li>
                <li><a href="#profile" data-toggle="tab">Cadastrar</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="home">
                    <form id="loginUser" action="POST" >
                        Efetue o login para entrar no site 
                        <div class="form-group">
                            <label for="exampleInputEmail1">E-mail</label>
                            <input type="text" class="form-control" id="loginEmail" placeholder="Login">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Senha</label>
                            <input type="password" class="form-control" id="loginSenha" placeholder="Senha" pa>
                        </div>

                        <button type="button" class="btn btn-primary">Login</button>
                    </form>
                </div>
                <div class="tab-pane" id="profile">
                    <h2>Cadastre-se</h2>
                    <form id="cadastroUser" action="POST" >
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nome</label>
                            <input type="text" class="form-control" id="cadLogin" placeholder="Login">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">E-mail</label>
                            <input type="email" class="form-control" id="cadEmail1" placeholder="E-mail">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Senha</label>
                            <input type="password" class="form-control" id="cadSenha" placeholder="Senha">
                        </div>
                        <button type='submit' class="btn btn-primary" data-loading-text="Salvando" >Cadastrar</button>
                        
                    </form>
                </div>
            </div>

        </div>
        <%@include file="WEB-INF/jsp/templates/footer.jsp"%>