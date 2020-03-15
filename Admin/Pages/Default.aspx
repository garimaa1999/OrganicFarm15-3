<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Pages_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
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
    </form>
</body>
</html>
