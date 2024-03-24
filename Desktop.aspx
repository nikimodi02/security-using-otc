<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Desktop.aspx.cs" Inherits="ShoppingSite.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Repeater ID="rp" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="grid_1_of_4 images_1_of_4">
                <a href="preview.aspx?pId=<%# Eval("P_Id") %>">
                    <img src="<%# Eval("Photo") %>" alt="" /></a>
                <h2>
                    <%# Eval("Name") %>
                </h2>
                <div class="price-details">
                    <div class="price-number">
                        <p>
                            <span class="rupees">Rs. <%# Eval("Price") %></span></p>
                    </div>
                    <div class="add-cart">
                        <h4>
                            <a href="preview.aspx?pId=<%# Eval("P_Id") %>">Add to Cart</a></h4>
                    </div>
                    <div class="clear">
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

