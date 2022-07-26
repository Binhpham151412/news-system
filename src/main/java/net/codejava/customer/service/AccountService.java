package net.codejava.customer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.codejava.customer.entity.Account;
import net.codejava.customer.repository.AccountRepository;


@Service
@Transactional
public class AccountService {

    @Autowired
    private AccountRepository repo;

    public Account login(String email, String password) {
        return repo.login(email, password);
    }

    public void save(Account account) {
        repo.save(account);
    }

    public List<Account> listAll() {
        return (List<Account>) repo.findAll();
    }

    public Account get(Long id) {
        return repo.findById(id).get();
    }

    public void delete(Long id) {
        repo.deleteById(id);
    }
}
