package com.icia.shop.dto;

import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {
    private Long custno;
    private String custname;
    private String phone;
    private String address;
    private String joindate;
    private String grade;
    private Long city;
}
