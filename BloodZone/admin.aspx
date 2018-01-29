<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="BloodZone.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div >
            <table align="center">
                 <thead align="center" style="color:#ff0000; margin-top:20px">
                <tr>
                     <td colspan="2"><h1>Admin Page</h1></td>
               </tr>
            </thead>
                <tr style="margin-top:20px">

                    <td colspan="2" align="center">
                        <asp:Menu ID="adminMenu" runat="server" Orientation="Horizontal" Font-Bold="True" Font-Size="Medium">
                            <Items>
                                <asp:MenuItem NavigateUrl="~/home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                                <asp:MenuItem Text="doner Update" Value="doner Update"></asp:MenuItem>
                                <asp:MenuItem Text="doner Delete" Value="doner Delete"></asp:MenuItem>
                                <asp:MenuItem Text="Post Delet" Value="Post Delet"></asp:MenuItem>
                            </Items>
                        </asp:Menu>
                    </td>
                    

                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
