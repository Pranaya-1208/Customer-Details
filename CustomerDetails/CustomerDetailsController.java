/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bul.zydex.controller.CustomerDetails;

import com.bul.zydex.controller.CustomAbstract;
import com.bul.zydex.model.CustomerDetails;
import com.bul.zydex.model.StudentInfo;
import com.bul.zydex.model.StudentResult;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author DELL
 */
public class CustomerDetailsController extends CustomAbstract{
    
     public ModelAndView showDetails(HttpServletRequest request, HttpServletResponse response, CustomerDetails customerDetails)throws Exception
     {
         ModelAndView mv = new ModelAndView();
            
        mv.setViewName("CustomerDetails/viewdetails");
        return mv;
    }
     
public ModelAndView createcustomer(HttpServletRequest request, HttpServletResponse response) throws Exception
{

     ModelAndView mv=new ModelAndView();
     CustomerDetails customerDetails = new CustomerDetails();
     
     String name =request.getParameter("name");
     String email =request.getParameter("email");
     String phone =request.getParameter("phone");
     String address =request.getParameter("address");
     String city =request.getParameter("city");
     
     customerDetails.setName(name);
     customerDetails.setEmail(email);
     customerDetails.setPhone(phone);
     customerDetails.setAddress(address);
     customerDetails.setCity(city);
     
     
     customerDetailsService.create(customerDetails);
     
    request.setAttribute("successMessage", "Record created successfully!");
    mv.getModelMap().put("customerDetails",customerDetails);
    mv.setViewName("CustomerDetails/viewdetails");

         return mv;
}



public ModelAndView showCustomerList(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();
        List customerList = customerDetailsService.read();

        mv.getModelMap().put("customerList", customerList);
        request.setAttribute("customerList", customerList);
        mv.setViewName("CustomerDetails/CustomerList"); //this is JSP page path
        return mv;
    }


public ModelAndView deleteSubmit(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();
        String ptId[] = request.getParameterValues("checkId");
        for (String z : ptId) {
            try {
                customerDetailsService.delete(Integer.parseInt(z));
                request.setAttribute("successMessage","Records are deleted successfully!");
            } catch (Exception e) {
            }
        }
        mv = showCustomerList(request, response);
        return mv;
}


    public ModelAndView viewClick(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mv=new ModelAndView();
        String id = request.getParameter("id");

        CustomerDetails customerDetails = customerDetailsService.readById(Integer.parseInt(id));

        mv.getModelMap().put("customerDetails", customerDetails);
        request.setAttribute("customerDetails", customerDetails);

       
     
        mv.getModelMap().put("id", id);
        request.setAttribute("id", id);
        mv.setViewName("CustomerDetails/EditCustomerDetails");
        return mv;
    }
        
    
    
        public ModelAndView editSubmit(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();

        String id = request.getParameter("id");

        CustomerDetails customerDetails = customerDetailsService.readById(Integer.parseInt(id));
        
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
        String city=request.getParameter("city");
        
        customerDetails.setName(name);
        customerDetails.setEmail(email);
        customerDetails.setPhone(phone);
        customerDetails.setAddress(address);
        customerDetails.setCity(city);

        customerDetailsService.update(customerDetails);
       
        
         request.setAttribute("successMessage", "Record successfully updated !");
       
        mv.getModelMap().put("customerDetails", customerDetails);
        mv.setViewName("forward:customerDetails.htm?act=showCustomerList");
        return mv;
        }
}