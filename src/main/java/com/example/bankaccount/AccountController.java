package com.example.bankaccount;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/accounts")
public class AccountController {
    private String fname;
    private  String lname;
    private  String iban;
    private  String number;


    @RequestMapping(method = RequestMethod.POST)
    protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response,
                                    Object command, BindingResult errors) throws Exception {

        fname = request.getParameter("fname");
        lname = request.getParameter("lname");
        iban = request.getParameter("iban");
        number = request.getParameter("number");

        System.out.println(fname + "this is");
        ModelAndView modelAndView = new ModelAndView("accounts");
        return modelAndView;
    }
    @RequestMapping(method = RequestMethod.GET)
    public String getCustomers(Model model, HttpServletRequest request, HttpServletResponse response) {
        model.addAttribute("message", "Thanks you your work. ");
        model.addAttribute("sessionForm", true);
        return "accounts";
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getIban() {
        return iban;
    }

    public void setIban(String iban) {
        this.iban = iban;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }
}
