package br.com.idealizeme.controller;

/**
 * Created by Andre on 16/12/13.
 */

import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.idealizeme.dao.UserDAO;
import br.com.idealizeme.login.UserSession;
import br.com.idealizeme.model.User;

@Resource
public class UserController {

    private UserDAO dao;
    private Result result;
    private UserSession userSession;

    public UserController(UserDAO dao, Result result, UserSession userSession) {
        this.dao = dao;
        this.result = result;
        this.userSession = userSession;
    }

    @Post
    public void addUserFacebook(String name, String email, String accessToken) {
        User user = new User(name, email, accessToken);
        dao.add(user);
        result.forwardTo(UserController.class).skills();
    }

    public void skills() {

    }

    @Post
    public void addUser(String name, String email, String password) {
        if (dao.validateUserEmail(email)) {
            User user = new User(name, email, password);
            dao.add(user);
            result.forwardTo(UserController.class).skills();
        } else {
            result.include("error", true);
            result.forwardTo(UserController.class).add();
        }

    }

    public void add() {

    }


}
