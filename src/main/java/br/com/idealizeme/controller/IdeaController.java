package br.com.idealizeme.controller;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.idealizeme.dao.IdeaDAO;
import br.com.idealizeme.login.Permission;
import br.com.idealizeme.login.Public;
import br.com.idealizeme.login.UserSession;
import br.com.idealizeme.model.Idea;

import java.util.List;


/**
 * Created by guilherme on 16/12/13.
 */
@Resource
public class IdeaController {

    private IdeaDAO dao;
    private Result result;
    private UserSession userSession;

    public IdeaController(IdeaDAO dao,UserSession userSession, Result result){
        this.dao = dao;
        this.result = result;
        this.userSession = userSession;
    }

    @Path("/idea/new")
    public void newIdea(){
        result.include("user", userSession.getUser());
    }

    @Path("/dashboard")
    public void dashboard(){
        List<Idea> ideaList = dao.getIdeaByUser(userSession.getUser());
        result.include("ideas",ideaList);
        result.include("user", userSession.getUser());
    }

    @Post("/idea/create")
    public void create(Idea idea){
       idea.setOwner(userSession.getUser());
       dao.saveOrUpdate(idea);
    }

}
