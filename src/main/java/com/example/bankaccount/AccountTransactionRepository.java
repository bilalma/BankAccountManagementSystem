package com.example.bankaccount;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface AccountTransactionRepository extends JpaRepository<AccountTransaction, Integer> {

    List<AccountTransaction> findByAccountIdAndLocalDate(Integer accountId, LocalDate localDate);
}
