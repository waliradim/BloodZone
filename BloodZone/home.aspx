<%@ Page Title="" Language="C#" MasterPageFile="~/bloodzone.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BloodZone.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUrgentRequest" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTopdoner" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBloodPost" runat="server">

    <asp:DataList ID="postDataList" Width="1100px" runat="server" OnSelectedIndexChanged="postDataList_SelectedIndexChanged" CellPadding="4" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            <table style="width:70%; margin-top:35px" align="center">
            <tr>
                <td align="left">
                    <asp:Label ID="name" runat="server" Text='<%#Eval("name") %>'></asp:Label>

                </td>

                <td align="center">
                    <asp:Label ID="mobile" runat="server" Text='<%#Eval("mobile") %>'></asp:Label> 

                </td>

                <td align="right"> 
                    <asp:Label ID="lbltm" runat="server" Text=""></asp:Label>

                </td>
                
            </tr>

                <tr>
                    <td colspan="2" align="left">
                        <asp:Label ID="address" runat="server" Text='<%#Eval("adres") %>'></asp:Label>
                    </td>

                    <td align="right">
                        <asp:Label ID="bloodgroup" runat="server" Text='<%#Eval("bgroup") %>'></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td colspan="3" align="center">
                        <asp:Label ID="comment" runat="server" Text='<%#Eval("comnt") %>'></asp:Label>
                    </td>
                </tr>
        </table>
        </ItemTemplate>
        
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        
    </asp:DataList>

</asp:Content>
