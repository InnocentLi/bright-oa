package com.bright.oa.service;

import com.bright.oa.entity.User;
import com.bright.oa.mapper.UserMapper;
import com.bright.oa.service.exception.LoginException;


public class UserService {
    private UserMapper userMapper = new UserMapper();


    public User checkLogin(String username,String password){

        User user = userMapper.selectByUsername(username);
        if(user == null){
            System.out.println("用户名错");
            throw new LoginException("該当ユーザーが存在しません。");
        }
        if (!password.equals(user.getPassword())) {
            System.out.println("密码错");
            throw new LoginException("パスワードが間違っています。");
        }
        return user;
    }
}
