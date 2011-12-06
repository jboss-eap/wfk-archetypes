#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.domain;

public interface UserDao {
    User getForUsername(String username);

    void createUser(User user);
}