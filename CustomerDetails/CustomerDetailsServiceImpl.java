/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bul.zydex.service.CustomerDetails;

import com.bul.zydex.dao.CustomerDetails.CustomerDetailsDAO;
import com.bul.zydex.dao.StudentResult.StudentResultDAO;
import com.bul.zydex.service.GenericsServiceImpl;

/**
 *
 * @author DELL
 */
public class CustomerDetailsServiceImpl<T> extends GenericsServiceImpl<T> implements CustomerDetailsService<T> 
{
    private CustomerDetailsDAO<T> customerDetailsDAO; 

    public CustomerDetailsDAO<T> getCustomerDetailsDAO() {
        return customerDetailsDAO;
    }

    public void setCustomerDetailsDAO(CustomerDetailsDAO<T> customerDetailsDAO) {
        this.customerDetailsDAO = customerDetailsDAO;
        setGenericsDAO(customerDetailsDAO); 

    }
    }

    

