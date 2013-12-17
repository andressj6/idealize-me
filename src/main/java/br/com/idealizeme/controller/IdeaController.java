package br.com.idealizeme.controller;

import br.com.caelum.vraptor.Result;
import br.com.idealizeme.dao.IdeaDAO;

import javax.annotation.Resource;

/**
 * Created by guilherme on 16/12/13.
 */
@Resource
public class IdeaController {

    private IdeaDAO dao;
    private Result result;

    public IdeaController(IdeaDAO dao, Result result){
        this.dao = dao;
        this.result = result;
    }

    public void dashboard() {

    }
}
