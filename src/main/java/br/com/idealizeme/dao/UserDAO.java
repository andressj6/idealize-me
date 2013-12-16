package br.com.idealizeme.dao;

import br.com.caelum.vraptor.ioc.Component;
import br.com.idealizeme.model.User;
import org.hibernate.Session;

/**
 * Created by Andre on 16/12/13.
 */
@Component
public class UserDAO extends GenericDAO<User> {

    public UserDAO(Session session) {
        super(session);
    }
}
