package br.com.idealizeme.dao;

import br.com.caelum.vraptor.ioc.Component;
import br.com.idealizeme.model.Idea;
import br.com.idealizeme.model.User;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by guilherme on 16/12/13.
 */
@Component
public class IdeaDAO extends GenericDAO<Idea> {

    public IdeaDAO(Session session){
        super(session);
    }

    public List<Idea> getIdeaByUser(User user){

        Query q = session.createQuery("from Idea i where i.owner.id = "+user.getId());

        List<Idea> list = q.list();


        return list;
    }
}
