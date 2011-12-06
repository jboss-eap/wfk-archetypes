#set($symbol_pound='#')
#set($symbol_dollar='$')
#set($symbol_escape='\' )
package ${package}.web;

import ${package}.domain.User;
import ${package}.domain.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("greet")
public class GreetController {

    @Autowired
    private UserDao userDao;

    @RequestMapping(method = RequestMethod.GET)
    public
    @ModelAttribute("message")
    String getInitialMessage() {
        return "Enter a valid name";
    }

    @RequestMapping(method = RequestMethod.POST)
    public
    @ModelAttribute("message")
    String getGreeting(@RequestParam("username") String username) {
        User user = userDao.getForUsername(username);
        if (user != null) {
            return "Hello, " + user.getFirstName() + " " + user.getLastName() + "!";
        } else {
            return "No such user exists! Use 'emuster' or 'jdoe'";
        }
    }
}