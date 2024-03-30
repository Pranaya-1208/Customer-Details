<%-- 
    Document   : CooMasterEdit
    Created on : 8 Feb, 2019, 5:29:50 PM
    Author     : Dell-1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="/WEB-INF/jsp/Common/Header.jsp"%>
    <%@include file="/WEB-INF/jsp/Common/Navbar.jsp"%>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Customer Details</title>
    </head>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Edit Customer Details</h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">View</li>
            </ol>
        </section>
        <script>
            jQuery.noConflict();
            jQuery(document).ready(function () {
                jQuery("#employeeName").tokenInput(${preList}), {
                    preventDuplicates: true,
                    noResultsText: "No Result",
                    tokenLimit: "1",
                    prePopulate: ${preList},
                    searchingText: "Searching ... .......... ."
                });
            });
        </script>
        <script>
            jQuery.noConflict();
            jQuery(document).ready(function () {
                jQuery("#employeeName").tokenInput(${list}, {
                    preventDuplicates: true,
                    noResultsText: "No Result",
                    tokenLimit: "1",
                    searchingText: "Searching ...... .. .",
                    prePopulate: ${preList}
                });
            });






        </script>
        <script>

            var i10 = 0;
            jQuery(document).ready(function () {
                console.log("in the function");
                $("#addRowButtonId_table_10").on("click", function () {
                    i10++;

                    var clone = "<tr id='table_10_rowNo1_" + i10 + "'>"
                            + "<td style=\"text-align: center\"> <input type =\"text\" name=\"employeeName" + i10 + "\" id=\"employeeName" + i10 + "\" class =\"form-control\"></td>"

                            + "<td><span style =\"margin-top: 5px;\" class =\"col-sm-1\">"
                            + "<input type=\"button\" value=\"-\" id=\"removeRowButtonId\" onclick=\"removeChild10('table_10_rowNo1_" + i10 + "');\">"
                            + "</span>"
                            + "</td>"
                            + "</tr>";
                    document.getElementById("countDetailId10").value = i10;
                    $("#empId").append(clone);

                    jQuery("#employeeName" + i10).tokenInput(${list}, {
                        preventDuplicates: true,
                        noResultsText: "No Result",
                        tokenLimit: "1",
                        searchingText: "Searching ......"
                    });

                });

            });


            function removeChild10(removeRowId1) {
                i10--;
                document.getElementById("countDetailId10").value = i10;
                // Removes an element from the document
                var element1 = document.getElementById(removeRowId1);
                element1.parentNode.removeChild(element1);
            }


        </script>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <!-- Custom Tabs -->
                    <div class="nav-tabs-custom">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_1">
                                <!--<span style="color: red;font-size: 14px;">* indicates mandatory field.</span>-->
                                <c:if test="${!empty successMessage}">
                                    <div class="fadeOutEffect alert alert-info" role="alert">${successMessage}</div>
                                </c:if>
                                <c:if test="${!empty failureMessage}">
                                    <div class="fadeOutEffect alert alert-danger" role="alert">${failureMessage}</div>
                                </c:if>


                                <form:form class="form-horizontal" method="post"
                                           commandName="customerDetails" action="customerDetails.htm?act=editSubmit">

                                    

                                    <input type="hidden" id="id" name="id" value="${id}">
                                    
                                    
                                    <div class="form-group">
                                        <div class="col-sm-3">
                                            <label class="control-label">Enter Customer Name:<span style="color: red;font-size: 12px;">*</span></label>
                                        </div>
                                        <div class="col-sm-5">
                                            <input type="text" id="name" name="name" value="${customerDetails.name}">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-3">
                                            <label class="control-label">Enter Customer Email:<span style="color: red;font-size: 12px;">*</span></label>
                                        </div>
                                        <div class="col-sm-5">
                                            <input type="text" id="email" name="email" value="${customerDetails.email}">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-3">
                                            <label class="control-label">Enter phone number<span style="color: red;font-size: 12px;">*</span></label>
                                        </div>
                                        <div class="col-sm-5">
                                            <input type="text" id="phone" name="phone" value="${customerDetails.phone}">
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <div class="col-sm-3">
                                            <label class="control-label">Enter Customer Address<span style="color: red;font-size: 12px;">*</span></label>
                                        </div>
                                        <div class="col-sm-5">
                                            <input type="text" id="address" name="address" value="${customerDetails.address}">
                                        </div>
                                    </div>

                                        
                                        <div class="form-group">
                                        <div class="col-sm-3">
                                            <label class="control-label">Enter Customer City<span style="color: red;font-size: 12px;">*</span></label>
                                        </div>
                                        <div class="col-sm-5">
                                            <input type="text" id="city" name="city" value="${customerDetails.city}">
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <div class="col-sm-6 col-sm-offset-5">
                                            <input type="submit" class="btn btn-primary" style="width: 100px;"  title="" value="SUBMIT">
                                        </div>

                                    </div>
                                </form:form>
                            </div><!-- /.tab-pane -->
                        </div><!-- /.tab-content -->
                    </div><!-- nav-tabs-custom -->
                </div><!-- /.col -->
            </div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->


    <%@include file="/WEB-INF/jsp/Common/Footer.jsp"%>

</html>

