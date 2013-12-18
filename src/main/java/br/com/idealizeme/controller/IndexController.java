package br.com.idealizeme.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

import br.com.caelum.vraptor.Resource;
import br.com.idealizeme.login.UserSession;

/**
 * Created by guilherme on 16/12/13.
 */
@Resource
public class IndexController {

    private Result result;
    private UserSession userSession;

    public IndexController( Result result, UserSession userSession){
        this.userSession = userSession;
        this.result = result;
    }

    @Path("/")
    public void index(){
        result.include("user", userSession.getUser());
    }

    @Path("/signup")
    public void signup(){
        result.include("user", userSession.getUser());
    }

}
