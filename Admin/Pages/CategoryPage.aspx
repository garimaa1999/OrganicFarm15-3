<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.master" AutoEventWireup="true" CodeFile="CategoryPage.aspx.cs" Inherits="Admin_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-5 align-self-center">
                        <h4 class="page-title">Category Details</h4>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Category</li>
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
                                            <asp:TextBox class="form-control" id="txtCatName" runat="server">
                                            </asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtCatName" ErrorMessage="*Catergory Name Should Not Be Empty*" 
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
                   <asp:GridView ID="gvCategory" 
                                            class="table table-striped table-bordered display nowrap" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CategoryID" DataSourceID="SqlDataSource4" 
        EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#E7E7FF" 
                                            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                                                               <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" 
                SortExpression="CategoryID" />
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" 
                SortExpression="CategoryName" />
            <asp:BoundField DataField="IsActive" HeaderText="IsActive" 
                SortExpression="IsActive" />
            <asp:CommandField HeaderText="Edit" ShowEditButton="True" ButtonType="Image" 
                CancelImageUrl="~/Admin/Pages/Images/update (2).jpeg" 
                EditImageUrl="~/Admin/Pages/Images/editIcon.jpeg" 
                UpdateImageUrl="~/Admin/Pages/Images/update (1).jpeg" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" 
                ButtonType="Image" DeleteImageUrl="~/Admin/Pages/Images/DeleteIcon.jpeg" />
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
        DeleteCommand="DELETE FROM [CategoryDetail] WHERE [CategoryID] = @CategoryID" 
        InsertCommand="INSERT INTO [CategoryDetail] ([CategoryName], [IsActive]) VALUES (@CategoryName, @IsActive)" 
        ProviderName="<%$ ConnectionStrings:OrganicFarmConnectionString.ProviderName %>" 
        SelectCommand="SELECT [CategoryID], [CategoryName], [IsActive] FROM [CategoryDetail]" 
        UpdateCommand="UPDATE [CategoryDetail] SET [CategoryName] = @CategoryName, [IsActive] = @IsActive WHERE [CategoryID] = @CategoryID">
        <DeleteParameters>
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="IsActive" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="IsActive" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
                                    </div>
</asp:Content>

