<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.master" AutoEventWireup="true" CodeFile="Farm.aspx.cs" Inherits="Admin_Pages_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-5 align-self-center">
                        <h4 class="page-title">Farm Details</h4>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Farm Detail</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
          
 <div class="card-body bg-light">
                                    
                                    
                                   <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Farm Name: </label>
                                        <div class="col-sm-9">                                           
                                           <asp:TextBox class="form-control" id="txtFarmName" runat="server">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                   
                                            <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Soil Type Name: </label>
                                        <div class="col-sm-9">     
                                                   <asp:DropDownList ID="ddlSoilId" runat="server" class="form-control" 
                                                                DataSourceID="SqlDataSource4" DataTextField="SoilTypeName" 
                                                                DataValueField="SoilTypeID" AutoPostBack="true">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
                                                                SelectCommand="SELECT * FROM [SoilTypeDetail]"></asp:SqlDataSource>
                                        </div>
                                    </div>
                                   <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Size Of Farm: </label>
                                        <div class="col-sm-9">                                           
                                           <asp:TextBox class="form-control" id="txtsizeoffarm" runat="server">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                 
                                     <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Price: </label>
                                        <div class="col-sm-9">                                          
                                            <asp:TextBox class="form-control" id="TxtPrice" runat="server">
                                            </asp:TextBox>
                                            
                                        </div>
                                    </div>
                                    <div class="form-group row p-b-15">
            <label class="col-sm-3 text-right control-label col-form-label" 
                for="inputEmail3">
            State Name:
            </label>
            <div class="col-sm-9">
                <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="true" class="form-control" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
                    SelectCommand="SELECT * FROM [StateMaster]"></asp:SqlDataSource>
            </div>
        </div>
             <div class="form-group row p-b-15">
            <label class="col-sm-3 text-right control-label col-form-label" 
                for="inputEmail3">
            City Name:
            </label>
            <div class="col-sm-9">
                <asp:DropDownList ID="ddlcityid" runat="server" AutoPostBack="True" 
                    class="form-control" DataSourceID="SqlDataSource2" DataTextField="CityName" 
                    DataValueField="CityId">
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
        <div class="form-group row p-b-15">
            <label class="col-sm-3 text-right control-label col-form-label" 
                for="inputEmail3">
            Area Name: 
            </label>
           <div class="col-sm-9">
                <asp:DropDownList ID="ddlArea" runat="server" class="form-control" DataSourceID="sdscity" 
                    DataTextField="AreaName" DataValueField="AreaId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sdscity" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
                    SelectCommand="SELECT * FROM [AreaMaster] WHERE ([CityId] = @CityId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlcityid" Name="CityId" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
                                     <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Description: </label>
                                        <div class="col-sm-9">                                          
                                            <asp:TextBox class="form-control" id="TxtDescription" runat="server">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                     <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Age Of Property: </label>
                                        <div class="col-sm-9">                                          
                                            <asp:TextBox class="form-control" id="TxtAgeOfProperty" runat="server">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 text-right control-label col-form-label">Image:</label>
                                        <div class="col-sm-9">

                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <%--<span class="input-group-text">Upload</span>--%>
                                                    <asp:Button ID="btnUpload" runat="server" class="btn btn-success" Text="Upload" onclick="btnUpload_Click" 
                                                         />
                                               <%--<button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button>--%>
                                                </div>
                                                <div class="custom-file">
                                                    <%--<input type="file" class="custom-file-input" id="inputGroupFile01">--%>
                                                    <%--<label class="custom-file-label" for="inputGroupFile01">Choose file</label>--%>
                                                    <asp:FileUpload ID="FUFarm" runat="server"  class="custom-file-input" />
                                                    <asp:Label ID="FileUpload" runat="server" class="custom-file-label" Text="Label">Choose File</asp:Label>
                                                <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Image : </label>
                                        <div class="col-sm-9">                
                                            <asp:Image ID="Image1" runat="server" />        
                                           
                                        </div>
                                    </div>
                                   <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Is Active : </label>
                                        <div class="col-sm-9">   
                                         <asp:DropDownList ID="DDLIsActive" class=" form-control " runat="server">
                                            <asp:ListItem Value="1">ON</asp:ListItem>
                                            <asp:ListItem Value="0">OFF</asp:ListItem>
                                        </asp:DropDownList>                                                              
                                           <%--<asp:TextBox class="form-codropntrol" id="txtIsActive" runat="server">
                                            </asp:TextBox>--%>
                                        </div>
                                    </div>
                       <div class="row button-group justify-content-md-center">
    
                            <div class="col-lg-2 col-md-4">
                               <asp:Button ID="btnInsert" runat="server"  
                                    class="btn btn-rounded btn-block btn-outline-primary" Text="Insert" 
                                    onclick="btnInsert_Click" />
                    
                                            </div>
                                    </div>
                                    <div>
       <asp:GridView ID="gvFarm" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="FarmID" DataSourceID="sdsFarm" 
        EmptyDataText="There are no data records to display." GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="FarmID" HeaderText="FarmID" ReadOnly="True" 
                SortExpression="FarmID" />
            <asp:BoundField DataField="FarmName" HeaderText="FarmName" 
                SortExpression="FarmName" />
            <asp:BoundField DataField="SoilTypeID" HeaderText="SoilTypeID" 
                SortExpression="SoilTypeID" />
            <asp:BoundField DataField="SizeOfFarm" HeaderText="SizeOfFarm" 
                SortExpression="SizeOfFarm" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="AreaId" HeaderText="AreaId" 
                SortExpression="AreaId" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="AgeOfProperty" HeaderText="AgeOfProperty" 
                SortExpression="AgeOfProperty" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
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
    <asp:SqlDataSource ID="sdsFarm" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
        DeleteCommand="DELETE FROM [FarmDetail] WHERE [FarmID] = @FarmID" 
        InsertCommand="INSERT INTO [FarmDetail] ([FarmName], [SoilTypeID], [SizeOfFarm], [Price], [AreaId], [Description], [AgeOfProperty], [Image], [IsActive]) VALUES (@FarmName, @SoilTypeID, @SizeOfFarm, @Price, @AreaId, @Description, @AgeOfProperty, @Image, @IsActive)" 
        ProviderName="<%$ ConnectionStrings:OrganicFarmConnectionString.ProviderName %>" 
        SelectCommand="SELECT [FarmID], [FarmName], [SoilTypeID], [SizeOfFarm], [Price], [AreaId], [Description], [AgeOfProperty], [Image], [IsActive] FROM [FarmDetail]" 
        UpdateCommand="UPDATE [FarmDetail] SET [FarmName] = @FarmName, [SoilTypeID] = @SoilTypeID, [SizeOfFarm] = @SizeOfFarm, [Price] = @Price, [AreaId] = @AreaId, [Description] = @Description, [AgeOfProperty] = @AgeOfProperty, [Image] = @Image, [IsActive] = @IsActive WHERE [FarmID] = @FarmID">
        <DeleteParameters>
            <asp:Parameter Name="FarmID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FarmName" Type="String" />
            <asp:Parameter Name="SoilTypeID" Type="Int32" />
            <asp:Parameter Name="SizeOfFarm" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="AreaId" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="AgeOfProperty" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="IsActive" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FarmName" Type="String" />
            <asp:Parameter Name="SoilTypeID" Type="Int32" />
            <asp:Parameter Name="SizeOfFarm" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="AreaId" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="AgeOfProperty" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="IsActive" Type="Int32" />
            <asp:Parameter Name="FarmID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
                                    </div>

</asp:Content>

