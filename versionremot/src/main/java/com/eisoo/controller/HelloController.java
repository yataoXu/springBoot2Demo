package com.eisoo.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class HelloController {
    private static final Logger LOGGER = LoggerFactory.getLogger(HelloController.class);

    @RequestMapping({"/", "/index"})
    public String index() {
        return "index";
    }

    @RequestMapping("/login")
    public String login(HttpServletRequest request, Map<String, Object> map) throws Exception {

        LOGGER.info("HelloController.login");
        Object exception = request.getAttribute("shiroLoginFailure");
        String msg = "";
        if (exception != null) {

            LOGGER.error("异常:{}", exception);
            msg = exception.toString();
        }

        map.put("msg", msg);
        // 此方法不处理登录成功,由shiro进行处理.
        return "login";
    }
}
