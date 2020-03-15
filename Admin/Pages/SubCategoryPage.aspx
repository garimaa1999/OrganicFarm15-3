<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.master" AutoEventWireup="true" CodeFile="SubCategoryPage.aspx.cs" Inherits="Admin_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-5 align-self-center">
                        <h4 class="page-title">Sub Category Details</h4>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Sub Category</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div>

            </div>
 <div class="card-body bg-light">
  <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Category Name: </label>
                                        <div class="col-sm-9">
                                            <%--<input type="text" class="form-control" id="Text1" placeholder="First Name Here">--%>
                                             <asp:DropDownList ID="ddlCatName" class="form-control" runat="server" 
                                                         DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
                                                         DataValueField="CategoryID">
                                                     </asp:DropDownList>
                                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                         ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
                                                         SelectCommand="SELECT * FROM [CategoryDetail]"></asp:SqlDataSource>
                                        </div>
                                    </div>   
    <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Sub Category Name: </label>
                                        <div class="col-sm-9">
                                            <%--<input type="text" class="form-control" id="Text1" placeholder="First Name Here">--%>
                                            <asp:TextBox class="form-control" id="txtSubCatName" runat="server">
                                            </asp:TextBox>
                                             <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtSubCatNamet" ErrorMessage="*Sub Catergory Name Should Not Be Empty*" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                        </div>
                                    </div>   
                                    
                                     <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Is Active : </label>
                                        <div class="col-sm-9">      
                                            <asp:DropDownList ID="DDLIsActive" class=" form-control " runat="server">
            <asp:ListItem Value="1">ON</asp:ListItem>
            <asp:ListItem Value="0">OFF</asp:ListItem>
        </asp:DropDownList>                                   
                                           <%--<asp:TextBox class="form-control" id="txtIsActive" runat="server">
                                            </asp:TextBox>--%>
                                        </div>
                                    </div>
                                    <%--</div>  --%>
                       <div class="row button-group justify-content-md-center">
    
                            <div class="col-lg-2 col-md-4">
                               <asp:Button ID="btnInsert" runat="server"  
                                    class="btn btn-rounded btn-block btn-outline-primary" Text="Insert" 
                                    onclick="btnInsert_Click" />
                     <%--<button type="button" class="btn btn-rounded btn-block btn-outline-primary">Primary</button>--%>    
                                            </div>
                                    </div>
                                    
                                     <div class="table-responsive">
                      <asp:GridView ID="gvSubCategory" runat="server" AutoGenerateColumns="False" 
                                            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                                            CellPadding="3" class="table table-striped table-bordered display nowrap" 
                                            DataKeyNames="SubCategoryID" DataSourceID="SqlDataSource8" 
                                            EmptyDataText="There are no data records to display." GridLines="Horizontal">
                                            <AlternatingRowStyle BackColor="#F7F7F7" />
                                            <Columns>
                                                <asp:BoundField DataField="SubCategoryID" HeaderText="SubCategoryID" 
                                                    ReadOnly="True" SortExpression="SubCategoryID" />
                                                <asp:BoundField DataField="SubCategoryName" HeaderText="SubCategoryName" 
                                                    SortExpression="SubCategoryName" />
                                                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
                                                    SortExpression="CategoryID" />
                                                <asp:BoundField DataField="IsActive" HeaderText="IsActive" 
                                                    SortExpression="IsActive" />
                                                <asp:CommandField ButtonType="Image" 
                                                    CancelImageUrl="~/Admin/Pages/Images/update (2).jpeg" 
                                                    EditImageUrl="~/Admin/Pages/Images/editIcon.jpeg" HeaderText="Edit" 
                                                    ShowEditButton="True" UpdateImageUrl="~/Admin/Pages/Images/update (1).jpeg" />
                                                <asp:CommandField ButtonType="Image" 
                                                    DeleteImageUrl="~/Admin/Pages/Images/DeleteIcon.jpeg" HeaderText="Delete" 
                                                    ShowDeleteButton="True" />
                                            </Columns>
                                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
                                            DeleteCommand="DELETE FROM [SubCategoryDetail] WHERE [SubCategoryID] = @SubCategoryID" 
                                            InsertCommand="INSERT INTO [SubCategoryDetail] ([SubCategoryName], [CategoryID], [IsActive]) VALUES (@SubCategoryName, @CategoryID, @IsActive)" 
                                            ProviderName="<%$ ConnectionStrings:OrganicFarmConnectionString.ProviderName %>" 
                                            SelectCommand="SELECT [SubCategoryID], [SubCategoryName], [CategoryID], [IsActive] FROM [SubCategoryDetail]" 
                                            UpdateCommand="UPDATE [SubCategoryDetail] SET [SubCategoryName] = @SubCategoryName, [CategoryID] = @CategoryID, [IsActive] = @IsActive WHERE [SubCategoryID] = @SubCategoryID">
                                            <deleteparameters>
                                                <asp:Parameter Name="SubCategoryID" Type="Int32" />
                                            </deleteparameters>
                                            <insertparameters>
                                                <asp:Parameter Name="SubCategoryName" Type="String" />
                                                <asp:Parameter Name="CategoryID" Type="Int32" />
                                                <asp:Parameter Name="IsActive" Type="Int32" />
                                            </insertparameters>
                                            <updateparameters>
                                                <asp:Parameter Name="SubCategoryName" Type="String" />
                                                <asp:Parameter Name="CategoryID" Type="Int32" />
                                                <asp:Parameter Name="IsActive" Type="Int32" />
                                                <asp:Parameter Name="SubCategoryID" Type="Int32" />
                                            </updateparameters>
                                        </asp:SqlDataSource>
                                        
                                    </div>
                                    </div>
</asp:Content>

