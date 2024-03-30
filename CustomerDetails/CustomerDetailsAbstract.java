/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bul.zydex.controller.CustomerDetails;

import com.bul.zydex.controller.CustomAbstract;
import com.bul.zydex.model.CustomerDetails;
import com.bul.zydex.service.CustomerDetails.CustomerDetailsService;

/**
 *
 * @author DELL
 */
public class CustomerDetailsAbstract extends CustomAbstract {
protected CustomerDetailsService<CustomerDetails> customerDetailsService; 

    public CustomerDetailsService<CustomerDetails> getCustomerDetailsService() {
        return customerDetailsService;
    }

    public void setCustomerDetailsService(CustomerDetailsService<CustomerDetails> customerDetailsService) {
        this.customerDetailsService = customerDetailsService;
    }
    
}
