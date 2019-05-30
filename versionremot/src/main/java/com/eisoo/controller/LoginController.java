package com.eisoo.controller;


import com.alibaba.fastjson.JSON;

import com.eisoo.DTO.ResultDTO;
import com.eisoo.DTO.UserDTO;
import com.eisoo.DTO.UserLoginDTO;
import com.eisoo.common.util.ValidatorUtils;
import com.eisoo.model.User;
import com.eisoo.service.IUserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
public class LoginController {

    @Autowired
    private IUserService userService;

    @RequestMapping("login")
    public ResultDTO login(UserLoginDTO userLoginDTO){
        log.info("登录参数:" + JSON.toJSONString(userLoginDTO));
        ResultDTO<UserDTO> resultDto = new ResultDTO<>();
        try {
            ValidatorUtils.validate(userLoginDTO);
            User user = userService.checkExistByUserName(userLoginDTO.getUserName());
            if (user == null){
                resultDto.setCode(ResultDTO.ERROR_CODE);
                resultDto.setMsg("用户不存在");
                return resultDto;
            }
            userService.checkLoginPassword(StringUtils.trim(userLoginDTO.getPassword()), user.getPassword());
            UserDTO userDTO = new UserDTO();
            BeanUtils.copyProperties(user, userDTO);
            resultDto.setCode(ResultDTO.SUCCESS_CODE);
            resultDto.setData(userDTO);
        }catch (Exception e){
            resultDto.setCode(ResultDTO.ERROR_CODE);
            resultDto.setMsg("登录失败");
            e.printStackTrace();
        }
    return resultDto;
    }

}

