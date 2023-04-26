package com.icia.shop.service;

import com.icia.shop.dto.UserDTO;
import com.icia.shop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;
    public List<UserDTO> findAll() {
        List<UserDTO> userDTOList = userRepository.findAll();
        if (userDTOList.size() == 0) {
            return null;
        } else {
            return userDTOList;
        }
    }

    public int save(UserDTO userDTO) {
        System.out.println("UserDTO = " + userDTO);
        int result = userRepository.save(userDTO);
        return result;
    }

    public UserDTO delete(Long custno) {
        return  userRepository.delete(custno);
    }

    public UserDTO findById(Long custno) {
        UserDTO userDTO = userRepository.findById(custno);
        return userDTO;
    }

    public void update(UserDTO userDTO) {
        userRepository.update(userDTO);
    }
}
