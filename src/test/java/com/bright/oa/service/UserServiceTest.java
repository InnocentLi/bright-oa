package com.bright.oa.service;

import com.bright.oa.entity.User;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserServiceTest {
    private UserService userService = new UserService();
    @Test
    public void checkLogin1() {
       User user = userService.checkLogin("test","test");
        System.out.println(user);
    }
    @Test
    public void checkLogin2() {
        User user = userService.checkLogin("test","sdadassdas");
        System.out.println(user);
    }
    @Test
    public void checkLogin3() {
        User user = userService.checkLogin("asdsad","sdadassdas");
        System.out.println(user);
    }
}