package com.example.bankaccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@Controller
//@RequestMapping("/")
public class IndexController {
    @Value("${index.message}")
    private String message = "Hello World";
    @Autowired
    private BankAccountRepository bankAccountRepository;

    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String welcome(Model model, HttpServletRequest request, HttpServletResponse response) {
        String d  = bankAccountRepository.findById(1).get().getName();
        List<BankAccount> bankAccountList = bankAccountRepository.findAll();
       /// model.addAttribute("message", d);
        model.addAttribute("bankAccountList", bankAccountList);
        return "index";
    }
    @RequestMapping(value = "/thanks", method = RequestMethod.GET)
    public String thanks(Model model, HttpServletRequest request, HttpServletResponse response) {
       /// model.addAttribute("message", "Thanks you your work. ");
        model.addAttribute("thank", "T`fasfd fdfas fsfa d ff`work. ");
        model.addAttribute("sessionForm", true);
        return "index";
    }

//


}
