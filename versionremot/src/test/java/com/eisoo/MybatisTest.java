package com.eisoo;

import com.eisoo.model.User;
import com.eisoo.service.IUserService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = VersionRemoteApplication.class)
public class MybatisTest {

    @Autowired
    private IUserService userService;

    @Test
    public void testFindUserByUsername() {
        User user = userService.findUserByUsername("brucelee");
        Assert.assertEquals(user.getDescription(), "龙的传人");
    }
}