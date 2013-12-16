package br.com.idealizeme.controller;

/**
 * Created by Andre on 16/12/13.
 */

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.idealizeme.dao.UserDAO;

@Resource
public class UserController {

    private UserDAO dao;
    private Result result;

    public UserController(UserDAO dao, Result result) {
        this.dao = dao;
        this.result = result;
    }
}
