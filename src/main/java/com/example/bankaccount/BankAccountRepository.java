package com.example.bankaccount;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface BankAccountRepository extends JpaRepository<BankAccount, Integer> {

    Optional<BankAccount> findById(Integer id);

    //@Query(value = "Update ",nativeQuery = true)
    //boolean transferAmount(Integer transferAccountFrom, Integer transferAccountTo,Double balance);


}
