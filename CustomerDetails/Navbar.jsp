<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box;}

            .open-button {
                background-color: #555;
                color: white;
                padding: 10px 20px;
                border: none;
                cursor: pointer;
                opacity: 0.8;
                position: fixed;
                bottom: 23px;
                left:0px;
                width: 280px;

            }
            .skin-blue .sidebar-menu>li:hover>a, .skin-blue .sidebar-menu>li.active>a {
                color: #374979;
                background:#d4d4d4 ;
            }

        </style>
        <!-- <style>
             .sidebar-header2{
                  border-top: 1px solid #3a3f48;
                 padding: 20px;
                 overflow: hidden;
                 box-sizing: border-box;
                 display: block; 
                 }
                .sidebar-header2 .user-picc {
                 float: left;
                 width: 60px;
                 padding: 2px;
                 border-radius: 12px;
                 margin-right: 15px;
                 overflow: hidden;
                 }
                 .img {
                     vertical-align: middle;
                     border-style: none;
                 }
                 
         </style>-->
        <style>
            .user-panel {
                border-bottom: 1px solid #4f5962;
            }
            .user-panel, .user-panel .info {
                overflow: hidden;
                white-space: nowrap;
            }
            .user-panel {
                position: relative;
            }
            .pb-3, .py-3 {
                padding-bottom: 1rem!important;
            }
            .mt-3, .my-3 {
                margin-top: 2rem!important;
            }
            .d-flex {
                display: -ms-flexbox!important;
                display: flex!important;
            }
            .user-panel .image {
                display: inline-block;
                padding-left: .8rem;
            }
            .user-panel, .user-panel .info {
                overflow: hidden;
                white-space: nowrap;
            }
            .user-panel .info {
                display: inline-block;
                padding: 41px 5px 5px 127px;
            }


        </style>
    </head>
    <!-- Left side column. contains the logo and sidebar -->

    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar" style=" box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
            <!-- Sidebar user panel -->
            <!--<div class="user-panel mt-3 pb-3 mb-3 d-flex" style="background-color:#374979">-->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex" style="background: linear-gradient(to right, #374979 0%, #495985 60%, #6a789b 100%);">
                <div class="image">
                    <img src="${sessionScope.profilePicturePath}" class="img-circle" alt="User Image">
                    <!--<img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">-->
                </div>
                <div class="info" style="word-wrap: break-word;">

                    <a href="#" class="d-block">${sessionScope.employeeInfo.employeeName}</a>
                </div>
            </div>
            <!-- <div class="sidebar-header2" style="background-color:#374979">
                <div class="user-picc">
                     <img class="img-responsive img-rounded" src="https://raw.githubusercontent.com/azouaoui-med/pro-sidebar-template/gh-pages/src/img/user.jpg" alt="User picture">
                </div>
                 <div class="user-info">
                     <span class="user-name">
                         <strong>${sessionScope.employeeInfo.employeeName}</strong>
                     </span>
                  
                 </div>
             </div> -->   
            <!--<div class="user-panel"  style="background-color:#374979">
                <div class="pull-left image" style="    width: 35%;float: left">
                    <img src="${sessionScope.profilePicturePath}" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info" style="padding: 25px 10px 10px 95px;width: 65%;float: left;word-wrap: break-word;">
                    <p style="color:#ffffff;">${sessionScope.employeeInfo.employeeName}</p>
                </div>
            </div>-->
            <!-- //Sidebar user panel -->

            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <c:if test="${sessionScope.employeeInfo.employeeId eq 'admin'}">
                     <!--  <button class="open-button">Online Users : <%=application.getAttribute("onlineUsers")%></button>-->
                    <li class=" treeview">
                        <!--<center>
                            <span style="background-color:green;color:white;">&nbsp;&nbsp;&emsp;&emsp;&emsp;Online Users : <%=application.getAttribute("onlineUsers")%>&emsp;&emsp;&emsp;</span>
                        </center>-->
                        <a >
                            <i class="fa fa-user fa-lg" style="color: #424242;"></i> <span style="color: #424242;">Online Users : <%=application.getAttribute("onlineUsers")%></span>
                        </a>
                    </li>
                </c:if>
                <!--My Dashboard-->
                <c:if test="${!sessionScope.userRight.hr}">
                    <li class="active treeview">
                        <a href="userMaster.htm?act=goToDashboard">
                            <i class="fa fa-dashboard fa-lg" style="color: #424242;"></i> <span style="color: #424242;">My Dashboard</span>
                        </a>
                    </li>
                </c:if>
                <!--//My Dashboard-->
                <!--Online Users-->
                <c:if test="${sessionScope.userRight.hr}">

                    <li class="treeview">
                        <a href="userMaster.htm?act=hrDashboard">
                            <i class="fa fa-dashboard fa-lg" style="color: #424242;"></i> <span style="color: #424242;">My Dashboard</span>
                        </a>
                    </li>
                </c:if>
                <!--//Online Users-->
                <!-- <c:if test="${!sessionScope.userRight.hr}">
                     <li class="treeview">
                         <a href="homeController.htm?act=openHomePage">
                             <i class="fa fa-home fa-lg" style="color: #424242;"></i> <span style="color: #424242;">Homepage</span>
                         </a>
                     </li>
                </c:if>-->
                <!--home page-->
                <!--<c:if test="${sessionScope.userRight.hr}">
                    <!--                    <li class="treeview">
                                            <a href="homeController.htm?act=openHomePage">
                                                <i class="fa fa-home fa-lg" style="color: #424242;"></i> <span style="color: #424242;">Homepage</span>
                                            </a>
                                        </li>-->
                </c:if>
                <!--//home page-->


                <!--Employee Management-->
                <c:if test="${sessionScope.userRight.employeeManagement}">
                    <li class="treeview" style="color: #585858;">
                        <a href="#">
                            <i class="fa fa-users fa-md" style="color: #585858;"></i>
                            <span style="color: #585858;">Employee Management</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="employeeMaster.htm?act=showList"><i class="fa fa-circle-o"></i>Employee Registration</a></li>
                            <!--                            <li><a href="employeeMaster.htm?act=showFinalList"><i class="fa fa-circle-o"></i>Full & Final Employee Details</a></li>-->
                            <li><a href="employeeMaster.htm?act=showFormerList"><i class="fa fa-circle-o"></i>Former Employee Details</a></li>
                            <li><a href="employeeMaster.htm?act=excelUploadRegistration"><i class="fa fa-circle-o"></i>Employee Registration By Excel</a></li>
                            <!--                            <li><a href="employeeMaster.htm?act=excelUploadBasicSalary"><i class="fa fa-circle-o"></i>Basic Salary By Excel</a></li>-->
                            <li><a href="employeeMaster.htm?act=excelUploadHod"><i class="fa fa-circle-o"></i>HOD Upload By Excel</a></li>
                            <li><a href="employeeMaster.htm?act=excelUploadReportingManager"><i class="fa fa-circle-o"></i>Reporting Manager By Excel</a></li>

                        </ul>
                    </li>
                </c:if>



                <!--//Leave & Attendance-->
                <li class="treeview" style="color: #585858;">
                    <a href="#" >
                        <i class="fa fa-info fa-lg" style="color: #585858;"></i>
                        <span style="color: #585858;">Employee Services</span>
                        <i class="fa fa-angle-left pull-right" ></i>
                    </a>
                    <ul class="treeview-menu">
                        <%--  <c:if test="${sessionScope.userRight.travelManagementRights}">--%>
                        <li class="treeview" style="color: #585858;">
                            <a href="#">
                                <i class="fa fa-circle-o"></i>
                                <span>Travel Management</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <c:if test="${sessionScope.userRight.employee and sessionScope.checkReportingManager}">
                                    <li><a href="travelRequestMaster.htm?act=travelList"><i class="fa fa-circle-o"></i>Travel Request</a></li>
                                    </c:if>



                                <li><a href="travelRequestMaster.htm?act=requestResult12345"><i class="fa fa-circle-o"></i>Travel Admin Suggestion</a></li>
                                <li><a href="travelRequestMaster.htm?act=requestResult123456"><i class="fa fa-circle-o"></i>Reporting Manager Approval</a></li>
                                <li><a href="travelRequestMaster.htm?act=requestResult1234567"><i class="fa fa-circle-o"></i>Travel Admin Approval</a></li>
                                <li><a href="travelRequestMaster.htm?act=requestResult12345678"><i class="fa fa-circle-o"></i>HOD Approval</a></li>
                                    <%--<c:if test="${sessionScope.userRight.travelAdmin}">--%>
                                <!--<li><a href="travelMdMaster.htm?act=showMd"><i class="fa fa-circle-o"></i>MD Master </a></li>-->
                                <!--<li><a href="travelAdminMaster.htm?act=viewTravelAdmin"><i class="fa fa-circle-o"></i>Travel Admin Master </a></li>-->
                                <%--</c:if>--%>
                                <li><a href="travelRequestMaster.htm?act=requestResult12345679"><i class="fa fa-circle-o"></i>COO Approvel</a></li>
                                <li><a href="travelRequestMaster.htm?act=requestResult123456790"><i class="fa fa-circle-o"></i>Finance Manager</a></li>

                                <%--<c:if test="${sessionScope.userRight.travelAdmin}">--%>
                                <!--                                    <li><a href="companywiseTravel.htm?act=searchSubmit"><i class="fa fa-circle-o"></i>Company wise Travel</a></li>
                                                                    <li><a href="travelMdMaster.htm?act=showMd"><i class="fa fa-circle-o"></i>MD Master </a></li>-->
                                <%--</c:if>--%>
                                <!--<li><a href="travelRequestMaster.htm?act=viewRequestResultManagerSide"><i class="fa fa-circle-o"></i>Subordinates Travel Report</a></li>-->
                                <c:if test="${!sessionScope.checkReportingManager}">
                                    <li><a href="travelRequestMaster.htm?act=requestResultCEO"><i class="fa fa-circle-o"></i>Travel Result CEO</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.userRight.travelAdmin}">

                                    <!--                                    <li><a href="policyDeviationForAir.htm?act=showPolicyDeviationListForAir"><i class="fa fa-circle-o"></i>Policy Deviation For Air</a></li>
                                                                        <li><a href="policyDeviationForCab.htm?act=showPolicyDeviationListForCab"><i class="fa fa-circle-o"></i>Policy Deviation For Cab</a></li>
                                                                        <li><a href="guestHouseMaster.htm?act=showList"><i class="fa fa-circle-o"></i>Guest House Request</a></li>-->

                                    <!--<li><a href="travelRequestMaster.htm?act=searchTravelRequest"><i class="fa fa-circle-o"></i>Search Travel Request</a></li>-->
                                </c:if>
                                <c:if test="${sessionScope.userRight.itAdmin || sessionScope.userRight.travelAdmin}">
                                    <li><a href="travelRequestMaster.htm?act=viewRequestAdminSubmit"><i class="fa fa-circle-o"></i>Search Travel Request </a></li>
                                    </c:if> 
                            </ul>
                        </li>
                        <%-- </c:if> --%>
                        <%--<c:if test="${sessionScope.userRight.expenseRequestRights}">--%>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-circle-o"></i>
                                <span>Expense Request</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">

                                <c:if test="${sessionScope.userRight.employee}">
                                    <!--<li><a href="travelRequestMaster.htm?act=searchOwnTravelRequest"><i class="fa fa-circle-o"></i>Own Travel Report</a></li>-->
                                    <!--<li><a href="travelRequestMaster.htm?act=searchTravelRequestAdmin"><i class="fa fa-circle-o"></i>Subordinates Travel Report</a></li>-->
                                    <c:if test="${sessionScope.checkReportingManager}">
                                        <li><a href="expenseMaster.htm?act=createExpenseResult"><i class="fa fa-circle-o"></i>Expense Request</a></li>
                                        </c:if>
                                        <c:if test="${sessionScope.isReportingManagerDataExist}">


                                    </c:if>
                                    <!--  <a href="expenseMaster.htm?act=searchSubordinatesExpenseReport"><i class="fa fa-circle-o"></i>Subordinates Expense Report</a></li>-->
                                </c:if>
                                <c:if test="${sessionScope.userRight.travelExpenseAdmin}">
                                    <li><a href="expenseMaster.htm?act=viewExpenseAdminSide"><i class="fa fa-circle-o"></i>Final Expense Approve</a></li>


                                    <li><a href="expenseMaster.htm?act=viewPendingExpenseAdminSide"><i class="fa fa-circle-o"></i>View Pending Expense Request</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.userRight.travelExpenseAdmin or sessionScope.userRight.cashAdvanceView}">
                                    <li><a href="travelRequestMaster.htm?act=viewCashAdvanceSectionByAdmin"><i class="fa fa-circle-o"></i>Cash Advance Request</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.userRight.employee}">
                                    <!--<li><a href="expenseMaster.htm?act=searchOwnExpenseRequest"><i class="fa fa-circle-o"></i>Own Expense Report</a></li>-->
                                </c:if>
                                <!--<li><a href="expenseMaster.htm?act=createExpenseResult"><i class="fa fa-circle-o"></i>Expense Report</a></li>-->
                                <%--</c:if>--%>
                                <li><a href="expenseMaster.htm?act=searchExpenseRequestForTravelAdmin"><i class="fa fa-circle-o"></i>Travel Admin Expense Request</a></li>
                                <li><a href="expenseMaster.htm?act=createExpenseApproveList"><i class="fa fa-circle-o"></i>Reporting Manager Approval</a></li>
                                <li><a href="expenseMaster.htm?act=createExpenseHodApproveList"><i class="fa fa-circle-o"></i>HOD Expense Approval</a></li>
                                    <c:if test="${sessionScope.userRight.hr}">
                                    <li><a href="companyWiseTravelAdminMaster.htm?act=viewCompanyWiseTravelAdmin"><i class="fa fa-circle-o"></i>Company Wise Travel Admin</a></li>
                                    <li><a href="companyWiseAdminHeadMaster.htm?act=viewCompanyWiseAdminHead"><i class="fa fa-circle-o"></i>Admin Head</a></li>
                                    </c:if>
                                <!--<li><a href="expenseMaster.htm?act=expenseRequestViewByAdminHead"><i class="fa fa-circle-o"></i>Admin Head Expense Request</a></li>-->
                                <c:if test="${sessionScope.userRight.itAdmin || sessionScope.userRight.hr}">
                                    <li><a href="expenseMaster.htm?act=searchExpenseRequest"><i class="fa fa-circle-o"></i>Search Expense Request</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.userRight.travelAdmin}">
                                    <li><a href="companyWiseExpense.htm?act=searchSubmit"><i class="fa fa-circle-o"></i>Company wise Expense</a></li>
                                    <li><a href="expenseMaster.htm?act=voucherTypeList"><i class="fa fa-circle-o"></i>Expense Type Master</a></li>
                                    <li><a href="expenseMaster.htm?act=projectList"><i class="fa fa-circle-o"></i>Expense Project Master</a></li>
                                    </c:if>
                                <li><a href="expenseMaster.htm?act=createExpenseAdminRequest"><i class="fa fa-circle-o"></i>Admin verify Expense Approval</a></li>
                                <li><a href="expenseMaster.htm?act=createExpenseAdminHead2Request"><i class="fa fa-circle-o"></i>Admin Head Expense Approval</a></li>
                                <li><a href="expenseMaster.htm?act=createExpensefinanceRequest"><i class="fa fa-circle-o"></i>Finance verify Expense Approval</a></li>
                                <li><a href="expenseMaster.htm?act=createExpensePaymentApproveList"><i class="fa fa-circle-o"></i>Payment Person  Approval</a></li>
                            </ul>
                        </li>
                        <%-- </c:if>--%>


                    </ul>
                </li>





                <li class="treeview">
                    <a href="homeController.htm?act=report">
                        <i class="fa fa-book fa-lg" style="color: #424242;"></i> <span style="color: #424242;">Report</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="studentInfo.htm?act=showStudentList">
                        <i class="fa fa-book fa-lg" style="color: #424242;"></i> <span style="color: #424242;">Student Info</span>
                    </a>
                </li>
<li class="treeview">
                    <a href="teacherInfo.htm?act=showTeacherList">
                        <i  class="fa fa-user" style="font-size:20px" style="color: #424242;"></i> <span style="color: #424242;">Teacher Info</span>
                    
                    </a>
                </li>


                <li class="treeview">
                    <a href="studentResult.htm?act=showstudentResultList">
                       <i class="fa fa-user"  style="font-size:20px"style="color: #424242;"></i><span style="color: #424242;">Student Result</span>  
                    
                    
                    </a>
                </li>


                <li class="treeview">
                    <a href="customerDetails.htm?act=showCustomerList">
                        <i class="fa fa-user" style="font-size:20px" style="color: #424242;;"></i> <span style="color: #424242;">Customer Details</span>
                    </a>
                </li>               



                <c:if test="${sessionScope.userRight.hr}">
                    <li class="treeview" style="color: #585858;">
                        <a href="#">
                            <i class="fa fa-wrench fa-lg" style="color: #585858;"></i>
                            <span style="color: #585858;">Setting</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">

                            <li class="treeview" style="color: #585858;">
                                <a href="#">
                                    <i class="fa fa-circle-o"></i>
                                    <span>Masters</span>
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a href="companyMaster.htm?act=showList"><i class="fa fa-circle-o"></i>Company Master</a></li>
                                    <li><a href="levelMaster.htm?act=showList"><i class="fa fa-circle-o"></i>Level Master</a></li>
                                    <li><a href="departmentMaster.htm?act=showList"><i class="fa fa-circle-o"></i>Department Master</a></li>
                                    <li><a href="subDepartmentMaster.htm?act=showList"><i class="fa fa-circle-o"></i>Sub Department Master</a></li>
                                    <li><a href="designationMaster.htm?act=showList"><i class="fa fa-circle-o"></i>Designation Master</a></li>
                                    <li><a href="locationMaster.htm?act=showList"><i class="fa fa-circle-o"></i>State Master</a></li>
                                    <li><a href="zydexLocationMaster.htm?act=showList"  ><i class="fa fa-circle-o"></i>Location Master</a></li>
                                    <li><a href="thoughtMaster.htm?act=createthought"><i class="fa fa-circle-o"></i>Homepage Setting</a></li>

                                </ul>
                            </li>

                            <li class="treeview" style="color: #585858;">
                                <a href="#">
                                    <i class="fa fa-circle-o"></i>
                                    <span>Travel Masters</span>
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a href="cityType.htm?act=showList"><i class="fa fa-circle-o"></i>City Type</a></li>

                                    <li><a href="cityMaster.htm?act=showCityMasterList"><i class="fa fa-circle-o"></i>City Master</a></li>
                                    <li><a href="modeOfTravel.htm?act=showModeOfTravelList"><i class="fa fa-circle-o"></i>Mode  Of Travel</a></li> 
                                    <li><a href="travelAdminMaster.htm?act=viewTravelAdmin"><i class="fa fa-circle-o"></i>Travel Admin Master </a></li> 
                                    <li><a href="cooMaster.htm?act=showCooMasterList"><i class="fa fa-circle-o"></i>Coo Master</a></li>
                                    <li><a href="financeMaster.htm?act=showFinanceMasterList"><i class="fa fa-circle-o"></i>Finance Master</a></li>
                                </ul>
                            </li>

                            <li class="treeview" style="color: #585858;">
                                <a href="#">
                                    <i class="fa fa-circle-o"></i>
                                    <span>Policies</span>
                                    <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a href="travelPolicy.htm?act=showTravelPolicyList"><i class="fa fa-circle-o"></i>Travel Policy</a></li>
                                    <li><a href="policyDeviationMaster.htm?act=showPolicyDeviationList"><i class="fa fa-circle-o"></i>Food & Beverages Policy</a></li>
                                    <li><a href="policyAccommodation.htm?act=showPolicyAccommodationList"><i class="fa fa-circle-o"></i>Policy Accommodation</a></li>
                                </ul>
                            </li>






                            <!--                            <li><a href="resourcesOf.htm?act=searchSubmit"><i class="fa fa-circle-o"></i>Resources Master</a></li>
                                                        <li><a href="divisionMaster.htm?act=divisionList"><i class="fa fa-circle-o"></i>Division Master</a></li>-->
                            <%--<c:if test="${sessionScope.userRight.hr}">
<!--                                <li><a href="meetingRoomMaster.htm?act=viewMeetingRoom"><i class="fa fa-circle-o"></i>Meeting Room Master</a></li>-->
                            </c:if>--%>
                            <!--                            <li><a href="levelWiseResignation.htm?act=showList"><i class="fa fa-circle-o"></i>Level Wise Resignation</a></li>-->

                            <!--                            <li><a href="holidayMaster.htm?act=showList"><i class="fa fa-circle-o"></i>Holiday Master</a></li>
                                                        <li><a href="holidayMaster.htm?act=holidayExcelUpload"><i class="fa fa-circle-o"></i>Holiday Excel Upload</a></li>
                                                        <li><a href="policyMaster.htm?act=showAllowanceList"><i class="fa fa-circle-o"></i>Allowance Master</a></li>
                                                        <li><a href="ctcAllowance.htm?act=showList"><i class="fa fa-circle-o"></i>CTC Master</a></li>
                                                        <li><a href="perquisitesMasterController.htm?act=showList"><i class="fa fa-circle-o"></i>Perquisites Master</a></li>
                                                        <li><a href="deductionMaster.htm?act=showList"><i class="fa fa-circle-o"></i>Deduction Master</a></li>
                                                        <li><a href="sbiInterestMaster.htm?act=showList"><i class="fa fa-circle-o"></i>SBI Interest Master</a></li>
                                                        <li><a href="heatDaysAllowance.htm?act=showList"><i class="fa fa-circle-o"></i>Heat Days Allowance</a></li>
                                                        <li><a href="goodAttendanceAllowance.htm?act=showList"><i class="fa fa-circle-o"></i>Good Attendance Allowance</a></li>-->
                            <!--                            <li><a href="currencyMaster.htm?act=searchSubmitConnect"><i class="fa fa-circle-o"></i>SQL Connect Master</a></li>
                                                        <li><a href="visitorCardMaster.htm?act=visitorCardMaster"><i class="fa fa-circle-o"></i>Visitor Card Master</a></li>
                                                        <li><a href="visitorCardCheck.htm?act=visitorCardCheck"><i class="fa fa-circle-o"></i>Visitor Card Check Master</a></li>
                                                        <li><a href="companyWiseEmail.htm?act=showList"><i class="fa fa-circle-o"></i>Company Wise Email</a></li>-->

                            <!--<li><a href="currencyMaster.htm?act=searchSubmit"><i class="fa fa-circle-o"></i>Currency Master</a></li>-->                        
                            <!--                        <li><a href="visitorVisitedLocation.htm?act=createClick"><i class="fa fa-circle-o"></i>Visitor Visited Location</a></li>-->
                            <!--<li><a href="timeAttandanceFlaxibleMaster.htm?act=showList"><i class="fa fa-circle-o"></i>Time Attendance Flexible</a></li>-->
                            <!--<li><a href="urlMaster.htm?act=viewUrlResult"><i class="fa fa-pie-chart fa-lg"></i>Web Service URL</a></li>-->
                            <!--<li><a href="policyMaster.htm?act=showList"><i class="fa fa-circle-o"></i>Policy</a></li>-->
                            <!--<li><a href="appraisalPerformance.htm?act=trasferCompatencyEvaluationInEmployeeMaster"><i class="fa fa-pie-chart fa-lg"></i>Competency Evaluation Transfer</a></li>-->
                            <!--                            <li><a href="payrollESIC.htm?act=showList"><i class="fa fa-circle-o"></i>ESIC Challan</a></li>-->
                            <%--<c:if test="${!sessionScope.userRight.employeeManagement}">--%>
                            <!--<li><a href="questionLibrary.htm?act=QuestionLibraryCreate"><i class="fa fa-circle-o"></i>Question Library</a></li>-->
                            <!--<li><a href="questionLibrary.htm?act=questionPaperView"><i class="fa fa-circle-o"></i>Question Paper</a></li>-->
                            <%--</c:if>--%>
                            <!--<li><a href="classifiedBox.htm?act=showResult"><i class="fa fa-circle-o"></i>Classified Setting</a></li>-->
                            <!--<li><a href="retirementAge.htm?act=showList"><i class="fa fa-circle-o"></i>Retirement Ages</a></li>-->
                            <!--<li><a href="emergencyContact.htm?act=createContact"><i class="fa fa-circle-o"></i>Emergency Contacts</a></li>-->



                            <!--                             <li class="treeview" style="color: #585858;">
                                                            <a href="#">
                                                                <i class="fa fa-circle-o"></i>
                                                                <span>Email Template Master</span>
                                                                <i class="fa fa-angle-left pull-right"></i>
                                                            </a>
                                                            <ul class="treeview-menu">
                                                                <li><a href="emailTemplate.htm?act=searchSubmit"><i class="fa fa-circle-o"></i>Email Template</a></li>
                                                                <li><a href="emailAddMaster.htm?act=searchSubmit"><i class="fa fa-circle-o"></i>Email Add Master</a></li>
                                                            </ul>
                                                        </li>-->
                            <!--                            <li>
                                                            <a href="#">
                                                                <i class="fa fa-circle-o"></i>
                                                                <span>Certificate</span>
                                                                <i class="fa fa-angle-left pull-right"></i>
                                                            </a>
                                                            <ul class="treeview-menu">
                                                                <li><a href="certificateTemplate.htm?act=searchSubmit"><i class="fa fa-circle-o"></i>Certificate Template Result</a></li>
                                                                <li><a href="certificateTemplate.htm?act=searchEmployeeDetail&search=none"><i class="fa fa-circle-o"></i> Assign Certificate</a></li>
                                                            </ul>
                                                        </li>-->
                            <!--                            <li class="active treeview">
                                                            <a href="dynamicApprovalSetting.htm?act=viewDynamicCycle">
                                                                <i class="fa fa-clock-o fa-lg"></i> <span>Approval Cycle</span>
                                                            </a>
                                                        </li>-->
                            <!--                            <li class="active treeview">
                                                            <a href="costCenterMaster.htm?act=showList">
                                                                <i class="fa fa-clock-o"></i> <span>Cost Center Master</span>
                                                            </a>
                                                        </li>
                                                        <li class="active treeview">
                                                            <a href="plantList.htm?act=showPlantList">
                                                                <i class="fa fa-clock-o"></i> <span>Plant Master</span>
                                                            </a>
                                                        </li>-->
                        </ul>
                    </li>
                </c:if>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

</html>
<script>
    $(document).ready(function () {
        var selfIdex = ${sessionScope.employeeInfo.id};
        $('#selfId').attr('href', 'attendanceRegularizationMaster.htm?act=showOwnAttandanceOfSubordinate&id=' + getValueFromApp(selfIdex.toString()));
    });
</script>

