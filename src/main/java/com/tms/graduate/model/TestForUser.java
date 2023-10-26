package com.tms.graduate.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "tests_for_users")
public class TestForUser {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToOne
    @JoinColumn(name = "test_id")
    private Test test;
    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;
    private Date deadline;
    @Enumerated(EnumType.STRING)
    private STATUS status;

}
