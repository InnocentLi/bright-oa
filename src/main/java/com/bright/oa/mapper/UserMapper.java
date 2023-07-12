package com.bright.oa.mapper;

import com.bright.oa.entity.User;
import com.bright.oa.utils.MybatisUtils;

public class UserMapper {
    public User selectByUsername(String username){
        User user = (User)MybatisUtils.executeQuery(sqlSession -> sqlSession.selectOne("usermapper.selectByUsername",username));
        return user;
    }
}
