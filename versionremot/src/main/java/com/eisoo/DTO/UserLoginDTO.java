package com.eisoo.DTO;

import lombok.Data;

import javax.validation.constraints.NotEmpty;
import java.io.Serializable;

@Data
public class UserLoginDTO implements Serializable{

        private static final long serialVersionUID = 1L;

        @NotEmpty(message="userName不能为空")
        private String userName;

        private String password;

        private String validateCode;

    }


