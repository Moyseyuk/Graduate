package com.tms.graduate.service;

import com.tms.graduate.model.User;
import com.tms.graduate.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepository repository;

    public List<User> getUsers (){
        return repository.getUserNamesByContainsRole("ROLE_USER");
    }

}
