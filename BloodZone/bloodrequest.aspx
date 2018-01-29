<%@ Page Title="" Language="C#" MasterPageFile="~/bloodzone.Master" AutoEventWireup="true" CodeBehind="bloodrequest.aspx.cs" Inherits="BloodZone.bloodrequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUrgentRequest" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTopdoner" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBloodPost" runat="server">

    <div>
        <table align="center" style="margin-top:30px" >
            <thead align="center" style="color:#ff0000; margin-top:20px">
                <tr>
                     <td colspan="2"><h1>Post for Blood Request</h1></td>
               </tr>
            </thead>

            <tr style="margin-top:20px">
                <td align="left">Name</td>
                <td>
                    <asp:TextBox ID="rname" Width="200px" runat="server"></asp:TextBox> </td>
            </tr>

            <tr style="margin-top:20px">
                <td align="left">Mobile</td>
                <td><asp:TextBox ID="rmobil" Width="200px" runat="server" TextMode="Phone"></asp:TextBox> </td>
            </tr>

            <tr style="margin-top:20px">
                <td align="left">Blood Group </td>
                <td> <asp:DropDownList ID="bloodgroupList" runat="server" Width="100px">
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                    </asp:DropDownList>  </td>
            </tr>

            <tr style="margin-top:20px">
                <td align="left">Address</td>
                <td> <asp:TextBox ID="adrs" Width="200px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>

            <tr style="margin-top:20px">
                <td align="left">Comment</td>
                <td>
                    <asp:TextBox ID="comment" runat="server" Width="200px" TextMode="MultiLine"  ></asp:TextBox> </td>
            </tr>
            <tr style="margin-top:20px">
                <td colspan="2" align="center">
                    <asp:Button ID="Postbtn" runat="server" Text="Post" Width="100px" OnClick="Postbtn_Click"  />  </td>
               
            </tr>
        </table>
    </div>

</asp:Content>
