package com.example.bankaccount;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


@RestController
@RequestMapping("/rest")
public class MyRestController {

    @Value("${index.message}")
    private String message = "Hello World";


    @Autowired
    private BankAccountRepository bankAccountRepository;

    @GetMapping
    public ResponseEntity welcome() {
        String d  = bankAccountRepository.findById(1).get().getName();
        List<BankAccount> bankAccountList = bankAccountRepository.findAll();

        return new ResponseEntity(bankAccountList, HttpStatus.OK);
    }

    @RequestMapping(value = "/thanks", method = RequestMethod.GET)
    public String thanks(Model model, HttpServletRequest request, HttpServletResponse response) {
        model.addAttribute("message", "Thanks you your work. ");
        model.addAttribute("thank", "T`fasfd fdfas fsfa d ff`work. ");
        model.addAttribute("sessionForm", true);
        return "index";
    }

//


}
