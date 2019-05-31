package com.eisoo;

import com.eisoo.model.MonthRange;
import com.eisoo.model.User;
import com.eisoo.service.IMonthRangeService;
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

    @Autowired
    private IMonthRangeService monthRangeService;

    @Test
    public void testUserService() {
        User user = userService.checkExistByUserName("admin");
        Assert.assertEquals(user.getUserName(), "admin");
    }

    @Test
    public void testMonthRangeService() {
        MonthRange sportMonthRange = monthRangeService.getMonthRangeByCat("sport");
        Assert.assertEquals(sportMonthRange.getCat(), "sport");
    }


}