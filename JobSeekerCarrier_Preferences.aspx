<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobSeekerCarrier_Preferences.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <table class="style1">
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td colspan="3">
                            <center>
                                <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Italic="False" 
                                    Font-Overline="False" Font-Size="Medium" Font-Underline="True" 
                                    Text="Career Preference"></asp:Label>
                                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                </asp:ToolkitScriptManager>
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <table class="style1">
                                <tr>
                                    <td>
                                <asp:Label ID="Label88" runat="server" Font-Bold="True" Font-Size="Medium" 
                                    ForeColor="Lime" Text="Your Id"></asp:Label>
                                <asp:Label ID="JobSeekerId" runat="server" Font-Bold="False" Font-Size="Medium" 
                                    ForeColor="Black" Text="JobSeekerId"></asp:Label>
                                    </td>
                                    <td>
                                <asp:Label ID="Label87" runat="server" Font-Bold="True" Font-Size="Medium" 
                                    ForeColor="Lime" Text="Welcome"></asp:Label>
                                <asp:Label ID="JobSeekerName" runat="server" Font-Bold="False" 
                                    Font-Size="Medium" ForeColor="Black" Text="JobSeekerName"></asp:Label>
                                    </td>
                                </tr>
                                </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label38" runat="server" Text="I  am  Looking  For"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="RbLookingfor" runat="server" 
                                RepeatDirection="Horizontal" 
                                >
                                <asp:ListItem>Job</asp:ListItem>
                                <asp:ListItem Selected="True">Higher Studies</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="PanelJobPreferences" runat="server">
                    <table class="style1">
                        <tr>
                            <td colspan="3">
                                <center>
                                    <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Italic="False" 
                                    Font-Overline="False" Font-Size="Medium" Font-Underline="True" 
                                    Text="Job Preferences"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label40" runat="server" Text="Work Preference"></asp:Label>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="RbWorkType" runat="server" 
                                RepeatDirection="Horizontal">
                                    <asp:ListItem>Part Time</asp:ListItem>
                                    <asp:ListItem Selected="True">Full Time</asp:ListItem>
                                    <asp:ListItem>Internship</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label41" runat="server" Text="Minimum Salary(Expected Per Year)"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtExpectedSalary" runat="server"></asp:TextBox>
                                <asp:Label ID="Label89" runat="server" Text="Rs per anum"></asp:Label>
</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtExpectedSalary" Display="None" 
                                    ErrorMessage="Please enter Expected Salary" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <table class="style1">
                                    <tr>
                                        <td colspan="3"><center>
                                            <asp:Label ID="Label90" runat="server" Font-Bold="True" 
                                                Text="Language You Know"></asp:Label>
                                                </center>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            1.<asp:TextBox ID="txtlan4" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:CheckBoxList ID="Know1" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem>Read</asp:ListItem>
                                                <asp:ListItem>Write</asp:ListItem>
                                                <asp:ListItem>Speak</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="txtlan2" Display="None" 
                                                ErrorMessage="Please enter  Language" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            2.<asp:TextBox ID="txtlan2" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:CheckBoxList ID="Know2" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem>Read</asp:ListItem>
                                                <asp:ListItem>Write</asp:ListItem>
                                                <asp:ListItem>Speak</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                ControlToValidate="txtlan3" Display="None" 
                                                ErrorMessage="Please enter  Language" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            3.<asp:TextBox ID="txtlan3" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:CheckBoxList ID="Know3" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem>Read</asp:ListItem>
                                                <asp:ListItem>Write</asp:ListItem>
                                                <asp:ListItem>Speak</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                ControlToValidate="txtlan3" Display="None" 
                                                ErrorMessage="Please enter  Language" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <center>
                                    <asp:Label ID="Label42" runat="server" Font-Bold="True" 
                                        Text="What  is  your Perferred  Job Type"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label44" runat="server" Text="1st Preference"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtJobType1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtJobType1" Display="None" 
                                    ErrorMessage="Please enter 1st Prefrence"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                                </asp:ValidatorCalloutExtender>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                                    ErrorMessage="CustomValidator"></asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label45" runat="server" Text="2nd  Preference"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtJobType2" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtJobType2" Display="None" 
                                    ErrorMessage="Please enter 2nd Prefrence" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator6">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label46" runat="server" Text="3rd Preference"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtJobType3" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtJobType3" Display="None" 
                                    ErrorMessage="Please enter 3rd Prefrence" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator7_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator7">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2" colspan="3">
                                <center>
                                    <asp:Label ID="Label47" runat="server" Font-Bold="True" 
                                    Text="What  is  your Perferred  Job Location"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label48" runat="server" Text="1st Preference"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlLocation1" runat="server" Height="29px" Width="226px" 
                                    DataSourceID="SqlDataSource1" DataTextField="CityName" 
                                DataValueField="CityName" ondatabound="ddlLocation1_DataBound">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                SelectCommand="SELECT [CityName] FROM [JobCityDetails] ORDER BY [CityName]">
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label49" runat="server" Text="2nd  Preference"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlLocation2" runat="server" Height="27px" Width="226px" 
                                    DataSourceID="SqlDataSource1" DataTextField="CityName" 
                                DataValueField="CityName" ondatabound="ddlLocation2_DataBound">
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label50" runat="server" Text="3rd Preference"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlLocation3" runat="server" Height="25px" Width="226px" 
                                    DataSourceID="SqlDataSource1" DataTextField="CityName" 
                                DataValueField="CityName" ondatabound="ddlLocation3_DataBound">
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Insert" Width="89px" 
                                    onclick="Button1_Click" />
                            </td>
                            <td>
                                <asp:Label ID="Meesage" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</div>
</asp:Content>

