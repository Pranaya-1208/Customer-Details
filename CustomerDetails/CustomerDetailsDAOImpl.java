/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bul.zydex.dao.CustomerDetails;

import com.bul.zydex.dao.GenericsDAOImpl;
import com.bul.zydex.model.CustomerDetails;


/**
 *
 * @author DELL
 */
public class CustomerDetailsDAOImpl<T> extends GenericsDAOImpl<T> implements CustomerDetailsDAO<T> {
    
    
     @Override
    protected Class getDomainClass() {
         return CustomerDetails.class;
    }
}
