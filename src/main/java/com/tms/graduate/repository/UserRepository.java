package com.tms.graduate.repository;

import com.tms.graduate.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserRepository extends JpaRepository <User, Long> {

    User getByLogin(String login);

    @Query(value = "select users.* from users join user_roles on users.id = user_roles.user_id join roles on user_roles.role_id = roles.id where roles.name = :role", nativeQuery = true)
    List<User> getUserNamesByContainsRole(String role);

}
