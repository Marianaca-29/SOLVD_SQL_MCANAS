package dao;

import model.Customer;

import java.util.List;


public interface ICustomer {

// step 1:  here I create list and void methods
// step 2: implement this interface in CustomerDAO


    List<Customer> getAll();


    Customer getById(int id);

    Customer getByFullName(String fullName);

    void create(Customer customer);

    void update(int id, Customer customer);

    String delete(int id);

}
