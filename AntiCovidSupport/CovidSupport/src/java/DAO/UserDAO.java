/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Account;

public interface UserDAO {

    public Account login(String username, String password);

    public Account checkAccountExist(String username);

    public void register(String username, String password, String email, String phone, String address, String dob);
}
