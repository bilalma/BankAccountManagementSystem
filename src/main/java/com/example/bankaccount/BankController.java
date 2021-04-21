package com.example.bankaccount;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@RestController
public class BankController {

    @Autowired
    private BankAccountRepository bankAccountRepository;

    @GetMapping("/account")
    public List<BankAccount> getAccount() {

        BankAccount c = new BankAccount();
        c.setName("Bilal saving account 2");
        c.setBalance(100);
        c.setId(111);

        System.out.println(bankAccountRepository.findAll().size());

        bankAccountRepository.save(c);
        System.out.println(bankAccountRepository.findAll().size());


        Optional<BankAccount> df = bankAccountRepository.findById(1);

        return bankAccountRepository.findAll();
      //  return Arrays.asList(df.get());
    }


}
