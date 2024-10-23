<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 100%;
    }
    .style8
    {
        width: 568px;
        text-align: center;
        height: 53px;
    }
    .style9
    {
        width: 568px;
        height: 53px;
    }
    .style11
    {
        width: 568px;
        text-align: center;
        height: 62px;
    }
    .style12
    {
        height: 62px;
    }
    .style13
    {
        width: 568px;
        text-align: center;
        height: 57px;
    }
    .style14
    {
        height: 57px;
    }
    .style15
    {
        height: 53px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style7">
    <tr>
        <td class="style8">
            username:</td>
        <td class="style15">
            <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style13">
            password:</td>
        <td class="style14">
            <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style9">
        </td>
        <td class="style15">
            <asp:Label ID="lbl_msg" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style11">
        </td>
        <td class="style12">
            <asp:Button ID="btn_login" runat="server" 
                style="color: #FFFFFF; font-weight: 700; font-size: large; background-color: #000066" 
                Text="login" />
        </td>
    </tr>
</table>
</asp:Content>

