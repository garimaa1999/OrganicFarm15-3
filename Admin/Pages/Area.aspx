<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.master" AutoEventWireup="true" CodeFile="Area.aspx.cs" Inherits="Admin_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-5 align-self-center">
                        <h4 class="page-title">Area Details</h4>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Area</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div>

            </div>
 <div class="card-body bg-ligh
                                             <asp:UpdatePanel id="up1" runat="server">
                                              <ContentTemplate>
                                              <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">State ID: </label>
                                        <div class="col-sm-9">
                                              <asp:DropDownList ID="ddlstate" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="StateName" class="form-control"
            DataValueField="StateId" AutoPostBack="true">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
            SelectCommand="SELECT * FROM [StateMaster]"></asp:SqlDataSource>  
                                              </div>
                                    </div>    
                                    <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">City ID: </label>
                                        <div class="col-sm-9">
                      <asp:DropDownList ID="ddlcityid" runat="server" DataSourceID="SqlDataSource2" 
            DataTextField="CityName" DataValueField="CityId" class="form-control">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
            SelectCommand="SELECT * FROM [CityMaster] WHERE ([StateId] = @StateId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlstate" Name="StateId" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                                                 </div>
                                    </div>                 
                                         
          

                                              </ContentTemplate>
                                            </asp:UpdatePanel>
                                            
                                   <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Area Name: </label>
                                        <div class="col-sm-9">                                           
                                          <asp:TextBox class="form-control" id="txtAreaName" runat="server">
                                            </asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtAreaName" ErrorMessage="*Area Name Should Not Be Empty*" 
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

         <div>
    <div class="table-responsive">
                                    
                                     <asp:GridView ID="gvArea" 
                                         class="table table-striped table-bordered display nowrap" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="AreaId" DataSourceID="SqlDataSource3" 
        EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#E7E7FF" 
                                         BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                                         <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="AreaId" HeaderText="AreaId" ReadOnly="True" 
                SortExpression="AreaId" />
            <asp:BoundField DataField="AreaName" HeaderText="AreaName" 
                SortExpression="AreaName" />
            <asp:BoundField DataField="CityId" HeaderText="CityId" 
                SortExpression="CityId" />
            <asp:CommandField HeaderText="Edit" ShowEditButton="True" ButtonType="Image" 
                EditImageUrl="~/Admin/Pages/Images/editIcon.jpeg" 
                CancelImageUrl="~/Admin/Pages/Images/update (2).jpeg" 
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
        DeleteCommand="DELETE FROM [AreaMaster] WHERE [AreaId] = @AreaId" 
        InsertCommand="INSERT INTO [AreaMaster] ([AreaName], [CityId]) VALUES (@AreaName, @CityId)" 
        ProviderName="<%$ ConnectionStrings:OrganicFarmConnectionString.ProviderName %>" 
        SelectCommand="SELECT [AreaId], [AreaName], [CityId] FROM [AreaMaster]" 
        UpdateCommand="UPDATE [AreaMaster] SET [AreaName] = @AreaName, [CityId] = @CityId WHERE [AreaId] = @AreaId">
        <DeleteParameters>
            <asp:Parameter Name="AreaId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AreaName" Type="String" />
            <asp:Parameter Name="CityId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AreaName" Type="String" />
            <asp:Parameter Name="CityId" Type="Int32" />
            <asp:Parameter Name="AreaId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>   
                                 
                </div>
    </div>
</asp:Content>

