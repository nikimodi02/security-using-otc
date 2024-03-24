<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Cart.aspx.cs" Inherits="ShoppingSite.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        table, tr, th
        {
            width: 100%;
            border: 1px solid Green;
            border-collapse: collapse;
            text-align: center;
        }
        table, th, td
        {
            width: 100%;
            border: 1px solid Green;
            border-collapse: collapse;
            text-align: center;
        }
        .style1
        {
            width: 5%;
        }
        .style2
        {
            width: 15%;
        }
        .style3
        {
            width: 30%;
        }
        .style4
        {
            width: 5%;
        }
        .style5
        {
            width: 20%;
        }
        .style6
        {
            width: 20%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div>
            <h2>
                Cart Details</h2>
            <asp:Label ID="lblShow" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
        </div>
        <br />
        <asp:Repeater ID="rp" runat="server">
            <HeaderTemplate>
                <table>
                    <tr>
                        <td class="style1">
                            P ID
                        </td>
                        <td class="style2">
                        </td>
                        <td class="style3">
                            ITEM
                        </td>
                        <td class="style4">
                            QTY
                        </td>
                        <td class="style5">
                            Price
                        </td>
                        <td class="style6">
                            SUB TOTAL
                        </td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td class="style1">
                        <%#Eval("P_id") %>
                    </td>
                    <td class="style2">
                        <img src='<%#Eval("Photo")%>' alt="Product Image 1" height="100px" width="90px" />
                    </td>
                    <td class="style3">
                        <%#Eval("Name")%>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="25px" Height="25px" Text="1"></asp:TextBox>
                    </td>
                    <td class="style5">
                        Rs.
                        <%#Eval("Price")%>
                    </td>
                    <td class="style6">
                        Rs.
                        <%#Eval("Price")%>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                <tr>
                    <td class="style1">
                    </td>
                    <td class="style2">
                    </td>
                    <td class="style3">
                        <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" Text="Place Order"
                            Width="150px" Height="30px" BorderColor="#FF9900" BackColor="#FF9900" ForeColor="#009900"
                            Font-Bold="True" Font-Size="Medium" />

                             <asp:Button ID="btnDelete" OnClick="btnDelete_Click" runat="server" Text="Delete Orders"
                            Width="150px" Height="30px" BorderColor="#FF9900" BackColor="#FF9900" ForeColor="#009900"
                            Font-Bold="True" Font-Size="Medium" />
                    </td>
                    <td class="style4">
                    </td>
                    <td class="style5">
                        Estimated Total:
                    </td>
                    <td class="style6">
                        Rs.
                        <%=SubTotal %>
                    </td>
                </tr>
            </FooterTemplate>
        </asp:Repeater>
        </table>
    </div>
</asp:Content>
