package com.example.webbh.Repository;

import com.example.webbh.Bean.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserRepository extends JpaRepository<User,String> {
    
    @Query("select max(buyerid) from User")
    int findMaxBuyerid();
    @Query("select max(sellerid) from User")
    int findMaxSellerid();

    Object findByUsernameAndPassword(String username, String password);
    @Query("select buyerid from User where username = ?1")
    int findBuyeridById(String username);
    @Query("select username from User where buyerid =?1")
    String findUsernameByBuyerid(int buyerid);
}
