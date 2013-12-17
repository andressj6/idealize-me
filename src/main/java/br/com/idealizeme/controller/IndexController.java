package br.com.idealizeme.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

import br.com.caelum.vraptor.Resource;

/**
 * Created by guilherme on 16/12/13.
 */
@Resource
public class IndexController {

    private Result result;

    public IndexController( Result result){
        this.result = result;
    }

    @Path("/")
    public void index(){
    }

}
