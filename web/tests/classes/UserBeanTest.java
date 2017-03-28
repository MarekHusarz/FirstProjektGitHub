package classes;

import org.junit.jupiter.api.Test;



import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by Lenovo on 2017-03-26.
 */
class UserBeanTest {
    @Test
    void getUsername() {
        UserBean user = new UserBean("Gary");
        String text = user.getUsername();
        assertEquals("Gary", text);

    }

}