package com.eisoo.model;

import lombok.Data;

import java.io.Serializable;

@Data
public class ValueDTO implements Serializable {
    private String key;
    private int nums;
}
