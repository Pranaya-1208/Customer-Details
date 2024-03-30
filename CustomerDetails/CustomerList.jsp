

<%-- 
    Document   : ShowCooMasterList
    Created on : Dec 14, 2023, 5:42:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <%@include file="/WEB-INF/jsp/Common/Header.jsp"%>
    <%@include file="/WEB-INF/jsp/Common/Navbar.jsp"%>
    <script>
        function viewClick(id) {
            window.location = 'customerDetails.htm?act=viewClick&id=' + id;
        }
        function deleteCheck11() {
            var checkboxes = "";
            checkboxes = document.getElementsByName('checkId');
            for (var i = 0, n = checkboxes.length; i < n; i++) {
                if (checkboxes[i].checked) {
                    return true;
                }
            }
            alert("Please, Select one or more record(s).");
            return false;
        }
    </script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer List</title>
    </head>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Customer List</h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Customer List</li>
            </ol>
        </section>
        <c:if test="${!empty successMessage}">
            <div class="fadeOutEffect alert alert-info" role="alert">${successMessage}</div>
        </c:if>
        <c:if test="${!empty failureMessage}">
            <div class="fadeOutEffect alert alert-danger" role="alert">${failureMessage}</div>
        </c:if>

        <form:form action="customerDetails.htm?act=deleteSubmit" method="post"
                   name='form1' onsubmit='return deleteCheck11();' class="form-horizontal" role="form">
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <!-- Custom Tabs -->
                        <div class="nav-tabs-custom">
                            <div class="tab-content">
                                <div class="box box-info">
                                    <div class="box-header">
                                        <h3 class="box-title">Customer List</h3>

                                    </div><!-- /.box-header -->
                                </div>
                                <button type="button" class="btn btn-primary" title="" style="float: right;width: 120px;" onclick="window.location = 'customerDetails.htm?act=showDetails'"><i class="fa fa-plus"></i>&nbsp New</button>
                                <button type="submit" class="btn btn-danger" title="" style="width: 100px;"><i class="fa fa-trash"></i>&nbsp;&nbsp;DELETE</button>


                                <div class="box-body no-padding">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12">
                                            <div class="table table-bordered">
                                                <table id="table_1" class="table table-bordered table-striped table-hover" style="" align="Center"  >
                                                    <c:choose>
                                                        <c:when test="${empty customerList}">
                                                            <tr>
                                                                <td align="center">
                                                                    <c:out value="There is no record found."></c:out>
                                                                    </td>
                                                                </tr>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <thead>
                                                                <tr>
                                                                    <th align="center" style="width: 1px;"><input type="checkbox" id="toggleId"/></th>
                                                                    <th>Id no.</th>
                                                                    <th>Customer Name</th>
                                                                    <th>Customer Email</th>
                                                                    <th>Customer Phone </th>
                                                                    <th>Customer Address </th>
                                                                    <th>Customer City </th>

                                                                    <th>Action</th>
                                                                </tr>
                                                            </thead>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <c:forEach items="${customerList}" var="customerList" varStatus="status">
                                                        <tr>
                                                            <td align="Center">
                                                                <input type="checkbox" name="checkId" id="checkId" value="${customerList.id}">
                                                            </td>
                                                            <td>${status.count}</td>
                                                            <td>${customerList.name}</td>
                                                            <td>${customerList.email}</td>
                                                            <td>${customerList.phone}</td>
                                                            <td>${customerList.address}</td>
                                                            <td>${customerList.city}</td>
                                                            
                                                            <td>
                                                                <div class="btn-group">
                                                                    <button type="button" onclick="viewClick(${customerList.id});" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                        &nbsp;&nbsp;Edit
                                                                    </button>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </table>
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
        <!--    </div> /.tab-content 
        </div> nav-tabs-custom 
        </div> /.col 
        </div>
        </section>-->
    </div><!-- /.content-wrapper -->
    <%@include file="/WEB-INF/jsp/Common/Footer.jsp"%>
    <script>
        function selectCompanyName(companyId) {
            window.location = 'cooMaster.htm?act=readCompanyList&companyId=' + getValueFromApp(companyId.toString());
        }
    </script>
</html>

