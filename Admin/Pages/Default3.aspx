<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Admin_Pages_Default3" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
        <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
            Enabled="True" TargetControlID="TextBox1">
        </cc1:CalendarExtender>
    
    <asp:TextBox class="form-control" id="Txtdateofreturn" runat="server">
                                            </asp:TextBox>

        <cc1:CalendarExtender ID="caldateofreturn" runat="server" Enabled="True" 
            TargetControlID="Txtdateofreturn">
        </cc1:CalendarExtender>



        <br />

        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="FarmID" DataSourceID="SqlDataSource3" 
            EmptyDataText="There are no data records to display." GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="FarmID" HeaderText="FarmID" ReadOnly="True" 
                    SortExpression="FarmID" />
                <asp:BoundField DataField="FarmName" HeaderText="FarmName" 
                    SortExpression="FarmName" />
                <asp:BoundField DataField="SoilTypeID" HeaderText="SoilTypeID" 
                    SortExpression="SoilTypeID" />
                <asp:BoundField DataField="CropTypeID" HeaderText="CropTypeID" 
                    SortExpression="CropTypeID" />
                <asp:BoundField DataField="SizeOfFarm" HeaderText="SizeOfFarm" 
                    SortExpression="SizeOfFarm" />
                <asp:BoundField DataField="TimeDuration" HeaderText="TimeDuration" 
                    SortExpression="TimeDuration" />
                <asp:BoundField DataField="DateOfBooking" HeaderText="DateOfBooking" 
                    SortExpression="DateOfBooking" />
                <asp:BoundField DataField="DateOfReturn" HeaderText="DateOfReturn" 
                    SortExpression="DateOfReturn" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
            DeleteCommand="DELETE FROM [FarmDetail] WHERE [FarmID] = @FarmID" 
            InsertCommand="INSERT INTO [FarmDetail] ([FarmName], [SoilTypeID], [CropTypeID], [SizeOfFarm], [TimeDuration], [DateOfBooking], [DateOfReturn], [Price], [AreaId], [Description], [AgeOfProperty], [Image], [IsActive]) VALUES (@FarmName, @SoilTypeID, @CropTypeID, @SizeOfFarm, @TimeDuration, @DateOfBooking, @DateOfReturn, @Price, @AreaId, @Description, @AgeOfProperty, @Image, @IsActive)" 
            ProviderName="<%$ ConnectionStrings:OrganicFarmConnectionString.ProviderName %>" 
            SelectCommand="SELECT [FarmID], [FarmName], [SoilTypeID], [CropTypeID], [SizeOfFarm], [TimeDuration], [DateOfBooking], [DateOfReturn], [Price], [AreaId], [Description], [AgeOfProperty], [Image], [IsActive] FROM [FarmDetail]" 
            UpdateCommand="UPDATE [FarmDetail] SET [FarmName] = @FarmName, [SoilTypeID] = @SoilTypeID, [CropTypeID] = @CropTypeID, [SizeOfFarm] = @SizeOfFarm, [TimeDuration] = @TimeDuration, [DateOfBooking] = @DateOfBooking, [DateOfReturn] = @DateOfReturn, [Price] = @Price, [AreaId] = @AreaId, [Description] = @Description, [AgeOfProperty] = @AgeOfProperty, [Image] = @Image, [IsActive] = @IsActive WHERE [FarmID] = @FarmID">
            <DeleteParameters>
                <asp:Parameter Name="FarmID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FarmName" Type="String" />
                <asp:Parameter Name="SoilTypeID" Type="Int32" />
                <asp:Parameter Name="CropTypeID" Type="Int32" />
                <asp:Parameter Name="SizeOfFarm" Type="String" />
                <asp:Parameter Name="TimeDuration" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBooking" />
                <asp:Parameter DbType="Date" Name="DateOfReturn" />
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
                <asp:Parameter Name="CropTypeID" Type="Int32" />
                <asp:Parameter Name="SizeOfFarm" Type="String" />
                <asp:Parameter Name="TimeDuration" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBooking" />
                <asp:Parameter DbType="Date" Name="DateOfReturn" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="AreaId" Type="Int32" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="AgeOfProperty" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="IsActive" Type="Int32" />
                <asp:Parameter Name="FarmID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br />
        <br />
        <br />
        <div class="form-group row p-b-15">
            <label class="col-sm-3 text-right control-label col-form-label" 
                for="inputEmail3">
            State Name:
            </label>
            <div class="col-sm-9">
                <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="true" 
                    class="form-control" DataSourceID="SqlDataSource1" DataTextField="StateName" 
                    DataValueField="StateId">
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
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sdscity" 
                    DataTextField="CityName" DataValueField="CityId">
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



    </div>
    </form>
</body>
</html>
