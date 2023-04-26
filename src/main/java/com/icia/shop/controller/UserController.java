package com.icia.shop.controller;

import com.icia.shop.dto.UserDTO;
import com.icia.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/list")
    public  String findAll(Model model){
        List<UserDTO> userDTOList = userService.findAll();
        for (UserDTO userDTO : userDTOList) {
            System.out.println("userDTO = " + userDTO);
        }
        model.addAttribute("userDTOList",userDTOList);
        return "list";
    }
    @PostMapping("/save")
    public String save(@ModelAttribute UserDTO userDTO, Model model) {
        int saveResult = userService.save(userDTO);
        model.addAttribute("result", saveResult);
        return "saveResult";
    }
    @GetMapping("/delete")
    public String delete(@RequestParam("custno")Long custno , Model model){
        UserDTO userDTO = userService.delete(custno);
        model.addAttribute("delete",userDTO);
//         삭제 처리 후 목록 출력
         return "redirect:/list";
    }
    @GetMapping("/update")
    public String updateForm(@RequestParam("custno") Long custno,Model model){
        UserDTO userDTO = userService.findById(custno);
        model.addAttribute("user" ,userDTO);
        return "update";
    }
    @PostMapping("/update")
    public String update(@ModelAttribute UserDTO userDTO){
        userService.update(userDTO);
        return "redirect:/list?custno="+userDTO.getCustno();
    }

}
