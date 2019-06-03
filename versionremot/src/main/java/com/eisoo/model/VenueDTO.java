package com.eisoo.model;

import lombok.Data;

import java.io.Serializable;

@Data
public class VenueDTO implements Serializable {
    private String venue;
    private int nums;
}
