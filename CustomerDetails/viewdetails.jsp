<%-- 
    Document   : EmployeeDateWiseShiftSearch
    Created on : Apr 23, 2018, 5:51:31 PM
    Author     : DELL3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="/WEB-INF/jsp/Common/Header.jsp"%>
    <%@include file="/WEB-INF/jsp/Common/Navbar.jsp"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Student</title>
        <script>
            $(document).ready(function () {
                $('#companyIdDiv').show();
                $('#zydexLocationIdDiv').show();
            });

            function onCompanyChange(value) {
             
                if (value === "") {
                    alert("Please select a valid company.");
                } else {
                    window.location = "cooMaster.htm?act=selectDepartment&companyId=" + getValueFromApp(value.toString());
                }
            }
            
             function removeChild10(removeRowId1) {
            i10--;
            document.getElementById("countDetailId10").value = i10;
            // Removes an element from the document
            var element1 = document.getElementById(removeRowId1);
            element1.parentNode.removeChild(element1);
        }
        </script>
    </head>

    <style>
        .checkbox-grid li {
            display: block;
            float: left;
            width: 25%;
        }
    </style>


    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Add New Customer </h1>
              <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-home fa-lg"></i> Home</a></li>
                <li>Add New Customer</li>
                 <li class="active">Add New Customer</li>
            </ol>

        </section>
        <c:if test="${!empty successMessage}">
            <div class="fadeOutEffect alert alert-info" role="alert">${successMessage}</div>
        </c:if>
        <c:if test="${!empty failureMessage}">
            <div class="fadeOutEffect alert alert-danger" role="alert">${failureMessage}</div>
        </c:if>
        <!-- Main content -->
        <form:form action="customerDetails.htm?act=createcustomer" method="post" commandName="customerDetails"
                   name='form1' class="form-horizontal" role="form">
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <!-- Custom Tabs -->
                        <div class="nav-tabs-custom">
                            <div class="tab-content">
                                <div class="box box-info">
                                    <div class="box-header">
                                        <h3 class="box-title">Create Customer</h3>
                                      
                                    </div><!-- /.box-header -->
                                </div>
                                <div class="box-body no-padding">

                                   


                                    <div class="col-md-12 col-sm-12">

                                        <div class="form-group">
                                            <div class="col-sm-3">
                                                <label class="control-label">Enter Customer Name:<span style="color: red;font-size: 12px;">*</span></label>
                                                <input type="text" id="name" name="name" class="form-control">
                                            </div>
                                          
                                           
                                        </div>
                                          
                                        <div class="form-group">
                                            <div class="col-sm-3">
                                               <label class="control-label">Enter Customer email:<span style="color: red;font-size: 12px;">*</span></label>
                                                <input type="text" id="email" name="email" class="form-control">
                                            </div>
                                          
                                           
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-sm-3">
                                                <label class="control-label">Enter Customer Phone:<span style="color: red;font-size: 12px;">*</span></label>
                                                <input type="text" id="phone" name="phone" class="form-control">
                                            </div>
                                          
                                            
                                             <div class="form-group">
                                            <div class="col-sm-3">
                                                <label class="control-label">Enter Customer Address :<span style="color: red;font-size: 12px;">*</span></label>
                                                <input type="text" id="address" name="address" class="form-control">
                                            </div>
                                           <div class="form-group">
                                            <div class="col-sm-3">
                                                <label class="control-label">Enter Customer City:<span style="color: red;font-size: 12px;">*</span></label>
                                                <input type="text" id="city" name="city" class="form-control">
                                            </div>
                                          
                                           
                                        </div>

                                        <div class="form-group">
                                            <div class=" col-sm-11 text-right">
                                                <button type="submit" class="btn btn-primary" style="width: 100px;" >Submit</button>
                                            </div>
                                        </div>


                                    </div><!-- /.col -->
                                </div><!-- /.row -->
                            </div><!-- /.box-body -->
                        </div><!-- /.tab-content -->
                    </div><!-- nav-tabs-custom -->
                </div><!-- /.col -->
        </div>
    </section>
</form:form>
</div>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0,
//            endDate: new Date()
    });</script>

<script>
    jQuery.noConflict();
    jQuery(document).ready(function () {
        jQuery("#employeeMasterId").tokenInput(${list}, {
            preventDuplicates: true,
            noResultsText: "No Result",
            tokenLimit: "1",
            searchingText: "Searching ... .. .",
        });
    });
</script>
<script>
    jQuery.noConflict();
    jQuery(document).ready(function () {
        jQuery("#zydexLocationId").tokenInput(${zydexlocationToken}, {
            preventDuplicates: true,
            noResultsText: "No Result",
            searchingText: "Searching ... .. .",
        });
    });
</script>
<script>
    jQuery.noConflict();
    jQuery(document).ready(function () {
        jQuery("#levelId").tokenInput(${levelList}, {
            preventDuplicates: true,
            noResultsText: "No Result",
            tokenLimit: "1",
            searchingText: "Searching ... .. .",
        });
    });
</script>
<script>
    jQuery.noConflict();
    jQuery(document).ready(function () {
        jQuery("#departmentId").tokenInput(${departmentList}, {
            preventDuplicates: true,
            noResultsText: "No Result",
            tokenLimit: "1",
            searchingText: "Searching ... .. .",
        });
    });
</script>

<%@include file="/WEB-INF/jsp/Common/Footer.jsp"%>
<script>
    $('#selecctall').on('ifChecked', function (event) {
        //        if ($('.checkAll').filter(':checked').length == $('.check').length) {
        $('.checkbox1').iCheck('check');
        //        }
    });
    $('#selecctall').on('ifUnchecked', function (event) {
        $('.checkbox1').iCheck('uncheck');
    });</script>
</html>
