#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.domain;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserDaoImpl implements UserDao {

    @Autowired
    private EntityManager entityManager;

    @Transactional
    public User getForUsername(String username) {
        try {
            Query query = entityManager
                    .createQuery("select u from User u where u.username = ?");
            query.setParameter(1, username);
            return (User) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    @Transactional
    public void createUser(User user) {
        entityManager.persist(user);
    }

}