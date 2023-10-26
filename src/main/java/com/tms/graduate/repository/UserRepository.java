package com.tms.graduate.repository;

import com.tms.graduate.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository <User, Long> {

    User getByLogin(String login);

}
