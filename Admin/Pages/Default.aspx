<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Pages_Default" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
                                     <br />
                                     <br />
                                     <div class="col-lg-4 col-xlg-3 col-md-5">
                                         <div class="card">
                                             <div class="card-body">
                                                 <center class="m-t-30">
                                                     <asp:Image ID="Image1" runat="server" class="rounded-circle" width="150" />
                                                     <%--<img src="../../assets/images/users/5.jpg" class="rounded-circle" width="150" />--%>
                                                     <h4 class="card-title m-t-10">
                                                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                                     </h4>
                                                     <h6 class="card-subtitle">
                                                         Admin</h6>
                                                     <p class="card-subtitle">
                                                         <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                                                     </p>
                                                     <asp:Panel ID="Panel1" runat="server" Height="60px" Visible="False" 
                                                         BackColor="#3333CC" BorderColor="Blue">
                                                         <asp:FileUpload ID="FUSoilType" runat="server" />
                                                         <asp:Label ID="Label2" runat="server"></asp:Label>
                                                         <br />
                                                         <asp:Button ID="upload" runat="server" onclick="upload_Click" Text="upload" />
                                                         <br />
                                                         <br />
                                                     </asp:Panel>
                                                     <p>
                                                     </p>
                                                     <p class="card-subtitle">
                                                         &nbsp;</p>
                                                 </center>
                                             </div>
                                         </div>
                                     </div>
                                 
                </div>
    </div>
    </form>
</body>
</html>
