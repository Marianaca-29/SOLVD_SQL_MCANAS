package dao;

import model.Customer;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// step3: override of methods of interface
public class CustomerDao implements ICustomer {

    //set connection
    //set logger
    //set constructor

    private Connection connection;
    private static Logger log = LogManager.getLogger(CustomerDao.class.getName());

    public CustomerDao(Connection connection) {
        this.connection = connection;
    }

    // setting overrides

    @Override
    public List<Customer> getAll() {
        List<Customer> customerList = new ArrayList<>();
        String query = "Select * from Customer";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            try {
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    customerList.add(new Customer(resultSet.getInt("id"), resultSet.getString("fullName"), resultSet.getString("address"), resultSet.getString("phoneNumber"), resultSet.getString("email")));
                }

            } catch (SQLException e) {
                log.error(e.getMessage());
            }
        } catch (SQLException ex) {
            log.error(ex.getMessage());
        }
        return customerList;
    }

    @Override
    public Customer getById(int id) {
        try {

            String query = "Select * from Customer where id=?";
            PreparedStatement preparedStatementID = connection.prepareStatement(query);
            preparedStatementID.setInt(1, id);
            ResultSet resultSet = preparedStatementID.executeQuery();
            if (resultSet.next()) {
                return new Customer(resultSet.getInt("id"), resultSet.getString("fullName"), resultSet.getString("address"), resultSet.getString("phoneNumber"), resultSet.getString("email"));

            }
        } catch (SQLException ex) {
            log.error(ex.getMessage());
        }
        return null;
    }

    @Override
    public Customer getByFullName(String fullName) {
        try {

            String query = "Select * from Customer where fullName=?";
            PreparedStatement preparedStatementFN = connection.prepareStatement(query);
            preparedStatementFN.setString(1, fullName);
            ResultSet resultSet = preparedStatementFN.executeQuery();
            if (resultSet.next()) {
                return new Customer(resultSet.getInt("id"), resultSet.getString("fullName"), resultSet.getString("address"), resultSet.getString("phoneNumber"), resultSet.getString("email"));

            }

        } catch (SQLException ex) {
            log.error(ex.getMessage());
        }
        return null;
    }

    @Override
    public void create(Customer customer) {
        try {

            String query = "Insert into Customer(fullName, address, email) values(?,?,?,?) ";
            PreparedStatement preparedStatementCC = connection.prepareStatement(query);
            preparedStatementCC.setString(1, customer.getFullName());
            preparedStatementCC.setString(2, customer.getAddress());
            preparedStatementCC.setString(3, customer.getEmail());
            preparedStatementCC.executeUpdate();
        } catch (SQLException ex) {
            log.error(ex.getMessage());
        }
    }

    @Override
    public void update(int id, Customer customer) {
        try {
            String query = "Update Customer set fullName=? where id=?";
            PreparedStatement preparedStatementUp = connection.prepareStatement(query);
            preparedStatementUp.setString(1, customer.getFullName());
            preparedStatementUp.setInt(2, id);
            preparedStatementUp.executeUpdate();
        } catch (SQLException ex) {
            log.error(ex.getMessage());
        }
    }

    @Override
    public String delete(int id) {
        try {
            String query = "Delete from Customer where id=?";
            PreparedStatement preparedStatementDel = connection.prepareStatement(query);
            preparedStatementDel.setInt(1, id);
            preparedStatementDel.executeUpdate();
            return "Customer deleted";
        } catch (SQLException ex) {
            log.error("Error" + ex.getMessage());
            return "Customer removed";
        }
    }
}
