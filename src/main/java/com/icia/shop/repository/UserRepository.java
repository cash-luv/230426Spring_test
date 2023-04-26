package com.icia.shop.repository;

import com.icia.shop.dto.UserDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public List<UserDTO> findAll() {
        return sql.selectList("User.findAll");
    }

    public int save(UserDTO userDTO) {
        return sql.insert("User.save", userDTO);
    }

    public UserDTO delete(Long custno) {
        return sql.selectOne("User.delete", custno);
    }

    public UserDTO findById(Long custno) {
        return sql.selectOne("User.findById", custno);
    }

    public void update(UserDTO userDTO) {
         sql.update("User.update",userDTO);
    }
}
