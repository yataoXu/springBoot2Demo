package com.eisoo.controller;

import com.eisoo.model.User;
import com.eisoo.service.IUserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/user")
public class UserController {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private IUserService userService;

    @RequestMapping("/findUserByUsername")
    @ResponseBody
    public User findUserByUsername(String username) {
        LOGGER.info("username = {}", username);
        User user = userService.findUserByUsername(username);
        return user;
    }


    /**
     * 用户添加;
     *
     * @return
     */
    @RequestMapping("/userAdd")
    @RequiresPermissions("user:add")//权限管理;
    public String userAdd() {
        return "user/userAdd";
    }

    /**
     * 用户删除;
     *
     * @return
     */
    @RequestMapping("/userDel")
    @RequiresPermissions("user:del")//权限管理;
    public String userDel() {
        return "user/userDel";
    }
}
