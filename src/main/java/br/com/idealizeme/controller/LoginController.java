package br.com.idealizeme.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.idealizeme.dao.UserDAO;
import br.com.idealizeme.login.Public;
import br.com.idealizeme.login.UserSession;
import br.com.idealizeme.model.User;

/**
 * Created by Andre on 16/12/13.
 */
@Resource
@Public
@Path("/login")
public class LoginController {

    private Result result;
    private UserSession userSession;
    private UserDAO dao;

    public LoginController(UserDAO dao, UserSession userSession, Result result) {
        this.dao = dao;
        this.userSession = userSession;
        this.result = result;
    }

    public void login() {

    }

    @Path("/")
    public void index() {

    }

    @Post
    public void doLogin(String email, String password) {
        User user = dao.getUserByCredentials(email, password);
        if (user != null) {
            userSession.setUser(user);
            result.forwardTo(IdeaController.class).dashboard();
        } else {
            result.include("error", true);
            result.forwardTo(LoginController.class).login();
        }
    }

    @Post
    public void doFacebookLogin(String nome, String email, String accessToken) {
        User user = dao.getUserByCredentials(email, accessToken);
        if (user != null) {
            userSession.setUser(user);
            result.forwardTo(IdeaController.class).dashboard();
        } else {
            result.forwardTo(UserController.class).addUserFacebook(nome, email, accessToken);
        }
    }


}
