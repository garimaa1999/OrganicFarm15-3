<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-5 align-self-center">
                        <h4 class="page-title">Product Details</h4>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Product</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
          
 <div class="card-body bg-light">
                                    
                                    
                                   <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Product Name: </label>
                                        <div class="col-sm-9">                                           
                                           <asp:TextBox class="form-control" id="txtProductName" runat="server">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                   
                                            <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Category Name: </label>
                                        <div class="col-sm-9">     
                                                    <asp:DropDownList ID="ddlCategory" class="form-control" runat="server" DataSourceID="CategoryName" 
            DataTextField="CategoryName" DataValueField="CategoryID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="CategoryName" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
            SelectCommand="SELECT * FROM [CategoryDetail]"></asp:SqlDataSource>
                                        
                                        </div>
                                    </div>
                                   <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Sub Category Name: </label>
                                        <div class="col-sm-9">     
                                       
                                       <asp:DropDownList ID="ddlSubCategory" class="form-control" runat="server" DataSourceID="SubCategory" 
            DataTextField="SubCategoryName" DataValueField="SubCategoryID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SubCategory" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
            SelectCommand="SELECT * FROM [SubCategoryDetail] WHERE ([SubCategoryID] = @SubCategoryID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCategory" Name="SubCategoryID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

                                        </div>
                                    </div>


                                    <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Price: </label>
                                        <div class="col-sm-9">                                           
                                           <asp:TextBox class="form-control" id="Txtprice" runat="server">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                   <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Description: </label>
                                        <div class="col-sm-9">                                          
                                            <asp:TextBox class="form-control" id="Txtdescription" runat="server">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                   
                                    
                                    <div class="form-group row">
                                        <label class="col-sm-3 text-right control-label col-form-label">Image Upload:</label>
                                        <div class="col-sm-9">
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <%--<span class="input-group-text">Upload</span>--%>
                                                    <asp:Button ID="btnUpload" runat="server" class="btn btn-success" Text="Upload" 
                                                        onclick="btnUpload_Click" />
                                               <%--<button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button>--%>
                                                </div>
                                                <div class="custom-file">
                                                    <%--<input type="file" class="custom-file-input" id="inputGroupFile01">--%>
                                                    <%--<label class="custom-file-label" for="inputGroupFile01">Choose file</label>--%>
                                                    <asp:FileUpload ID="FUProduct" runat="server"  class="custom-file-input" />
                                                    <asp:Label ID="FileUpload" runat="server" class="custom-file-label" Text="Label">Choose File</asp:Label>
                                                <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Image : </label>
                                        <div class="col-sm-9">                
                                            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />        
                                           
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
                       <div class="row button-group justify-content-md-center">
    
                            <div class="col-lg-2 col-md-4">
                               <asp:Button ID="btnInsert" runat="server"  
                                    class="btn btn-rounded btn-block btn-outline-primary" Text="Insert" 
                                    onclick="btnInsert_Click" />
                    
                                            </div>
                                    </div>
   <div class="table-responsive">
                                   <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="False" 
                                            DataKeyNames="ProductID" DataSourceID="SqlDataSource4" 
                                            EmptyDataText="There are no data records to display." 
                                       BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                                       CellPadding="3" GridLines="Horizontal" Width="733px">
                                            <AlternatingRowStyle BackColor="#F7F7F7" />
                                            <Columns>
                                                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                                                    SortExpression="ProductID" />
                                                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                                                    SortExpression="ProductName" />
                                                <asp:BoundField DataField="SubCategoryID" HeaderText="SubCategoryID" 
                                                    SortExpression="SubCategoryID" />
                                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                <asp:BoundField DataField="Description" HeaderText="Description" 
                                                    SortExpression="Description" />
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
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:OrganicFarmConnectionString %>" 
                                            DeleteCommand="DELETE FROM [ProductDetail] WHERE [ProductID] = @ProductID" 
                                            InsertCommand="INSERT INTO [ProductDetail] ([ProductName], [SubCategoryID], [Price], [Description], [Image], [IsActive]) VALUES (@ProductName, @SubCategoryID, @Price, @Description, @Image, @IsActive)" 
                                            ProviderName="<%$ ConnectionStrings:OrganicFarmConnectionString.ProviderName %>" 
                                            SelectCommand="SELECT [ProductID], [ProductName], [SubCategoryID], [Price], [Description], [Image], [IsActive] FROM [ProductDetail]" 
                                            UpdateCommand="UPDATE [ProductDetail] SET [ProductName] = @ProductName, [SubCategoryID] = @SubCategoryID, [Price] = @Price, [Description] = @Description, [Image] = @Image, [IsActive] = @IsActive WHERE [ProductID] = @ProductID">
                                            <DeleteParameters>
                                                <asp:Parameter Name="ProductID" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="ProductName" Type="String" />
                                                <asp:Parameter Name="SubCategoryID" Type="Int32" />
                                                <asp:Parameter Name="Price" Type="String" />
                                                <asp:Parameter Name="Description" Type="String" />
                                                <asp:Parameter Name="Image" Type="String" />
                                                <asp:Parameter Name="IsActive" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="ProductName" Type="String" />
                                                <asp:Parameter Name="SubCategoryID" Type="Int32" />
                                                <asp:Parameter Name="Price" Type="String" />
                                                <asp:Parameter Name="Description" Type="String" />
                                                <asp:Parameter Name="Image" Type="String" />
                                                <asp:Parameter Name="IsActive" Type="Int32" />
                                                <asp:Parameter Name="ProductID" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
        </div>
                                  </div>
</asp:Content>


