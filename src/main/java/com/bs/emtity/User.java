package com.bs.emtity;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Pattern;

/**
 * Created by ben on 2017/4/14.
 */
public class User {

    @NotEmpty(message = "用户名不能为空")
    private String username;
    @Pattern(regexp = "[0-9a-zA-Z_]{2,30}", message = "密码必须是2-30个数字或者下划线")
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
