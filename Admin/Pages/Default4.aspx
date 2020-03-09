<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Admin_Pages_Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div class="card-body bg-light">
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- Row -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-body">
                                <center class="m-t-30"> 
                                    <asp:Image ID="ProfileImage" class="rounded-circle" width="150" runat="server" />
                                    <%--<img src="../../assets/images/users/5.jpg" class="rounded-circle" width="150" />--%>
                                    <h4 class="card-title m-t-10">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4>
                                    <h6 class="card-subtitle">Admin</h6>
                                   


                                    <asp:LinkButton ID="lbChangePic" runat="server" onclick="lbChangePic_Click">Change 
                                    Profile Photo</asp:LinkButton>
                                    <br />
                                    <asp:Panel ID="changeProfilePic" runat="server" BorderColor="Black" 
                                        Height="312px" Visible="False">
                                        <div class="form-group row">
                                           <div class="col-sm-9"> 
                                        <label class="col-sm-12 text-right control-label col-form-label">Choose New Profile Photo:</label>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="input-group mb-12">
                                                <div class="input-group-prepend">
                                                 <asp:Button ID="btnUpload" runat="server" class="btn btn-success" Text="Upload" 
                                                        onclick="btnUpload_Click" />
                                               <%--<button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button>--%>
                                                </div>
                                                <br />
                                    <div class="custom-file">
                                    <asp:FileUpload ID="fuProfile" runat="server"  class="custom-file-input" />
                                                    <asp:Label ID="FileUpload" runat="server" class="custom-file-label" Text="Label">Choose File</asp:Label>
                                                    
                                                </div>
                                                <br/>
                                                <asp:Label runat="server" id="lblPic" Text=""></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                     
                                        <br />
                                        <br />
                                         <div class="row button-group ">
    
                            <div class="col-lg-2 col-md-4 align-items-lg-start">
                               <asp:Button ID="btnInsert" runat="server"  
                                    class="btn btn-rounded btn-block btn-outline-primary" Text="Change" 
                                    onclick="btnInsert_Click" Width="150px"/>
                    
                                            </div>
                                    </div>
                                    </asp:Panel>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                   


                                </center>
                            </div>
                        
                          
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <!-- Tabs -->
                            <ul class="nav nav-pills custom-pills" id="Ul1" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="A1" data-toggle="pill" href="#current-month" role="tab" aria-controls="pills-timeline" aria-selected="true">My Profile</a>
                                </li>
                                 
                            </ul>
                            <!-- Tabs -->
                            <div class="tab-content" id="Div1">
                                <div class="tab-pane fade show active" id="Div2" role="tabpanel" aria-labelledby="pills-timeline-tab">
                                    <div class="card-body">
                                        <div class="profiletimeline m-t-0">
                                     <div class="sl-item">


                                      <div class="card-body">
                                          <%--<h4 class="card-title">Personal Info</h4>--%>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Admin Name:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox class="form-control" id="txtAdminName" runat="server">
                                            </asp:TextBox>
                                            <%--<input type="text" class="form-control" id="fname" placeholder="First Name Here">--%>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Admin Password:</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox runat="server" class="form-control" id="txtAdminPassword" >
                                            </asp:TextBox>
                                            <%--<input type="text" class="form-control" id="txtAdminPassword" placeholder="Enter Password Here">--%>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label">Contact No:</label>
                                        <div class="col-sm-9">
                                         <asp:TextBox runat="server" class="form-control" id="txtAdminContactno">
                                            </asp:TextBox>
                                            <%--<input type="text" class="form-control" id="cono1" placeholder="Contact No Here">--%>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="email1" class="col-sm-3 text-right control-label col-form-label">Email ID:</label>
                                        <div class="col-sm-9">
                                         <asp:TextBox runat="server" class="form-control" id="txtEmailID" >
                                            </asp:TextBox>
                                            <%--<input type="email" class="form-control" id="email1" placeholder="Email Here">--%>
                                            <br />
                                            <br />
                                            <br />

                                             <div class="col-lg-2 col-md-4 align-items-lg-start">
                               <asp:Button ID="btnChangeDetails" runat="server" 
                                                     class="btn btn-rounded btn-block btn-outline-primary" Text="Change" 
                                                     Width="150px" onclick="btnChangeDetails_Click"/>
                    
                                            </div>

                                            <br />
                                        </div>
                                    </div>
                                    
                                </div>
                                           
                                             </div>
                                                    </div>
                                                    </div>
                                                    </div>
                                                    </div>
                                                    </div>
                                                    </div>
                                                    </div></div></div>
                                                    </div>
    </form>
</body>
</html>
