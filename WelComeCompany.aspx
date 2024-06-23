<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="WelComeCompany.aspx.cs" Inherits="WelComeCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                                            <asp:Label ID="Label88" runat="server" 
                    Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="Lime" Text="Your Id"></asp:Label>
                                            <asp:Label ID="ComId" runat="server" 
                    Font-Bold="False" Font-Size="Medium" 
                                                ForeColor="Black" Text="CompanyId"></asp:Label>
                                        </td>
            <td>
                                            <asp:Label ID="Label87" runat="server" 
                    Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="Lime" Text="Welcome"></asp:Label>
                                            <asp:Label ID="ComName" runat="server" 
                    Font-Bold="False" Font-Size="Medium" 
                                                ForeColor="Black" Text="CompanyName"></asp:Label>
                                        </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Company Id"></asp:Label>
            </td>
            <td>
                <asp:Label ID="CompanyId" runat="server" Text="Company Id"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Company Name</td>
            <td>
                <asp:Label ID="companyname" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Company Type</td>
            <td>
                <asp:Label ID="CompanyType" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Company Details</td>
            <td>
                <asp:Label ID="CompanyDetails" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Company Location</td>
            <td>
                <asp:Label ID="companyLocation" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Company EmailId</td>
            <td>
                <asp:Label ID="companyemailid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

