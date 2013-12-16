package br.com.idealizeme.dao;

import br.com.caelum.vraptor.ioc.Component;
import br.com.idealizeme.model.Idea;
import org.hibernate.Session;

/**
 * Created by guilherme on 16/12/13.
 */
@Component
public class IdeaDAO extends GenericDAO<Idea> {

    public IdeaDAO(Session session){
        super(session);
    }
}
