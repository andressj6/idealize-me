package br.com.idealizeme.dao;

import br.com.caelum.vraptor.ioc.Component;
import br.com.idealizeme.model.Skill;
import org.hibernate.Session;

/**
 * Created by guilherme on 16/12/13.
 */
@Component
public class SkillDAO extends GenericDAO<Skill> {

    public SkillDAO(Session session){
        super(session);
    }
}
