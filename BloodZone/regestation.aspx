<%@ Page Title="" Language="C#" MasterPageFile="~/bloodzone.Master" AutoEventWireup="true" CodeBehind="regestation.aspx.cs" Inherits="BloodZone.regestation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUrgentRequest" runat="server">
    wali
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTopdoner" runat="server">
    mahmud
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBloodPost" runat="server">

    <div>
        <table  align="center">
             <td colspan="4" align="center" style="font-weight: bold; font-size: 16pt; color: #ffffff; background-color: gray">
                    Please Fill The Following Form
             </td>

            <tr>
                <td align="center" colspan="3">
                    &nbsp;</td>
            </tr>

             <tr>
                <td colspan="3" align="center" style="font-weight: bold; font-size: 14pt; color: gray">
                    <span style="color: white; background-color: gray">Personal Details</span></td>
            </tr>

            <tr>
                <td align="right">Name</td>
                <td class="auto-style2"> <asp:TextBox ID="dname" runat="server" Width="200px"></asp:TextBox></td>
                
            </tr>
            
            <tr>
                <td align="right">Mobile Number</td>
                <td class="auto-style2"><asp:TextBox ID="dmobile" runat="server" Width="200px" TextMode="Phone"></asp:TextBox></td>
                
            </tr>

            <tr>
                <td align="right"> E-mail</td>
                <td class="auto-style2"> <asp:TextBox ID="dEmail" runat="server" Width="200px" TextMode="Email"></asp:TextBox></td>
                
            </tr>

            <tr>
                <td align="right">Date of Barth</td>
                <td class="auto-style2">
                    <asp:TextBox ID="dDOF" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
                </td>
                
            </tr>

            <tr>
                <td align="right">Weight</td>
                <td class="auto-style2">
                    <asp:TextBox ID="dweight" runat="server" Width="200px"></asp:TextBox>
                </td>
               
            </tr>

            <tr>
                <td align="right">Gender</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="genderlist" runat="server" Width="100px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    </td>
               
            </tr>

            <tr>
                <td align="right">Upload Image</td>
                <td class="auto-style2"> <asp:FileUpload ID="imageFileUpload" runat="server" Width="200px" /> </td>
               
            </tr>

            <tr>
                <td align="right">Blood Group </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="bloodgroupList" runat="server" Width="100px">
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                    </asp:DropDownList> </td>
                
            </tr>

            <tr>

                <td style="height: 50px;" align="center" colspan="2">
                    <span style="font-weight: bold; font-size: 14pt; color: #ffffff; background-color: #808080">
                    Address Details</span></td>
            </tr>

            <tr>
                <td align="right">Address </td>
                <td class="auto-style2"> <asp:TextBox ID="adresTextBox" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox></td>
                
            </tr>

            <tr>
                <td align="right"> District</td>
                <td class="auto-style2">
                    <asp:TextBox ID="districtTextBox" runat="server" Width="200px"></asp:TextBox> </td>
                
            </tr>

            <tr>
                <td align="right"> City</td>
                <td class="auto-style2">
                    <asp:TextBox ID="cityTextBox" runat="server" Width="200px"></asp:TextBox> </td>
            </tr>

            <tr>
                <td align="right">
                    Country
                </td>
                <td>
                    <asp:TextBox ID="CounTextBox" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td align="right">
                    <asp:Button ID="homebtn" runat="server" Text="Back Home" Width="100px" Height="40px" OnClick="homebtn_Click"/>
                </td>

                <td align="center">
                    <asp:Button ID="submitButton" runat="server" Text="Submit" Width="100px" Height="40px" OnClick="submitButton_Click" /> </td>
                
                
            </tr>

        </table>
        
    </div>
    
</asp:Content>
