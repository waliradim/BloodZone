<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="postdelet.aspx.cs" Inherits="BloodZone.postdelet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div style="margin-top:10px; margin-left:10px; margin-bottom:20px">
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="searchtBox" runat="server" Width="200px" ></asp:TextBox> </td>
                        <td>
                            <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click"/></td>
                    </tr>
                   <tr><td>
                       <asp:Button ID="delet" runat="server" Text="Delete" OnClick="delet_Click" />
                       </td></tr>
                </table>
            </div>
        <div>
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
        </div>

    
    </div>
    </form>
</body>
</html>
