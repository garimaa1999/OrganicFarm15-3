<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.master" AutoEventWireup="true" CodeFile="State.aspx.cs" Inherits="Admin_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-5 align-self-center">
                        <h4 class="page-title">State Details</h4>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">State</li>
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
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">State Name: </label>
                                        <div class="col-sm-9">
                                          
                                           <asp:TextBox class="form-control" id="txtStateName" runat="server">
                                            </asp:TextBox>
                                              <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtStateName" ErrorMessage="*State Name Should Not Be Empty*" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                        </div>
                                    </div>
                                    
                       <div class="row button-group justify-content-md-center ">
    
                            <div class="col-lg-2 col-md-4">
                               <asp:Button ID="btnInsert" runat="server"  
                                    class="btn btn-rounded btn-block btn-outline-primary" Text="Insert" 
                                    onclick="btnInsert_Click" />
                     <%--<button type="button" class="btn btn-rounded btn-block btn-outline-primary">Primary</button>--%>    
                                            </div>
                                    </div>
                                     <div class="table-responsive">
                                  <asp:GridView ID="gvState" runat="server" AutoGenerateColumns="False" 
                                            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                                            CellPadding="3" class="table table-striped table-bordered display nowrap" 
                                            DataKeyNames="StateId" DataSourceID="SqlDataSource7" 
                                            EmptyDataText="There are no data records to display." GridLines="Horizontal">
                                            <AlternatingRowStyle BackColor="#F7F7F7" />
                                            <Columns>
                                                <asp:BoundField DataField="StateId" HeaderText="StateId" ReadOnly="True" 
                                                    SortExpression="StateId" />
                                                <asp:BoundField DataField="StateName" HeaderText="StateName" 
                                                    SortExpression="StateName" />
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
                                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
                                            DeleteCommand="DELETE FROM [StateMaster] WHERE [StateId] = @StateId" 
                                            InsertCommand="INSERT INTO [StateMaster] ([StateName]) VALUES (@StateName)" 
                                            ProviderName="<%$ ConnectionStrings:OrganicFarmConnectionString.ProviderName %>" 
                                            SelectCommand="SELECT [StateId], [StateName] FROM [StateMaster]" 
                                            UpdateCommand="UPDATE [StateMaster] SET [StateName] = @StateName WHERE [StateId] = @StateId">
                                            <DeleteParameters>
                                                <asp:Parameter Name="StateId" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="StateName" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="StateName" Type="String" />
                                                <asp:Parameter Name="StateId" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
    </div>
                                    </div>
</asp:Content>

