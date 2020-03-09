<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.master" AutoEventWireup="true" CodeFile="Soiltype.aspx.cs" Inherits="Admin_Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-5 align-self-center">
                        <h4 class="page-title">Soil Type Details</h4>
                    </div>
                    <div class="col-7 align-self-center">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="#">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Soil Type</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div>

            </div>
 <div class="card-body bg-light">
                                    
                                    
                                  <%-- <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Soil Type Id: </label>
                                        <div class="col-sm-9">                                           
                                           <asp:TextBox class="form-control" id="txtSoiltypeid" runat="server">
                                            </asp:TextBox>
                                        </div>
                                    </div>--%>
                                   <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Soil Type Name: </label>
                                        <div class="col-sm-9">                                          
                                            <asp:TextBox class="form-control" id="txtsoiltypename" runat="server">
                                            </asp:TextBox>
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
                                    
 
                                    <div class="form-group row">
                                        <label class="col-sm-3 text-right control-label col-form-label">Image Upload:</label>
                                        <div class="col-sm-9">
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <%--<span class="input-group-text">Upload</span>--%>
                                                    <asp:Button ID="Btnimageupload" runat="server" class="btn btn-success" Text="Upload" 
                                                       onclick="Btnimageupload_Click" />
                                               <%--<button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button>--%>
                                                </div>
                                                <div class="custom-file">
                                                    <%--<input type="file" class="custom-file-input" id="inputGroupFile01">--%>
                                                    <%--<label class="custom-file-label" for="inputGroupFile01">Choose file</label>--%>
                                                    <asp:FileUpload ID="FUSoilType" runat="server"  class="custom-file-input" />
                                                    <asp:Label ID="FileUpload" runat="server" class="custom-file-label" Text="Label">Choose File</asp:Label>
                                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row p-b-15">
                                        <label for="inputEmail3" class="col-sm-3 text-right control-label col-form-label">Image : </label>
                                        <div class="col-sm-9">                
                                            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />        
                                           <%--<asp:TextBox class="form-control" id="TextBox1" runat="server">
                                            </asp:TextBox>--%>
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
                                     </div>
                                     <center>
                                     
                                   
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
                                    </div>
</asp:Content>

