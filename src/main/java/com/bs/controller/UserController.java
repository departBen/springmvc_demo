package com.bs.controller;

import com.bs.emtity.User;
import com.bs.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

/**
 * Created by ben on 2017/4/14.
 */
@SessionAttributes("user")
@Controller
public class UserController {

    @Resource
    private HttpServletRequest request;
    @Resource
    private UserService service;

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    /**
     * 登陆，并对登陆信息进行验证
     * @param user
     * @param result
     * @param map
     * @return
     */
    @RequestMapping(value = "/dologin",method = RequestMethod.POST)
    public String doLogin(@Valid User user, BindingResult result, ModelMap map){
        if (result.hasErrors()){
            List<FieldError> errors = result.getFieldErrors();
            for (FieldError error:errors){
                request.setAttribute("ERR_" + error.getField(),error.getDefaultMessage());
            }
            return "login";
        }
        User u = service.getUser(user);
        if (u!=null){
            map.put("user",u);
            return "success";
        }
        return "error";
    }

    /**
     * 退出
     * @param map
     * @return
     */
    @RequestMapping("/logout")
    public String logout(ModelMap map){
        map.remove("user");
        return "login";
    }

}
