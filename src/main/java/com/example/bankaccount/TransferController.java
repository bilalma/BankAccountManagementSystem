
package com.example.bankaccount;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Optional;

@Controller
@RequestMapping("/transfers")
public class TransferController {
    @Autowired
    private BankAccountRepository bankAccountRepository;
    private Integer bankAccountTransferFrom;
    private Integer bankAccountTransferTo;
    private double amount;
    @RequestMapping(method = RequestMethod.POST)
    protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response,
                                    Object command, BindingResult errors) throws Exception {
        bankAccountTransferFrom = Integer.parseInt(request.getParameter("bankAccountTransferFrom"));
        bankAccountTransferTo = Integer.parseInt(request.getParameter("bankAccountTransferTo"));
        amount = Double.parseDouble(request.getParameter("amount"));
        BankAccount fromAccount = bankAccountRepository.findById(bankAccountTransferFrom).get();
        double newBalance = fromAccount.getBalance() - amount;
        fromAccount.setBalance(newBalance);
        bankAccountRepository.saveAndFlush(fromAccount);
        BankAccount toAccount = bankAccountRepository.findById(bankAccountTransferTo).get();
        double toBalance = toAccount.getBalance() + amount;
        toAccount.setBalance(toBalance);
        bankAccountRepository.saveAndFlush(toAccount);
        System.out.println(bankAccountTransferFrom + "this is");
        ModelAndView modelAndView = new ModelAndView("transfers");
        return modelAndView;
    }
    @RequestMapping(method = RequestMethod.GET)
    public String getCustomers(Model model, HttpServletRequest request, HttpServletResponse response) {
        model.addAttribute("message", "Thanks you your work. ");
        model.addAttribute("sessionForm", true);
        return "transfers";
    }
}
