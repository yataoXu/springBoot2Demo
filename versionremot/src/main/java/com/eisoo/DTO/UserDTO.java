package com.eisoo.DTO;

import lombok.Data;

@Data
public class UserDTO {

    private Long id;

    /**
     * 用户名
     */
    private String userName;

    private String apiKey;
}
