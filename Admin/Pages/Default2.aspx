<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Admin_Pages_Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="table-responsive">
                                    
                                      <asp:GridView ID="gvSoilType" 
                                          class="table table-striped table-bordered display nowrap" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="SoilTypeID" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#E7E7FF" 
                                          BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                                          <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="SoilTypeID" HeaderText="SoilTypeID" ReadOnly="True" 
                SortExpression="SoilTypeID" />
            <asp:BoundField DataField="SoilTypeName" HeaderText="SoilTypeName" 
                SortExpression="SoilTypeName" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
        DeleteCommand="DELETE FROM [SoilTypeDetail] WHERE [SoilTypeID] = @SoilTypeID" 
        InsertCommand="INSERT INTO [SoilTypeDetail] ([SoilTypeName], [Image], [IsActive]) VALUES (@SoilTypeName, @Image, @IsActive)" 
        ProviderName="<%$ ConnectionStrings:OrganicFarmConnectionString.ProviderName %>" 
        SelectCommand="SELECT [SoilTypeID], [SoilTypeName], [Image], [IsActive] FROM [SoilTypeDetail]" 
        UpdateCommand="UPDATE [SoilTypeDetail] SET [SoilTypeName] = @SoilTypeName, [Image] = @Image, [IsActive] = @IsActive WHERE [SoilTypeID] = @SoilTypeID">
        <DeleteParameters>
            <asp:Parameter Name="SoilTypeID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SoilTypeName" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="IsActive" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SoilTypeName" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="IsActive" Type="Int32" />
            <asp:Parameter Name="SoilTypeID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


                                  </div>



                                  <br/>
                                 <%-- <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Soil Type Name: </label>
                                        <div class="col-sm-9">     
                                                    <asp:DropDownList ID="ddlSoilName" class="form-control" runat="server" DataSourceID="SoilTypeName" 
            DataTextField="SoilTypeName" DataValueField="SoilTypeName" onselectedindexchanged="ddlSoilName_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SoilTypeName" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
            
                                                        SelectCommand="SELECT [SoilTypeName] FROM [SoilTypeDetail] WHERE (([SoilTypeName] = @SoilTypeName) AND ([SoilTypeID] = @SoilTypeID))">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCropType" Name="SoilTypeName" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlCropType" Name="SoilTypeID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
                                                    </asp:SqlDataSource>
                                  <br/>
                                  <br/>

                                       <asp:DropDownList ID="ddlCropType" class="form-control" runat="server" DataSourceID="CropType" 
            DataTextField="CropTypeName" DataValueField="CropTypeID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="CropType" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
            SelectCommand="SELECT * FROM [CropTypeDetail] WHERE ([SoilTypeID] = @SoilTypeID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlSoilName" Name="SoilTypeID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                                                   --%> <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <div class="form-group row p-b-15">
                                                        <label class="col-sm-3 text-right control-label col-form-label" 
                                                            for="inputEmail3">
                                                        Soil Type Name:
                                                        </label>
                                                        <div class="col-sm-9">
                                                            <asp:DropDownList ID="ddlSoilId" runat="server" class="form-control" 
                                                                DataSourceID="SqlDataSource4" DataTextField="SoilTypeName" 
                                                                DataValueField="SoilTypeID">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
                                                                SelectCommand="SELECT * FROM [SoilTypeDetail]"></asp:SqlDataSource>
                                                            <br />
                                                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SdsCropType" 
                                                                DataTextField="CropTypeName" DataValueField="CropTypeID">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SdsCropType" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
                                                                SelectCommand="SELECT * FROM [CropTypeDetail] WHERE ([SoilTypeID] = @SoilTypeID)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlSoilId" Name="SoilTypeID" 
                                                                        PropertyName="SelectedValue" Type="Int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </div>
                                                    </div>
                                    </div>
    </form>
</body>
</html>
