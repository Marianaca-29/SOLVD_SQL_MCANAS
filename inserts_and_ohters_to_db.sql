-- 10 statements for insertion.
-- 10 statements for updating.
-- 10 statements for deletions.
-- 5 alter table.
-- 1 big statement to join all tables in the database.
-- 5 statements with left, right, inner, outer joins.
-- 7 statements with aggregate functions and group by and without having.
-- 7 statements with aggregate functions and group by and with having.

USE SOLVDPROJECT;
insert INTO department (id, name, description) Values (1, 'repair', 'repairing_devices'), (2, 'admission', 'admission');
select *
from department;
insert INTO company (id, full_name, address) Values (1, 'repair_shop_SZ', 'fake_street_n_1'), (2, 'repair_shop_SZ_2', 'another_fake_street_n_1');
select *
from company;
insert INTO customer (id, full_name, address, phone_number, email ) Values (1, 'andrei nazarenko', 'it_is_a_fake_street_n_1', '1234567', 'andrei@solvd.com'), (2, 'sergei z', 'another_fake_street_n_1', '7654321', 'sergei@solvd.com');
select *
from customer;
insert INTO device (id, serial_number, brand, model, details, year_model) Values (1, '1234', 'apple', 'mac', 'none', '2021'), (2, '4444', 'apple', 'M1', 'scratch in one side', '2021');
select *
from device;
insert INTO service_provided (id, detail, cost, price) Values (1, 'repair_hard_drive', '100', '200'), (2, 'repair_keyboard', '50', '100'), (3, 'repair_all', '500', '1000');
select *
from service_provided;
insert INTO payment_method (id, type, name) Values (1, 'debit', 'visa'), (2, 'debit', 'mastercard'), (3, 'credit', 'visa'), (4, 'debit', 'mastercard'), (5, 'cash', 'dollars');
select *
from payment_method;
insert INTO product (id, full_name, details, price, cost, date_enter, min_stock, current_stock, max_stock, other_details) Values (1, 'keyboard', 'keyboard nisuta', 100, 50, 2021-10-21, 2, 2, 10, 'imported from China'), ('2', 'mouse', 'mouse logitec', '50', '25', '2021-11-10', '5', '10', '20', 'local purchase');
;
select *
from product;
insert INTO employee (id, full_name, social_security_number, address, phone_number, birth_date, start_date, end_date, active) Values (1, 'andrei novikova', 'another_fake_street_n_1', '2345789', 1992-10-21, 2022-09-15, null, true);
select *
from employee;
-- insert INTO order_status (id, full_name, address) Values (1, 'repair_shop_SZ', 'fake_street_n_1'), (2, 'repair_shop_SZ_2', 'another_fake_street_n_1');
-- select *
-- from order_status;
-- insert INTO order_repair (id, full_name, address) Values (1, 'repair_shop_SZ', 'fake_street_n_1'), (2, 'repair_shop_SZ_2', 'another_fake_street_n_1');
-- select *
-- from order_repair;

