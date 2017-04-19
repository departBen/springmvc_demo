package com.bs.service;

import com.bs.emtity.User;
import org.springframework.stereotype.Service;

/**
 * Created by ben on 2017/4/14.
 */
@Service
public class UserService {

    /**
     * 模拟登陆
     * @param user
     * @return
     */
    public User getUser(User user) {
        //用户名：admin, 密码:123
        if (user!=null && (user.getUsername().equals("admin") && user.getPassword().equals("123"))){
            User user1 = new User();
            user1.setUsername("admin");
            user1.setPassword("123");
            return user1;
        }else {
            return null;
        }
    }
}
