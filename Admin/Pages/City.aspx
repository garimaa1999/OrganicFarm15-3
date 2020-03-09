<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.master" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="Admin_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-5 align-self-center">
                        <h4 class="page-title">City Details</h4>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">City</li>
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
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">State ID: </label>
                                        <div class="col-sm-9">
                                           <%-- <asp:DropDownList class="form-control" ID="ddlStateID" runat="server">
                                            </asp:DropDownList>     --%>                           
                                             <asp:DropDownList ID="ddlStateID" class="form-control" runat="server" DataSourceID="SqlDataSource3" 
            DataTextField="StateName" DataValueField="StateId">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
            SelectCommand="SELECT * FROM [StateMaster]"></asp:SqlDataSource>
       
    
                                         </div>
                                    </div>    
                                    
                                   <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">City Name: </label>
                                        <div class="col-sm-9">
                                           <asp:TextBox class="form-control" id="txtCityName" runat="server">
                                            </asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtCityName" ErrorMessage="*City Name Should Not Be Empty*" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                        </div>
                                    </div>
                                  
                                    
                       <div class="row button-group justify-content-md-center">
    
                            <div class="col-lg-2 col-md-4">
                               <asp:Button ID="btnInsert" runat="server"  
                                    class="btn btn-rounded btn-block btn-outline-primary" Text="Insert" 
                                    onclick="btnInsert_Click" />
                     <%--<button type="button" class="btn btn-rounded btn-block btn-outline-primary">Primary</button>--%>    
                                            </div>
                                    </div>
                                    
                                     <div class="table-responsive">
                                    <asp:GridView ID="gvCity" runat="server" AutoGenerateColumns="False" 
                                            class="table table-striped table-bordered display nowrap" DataKeyNames="CityId" 
                                            DataSourceID="SqlDataSource5" 
                                            EmptyDataText="There are no data records to display.">
                                            <Columns>
                                                <asp:BoundField DataField="CityId" HeaderText="CityId" ReadOnly="True" 
                                                    SortExpression="CityId" />
                                                <asp:BoundField DataField="CityName" HeaderText="CityName" 
                                                    SortExpression="CityName" />
                                                <asp:BoundField DataField="StateId" HeaderText="StateId" 
                                                    SortExpression="StateId" />
                                                <asp:CommandField ButtonType="Image" 
                                                    CancelImageUrl="~/Admin/Pages/Images/update (2).jpeg" 
                                                    EditImageUrl="~/Admin/Pages/Images/editIcon.jpeg"
                                                    HeaderText="Edit" 
                                                    ShowEditButton="True" UpdateImageUrl="~/Admin/Pages/Images/update (1).jpeg">
                                                
                                                </asp:CommandField>
                                                <asp:CommandField ButtonType="Image" 
                                                    DeleteImageUrl="~/Admin/Pages/Images/DeleteIcon.jpeg" 
                                                    EditImageUrl="~/Admin/Pages/Images/DeleteIcon.jpeg" HeaderText="Delete" 
                                                    ShowDeleteButton="True" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
                                            DeleteCommand="DELETE FROM [CityMaster] WHERE [CityId] = @CityId" 
                                            InsertCommand="INSERT INTO [CityMaster] ([CityName], [StateId]) VALUES (@CityName, @StateId)" 
                                            ProviderName="<%$ ConnectionStrings:OrganicFarmConnectionString.ProviderName %>" 
                                            SelectCommand="SELECT [CityId], [CityName], [StateId] FROM [CityMaster]" 
                                            UpdateCommand="UPDATE [CityMaster] SET [CityName] = @CityName, [StateId] = @StateId WHERE [CityId] = @CityId">
                                            <DeleteParameters>
                                                <asp:Parameter Name="CityId" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="CityName" Type="String" />
                                                <asp:Parameter Name="StateId" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="CityName" Type="String" />
                                                <asp:Parameter Name="StateId" Type="Int32" />
                                                <asp:Parameter Name="CityId" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
    </div>
                                    </div>
</asp:Content>

