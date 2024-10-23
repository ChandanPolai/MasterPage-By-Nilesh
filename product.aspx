<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="product.aspx.vb" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .style1
        {
            width: 100%;
            margin-bottom: 32px;
        }
        .style2
        {
            height: 95px;
            text-align: center;
            font-size: xx-large;
            font-family: Algerian;
            font-weight: 700;
            color: #0066FF;
            background-color: #FF9966;
        }
        .style3
        {
            height: 213px;
        }
        .style4
        {
            height: 114px;
            margin-left: 40px;
        }
        .style5
        {
            height: 233px;
        }
        .style6
        {
            width: 100%;
        }
        .style7
        {
            height: 62px;
        }
        .style8
        {
            height: 55px;
        }
        .style9
        {
            height: 60px;
        }
        .style10
        {
            height: 62px;
            width: 810px;
        }
        .style11
        {
            height: 55px;
            width: 810px;
        }
        .style12
        {
            height: 60px;
            width: 810px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
          <table class="style1">
        <tr>
            <td class="style2">
                AsP.NET CRUD OPERTIONS</td>
        </tr>
        <tr>
            <td class="style3">
                <table class="style6">
                    <tr>
                        <td class="style10">
                            <asp:Label ID="Label1" runat="server" Text="id"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <asp:Label ID="Label2" runat="server" Text="name"></asp:Label>
                        </td>
                        <td class="style8">
                            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <asp:Label ID="Label3" runat="server" Text="stream"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txt_stream" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="btn_insert" runat="server" Text="insert" Width="86px" />
                <asp:Button ID="btn_update" runat="server" Text="update" Width="105px" />
                <asp:Button ID="btn_delete" runat="server" Text="delete" Width="105px" 
                    style="height: 29px" />
                <asp:Button ID="btn_search" runat="server" Text="search" Width="110px" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </td>
        </tr>
    </table>

</asp:Content>

