package com.codegnan.service;

import com.codegnan.dao.UserDao;
import com.codegnan.dao.UserDaoImpl;

public class UserServiceImpl implements UserService {

    private UserDao dao = new UserDaoImpl();

    public String login(String username, String password) {
        return dao.validateUser(username, password);
    }
}
