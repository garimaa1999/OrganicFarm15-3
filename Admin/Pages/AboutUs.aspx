<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="Admin_Pages_Default4" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>

    <br />
        <asp:Button ID="btnSubmit" runat="server" Height="29px" 
            onclick="btnSubmit_Click" Text="Submit" Width="67px" />
</asp:Content>

