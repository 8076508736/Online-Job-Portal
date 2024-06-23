<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 25px;
        }
        .style4
        {
            height: 25px;
        }
        .style5
        {
            width: 365px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        .style9
        {
            width: 365px;
            height: 38px;
        }
        .style10
        {
            height: 38px;
        }
        .style11
        {
            width: 365px;
            height: 2px;
        }
        .style12
        {
            height: 2px;
        }
        .style13
        {
            width: 365px;
            height: 36px;
        }
        .style14
        {
            height: 36px;
        }
        .style15
        {
            height: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style15" colspan="3">
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label1" runat="server" Text="UserId" ForeColor="Maroon" 
                Font-Bold="True"></asp:Label>
        </td>
        <td class="style4">
            <asp:Label ID="userid" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label2" runat="server" Text="Old Password" Font-Bold="True" 
                Font-Size="Small" ForeColor="Maroon"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="txtoldpass" runat="server" TextMode="Password">*</asp:TextBox>
        </td>
        <td class="style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtoldpass" Display="None" 
                ErrorMessage="Please enter Old Password" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
            </asp:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr>
        <td class="style11">
            <asp:Label ID="Label3" runat="server" Text="New Password" Font-Bold="True" 
                Font-Size="Small" ForeColor="Maroon"></asp:Label>
        </td>
        <td class="style12">
            <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password">*</asp:TextBox>
        </td>
        <td class="style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtnewpass" Display="None" 
                ErrorMessage="Please enter New Password" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
            </asp:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr>
        <td class="style13">
            <asp:Label ID="Label4" runat="server" Text="Confirm Password" Font-Bold="True" 
                Font-Size="Small" ForeColor="Maroon"></asp:Label>
        </td>
        <td class="style14">
            <asp:TextBox ID="txtconNewPass" runat="server" TextMode="Password">*</asp:TextBox>
        </td>
        <td class="style14">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtconNewPass" Display="None" 
                ErrorMessage="Pleasse enter Confirm Password" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
            </asp:ValidatorCalloutExtender>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtnewpass" ControlToValidate="txtconNewPass" Display="None" 
                ErrorMessage="Password and Confirm Password is not match" 
                SetFocusOnError="True"></asp:CompareValidator>
            <asp:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="CompareValidator1">
            </asp:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr>
        <td class="style9">
            <asp:Button ID="Button1" runat="server" Text="Change Password" 
                onclick="Button1_Click" />
        </td>
        <td class="style10">
            <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>

