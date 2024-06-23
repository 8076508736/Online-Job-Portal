<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobSeekerPersonal_Detail.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
            width: 59px;
        }
        .style4
        {
            width: 119px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <table border="5px" width="700px">
        <tr>
            <td colspan="3">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtfirstname" Display="None" 
                    ErrorMessage="Please enter  your  First Name"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator14_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator14">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtfirstname" Display="None" ValidationExpression="^\s*[a-zA-z\s]+\s*$"
                    ErrorMessage="Your  Name  is  not Correct Format"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="RegularExpressionValidator5_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RegularExpressionValidator5">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtlastname" Display="None" 
                    ErrorMessage="Please Enter  Your Last Name"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator15_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator15">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  ValidationExpression="^\s*[a-zA-z\s]+\s*$"
                    ControlToValidate="txtlastname" Display="None" 
                    ErrorMessage="Your Last Name is  not correct format"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="RegularExpressionValidator6_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RegularExpressionValidator6">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Text="Email Id"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtemailid" ErrorMessage="Please enter your EmailId" 
                    Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemailid" ErrorMessage="Emailiid is  not correct format" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    Display="None"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Confirm EmailId"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtconfemail" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtconfemail" 
                    ErrorMessage="Please enter your Confirm EmailId" Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
                </asp:ValidatorCalloutExtender>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtemailid" ControlToValidate="txtconfemail" 
                    ErrorMessage="Email and Confirm Email Id is not match" Display="None"></asp:CompareValidator>
                <asp:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="CompareValidator1">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtpasssword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtpasssword" ErrorMessage="Please enter your Password" 
                    Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtcomfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
                
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtcomfirmpassword" 
                    ErrorMessage="Please enter your Confirm Password" Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator6">
                </asp:ValidatorCalloutExtender>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToCompare="txtpasssword" ControlToValidate="txtcomfirmpassword" 
                    ErrorMessage="Password and ConfirmPassword is not match" Display="None"></asp:CompareValidator>
                <asp:ValidatorCalloutExtender ID="CompareValidator2_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="CompareValidator2">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label7" runat="server" Text="Date of Birth"></asp:Label>



            </td>
            <td class="style3">
                <asp:TextBox ID="txtdob" runat="server" ontextchanged="txtdob_TextChanged"></asp:TextBox>




            </td>
            <td class="style2">
                <asp:CalendarExtender ID="dob" TargetControlID="txtdob"  runat="server">
                </asp:CalendarExtender>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="Please  enter your Date of Birth" 
                    Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator13_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator13">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="style3">
                <asp:RadioButtonList ID="GenderRb" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label9" runat="server" Text="Address of Communication"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="Please enter your Communication Address" 
                    ControlToValidate="txtaddress" Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator7_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator7">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label10" runat="server" Text="PinCode"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="Please enter Pincode" ControlToValidate="txtpincode" 
                    Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator8_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator8">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="txtpincode" Display="None" 
                    ErrorMessage="Your Pincode is not pincode format" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="RegularExpressionValidator7_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RegularExpressionValidator7">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label11" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="Please enter  you MobileNo" ControlToValidate="txtmobileno" 
                    Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator9_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator9">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ErrorMessage="Please enter mobile format no" 
                    ValidationExpression="^\d{10}$" ControlToValidate="txtmobileno" Display="None"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="RegularExpressionValidator8_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RegularExpressionValidator8">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label12" runat="server" Text="StdCode-PhoneNo"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtphoneno" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtphoneno" Display="None" 
                    ErrorMessage="Please enter  Phone No"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                    ControlToValidate="txtphoneno" Display="None" 
                    ErrorMessage="Please enter Phone No  in Correct Format Like- 011-2234345" 
                    ValidationExpression="^[0-9]\d{2,4}-\d{6,8}$"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="RegularExpressionValidator9_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RegularExpressionValidator9">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label13" runat="server" Text="Current Residence City"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="ddlcurrentcity" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Noida</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Kolkatta</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="ddlcurrentcity" InitialValue="Select"
                    ErrorMessage="Please select your Current Residence City" Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator11_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator11">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Next" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table></div>
</asp:Content>

