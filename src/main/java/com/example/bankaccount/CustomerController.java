package com.example.bankaccount;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.BindException;
@Controller
@RequestMapping("/customers")
class CustomerController {
        private String firstName;
        private  String address;
        private  String passport;
        private  String phoneNumber;
        private  String email;
        private  String password;

        @RequestMapping(method = RequestMethod.POST)
        protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response,
                                    Object command, BindingResult errors) throws Exception {
            firstName = request.getParameter("firstName");
            address = request.getParameter("address");
            address = request.getParameter("address");
            passport = request.getParameter("passport");
            phoneNumber = request.getParameter("phoneNumber");
            email = request.getParameter("email");
            password = request.getParameter("password");
        System.out.println(firstName+"this is");
        ModelAndView modelAndView = new ModelAndView("customers");
        return modelAndView;
    }
    @RequestMapping(method = RequestMethod.GET)
    public String getCustomers(Model model, HttpServletRequest request, HttpServletResponse response) {
        model.addAttribute("message", "Thanks you your work. ");
        model.addAttribute("sessionForm", true);
        return "customers";
    }


        public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassport() {
        return passport;
    }

    public void setPassport(String passport) {
        this.passport = passport;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
