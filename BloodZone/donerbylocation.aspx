<%@ Page Title="" Language="C#" MasterPageFile="~/bloodzone.Master" AutoEventWireup="true" CodeBehind="donerbylocation.aspx.cs" Inherits="BloodZone.donerbylocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUrgentRequest" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTopdoner" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBloodPost" runat="server">
    
    <div align="center" style="marker:20px;">
        <div align="center">

            <div style="margin-top:10px; margin-left:10px; margin-bottom:20px">
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="searchtBox" runat="server" Width="200px" ></asp:TextBox> </td>
                        <td>
                            <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click"/></td>
                    </tr>
                </table>
            </div>

            <asp:GridView ID="donerGridView" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" Width="1100px" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="mobile" HeaderText="Mobile Number" />
                    <asp:BoundField DataField="mail" HeaderText="E-mail" />
                    <asp:BoundField DataField="date of barth" HeaderText="Date of Birth" />
                    <asp:BoundField DataField="weight" HeaderText="Weight" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    
                    <asp:TemplateField HeaderText="image">
                        <ItemTemplate>
                            <asp:Image ID="Image" runat="server" ImageUrl='<%#Eval("image")%>' Height="50px" Width="50px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:BoundField DataField="blood group" HeaderText="Blood Group" />
                    <asp:BoundField DataField="address" HeaderText="Address" />
                    <asp:BoundField DataField="district" HeaderText="District" />
                    <asp:BoundField DataField="city" HeaderText="City" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>

        </div>
    
    </div>
   
</asp:Content>
