package br.com.idealizeme.dao;

import br.com.caelum.vraptor.ioc.Component;
import br.com.idealizeme.model.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 * Created by Andre on 16/12/13.
 */
@Component
public class UserDAO extends GenericDAO<User> {

    public UserDAO(Session session) {
        super(session);
    }

    public User getUserByCredentials(String email, String password) {
        Criteria c = session.createCriteria(User.class);
        c.add(Restrictions.eq("email", email)).add(Restrictions.eq("password", password));
        User u = (User) c.uniqueResult();
        return u;
    }

    public boolean validateUserEmail(String email) {
        Query q = session.createQuery("from User u where u.email = :email");
        q.setParameter("email", email);
        return q.uniqueResult() == null;
    }

}
