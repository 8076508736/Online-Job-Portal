<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="StudentDetails.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
  
    <style type="text/css">
        .style3
        {}
        .style5
        {
        }
        .style7
        {
            width: 290px;
        }
        .style8
        {
            width: 280px;
        }
    </style>
    
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style1">
        <tr>
            <td class="style7">
                <asp:Label ID="Userid" runat="server" Text="Userid"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                
                <table class="style1">
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label59" runat="server" Text="Last Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label3" runat="server" Text="EmailId"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label4" runat="server" Text="Date Of Birth"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label62" runat="server" Text="Pin Code"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label7" runat="server" Text="MobileNo"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label8" runat="server" Text="PhoneNo"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label25" runat="server" Text="Current Residence City"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>                

                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <asp:Label ID="Label63" runat="server" Text=" No Information  For this  Person" 
                        Font-Bold="True" Font-Italic="True" ForeColor="Maroon"></asp:Label>
                </asp:Panel>
                
            </td>
        </tr>
    </table>
    
</asp:Content>

