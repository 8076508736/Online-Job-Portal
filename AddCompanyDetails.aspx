<%@ Page Title="Add Job Details" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCompanyDetails.aspx.cs" Inherits="CompanyInfo" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="3">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3"><center>
                <asp:Label ID="Label9" runat="server" Text="Add For Company" Font-Bold="True" 
                    Font-Italic="True" Font-Overline="False" Font-Size="Medium" ForeColor="#990000"></asp:Label></center>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="CompanyId"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Companyid" runat="server" Text="CompanyId"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="CompanyName"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtcompanyname" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcompanyname" Display="None" 
                    ErrorMessage="Please Enter Company Name"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtcompanypassword" runat="server" Width="225px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcompanypassword" Display="None" 
                    ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="ConfirmPassword"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcpassword" runat="server" Width="225px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcpassword" Display="None" 
                    ErrorMessage="Please enter Confirm Password"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                </asp:ValidatorCalloutExtender>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtcompanypassword" ControlToValidate="txtcpassword" 
                    Display="None" ErrorMessage="Password and Confirm Password is not match"></asp:CompareValidator>
                <asp:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="CompareValidator1">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="CompanyType"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCompanyType" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="FuncationalAreaName" 
                    DataValueField="FuncationalAreaName" Width="225px" 
                    ondatabound="ddlCompanyType_DataBound">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                    SelectCommand="SELECT [FuncationalAreaName] FROM [FuncationalAreaDetails] ORDER BY [FuncationalAreaName]">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="ddlCompanyType" Display="None" 
                    ErrorMessage="Please select company type" InitialValue="Select"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="CompanyDetails"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcompanydetails" runat="server" Height="60px" 
                    TextMode="MultiLine" Width="225px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtcompanydetails" Display="None" 
                    ErrorMessage="Please enter Company Details"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator7_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator7">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="CompanyLocation"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DdlCompanyLocation" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="CityName" 
                    DataValueField="CityName" Height="22px" Width="225px" 
                    ondatabound="DdlCompanyLocation_DataBound">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                    SelectCommand="SELECT [CityName] FROM [JobCityDetails]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DdlCompanyLocation" Display="None" 
                    ErrorMessage="Please select Location"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="CompanyEmailId"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcompanyemailid" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtcompanyemailid" Display="None" 
                    ErrorMessage="Please enter EmailId"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator6">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcompanyemailid" Display="None" 
                    ErrorMessage="Not valid EmailId" SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Insert" runat="server" onclick="Button1_Click" Text="Insert" />
            </td>
            <td>
                <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CompanyId" 
                    DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="CompanyId" HeaderText="CompanyId" ReadOnly="True" 
                            SortExpression="CompanyId" />
                        <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" 
                            SortExpression="Company_Name" />
                        <asp:BoundField DataField="Company_Type" HeaderText="Company_Type" 
                            SortExpression="Company_Type" />
                        <asp:BoundField DataField="Company_Details" HeaderText="Company_Details" 
                            SortExpression="Company_Details" />
                        <asp:BoundField DataField="Company_Location" HeaderText="Company_Location" 
                            SortExpression="Company_Location" />
                        <asp:BoundField DataField="Company_EmailId" HeaderText="Company_EmailId" 
                            SortExpression="Company_EmailId" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                    DeleteCommand="DELETE FROM [Company_Details] WHERE [CompanyId] = @CompanyId" 
                    InsertCommand="INSERT INTO [Company_Details] ([CompanyId], [Company_Name], [Company_Type], [Company_Details], [Company_Location], [Company_EmailId]) VALUES (@CompanyId, @Company_Name, @Company_Type, @Company_Details, @Company_Location, @Company_EmailId)" 
                    SelectCommand="SELECT * FROM [Company_Details] ORDER BY [Company_Name]" 
                    UpdateCommand="UPDATE [Company_Details] SET [Company_Name] = @Company_Name, [Company_Type] = @Company_Type, [Company_Details] = @Company_Details, [Company_Location] = @Company_Location, [Company_EmailId] = @Company_EmailId WHERE [CompanyId] = @CompanyId">
                    <DeleteParameters>
                        <asp:Parameter Name="CompanyId" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CompanyId" Type="String" />
                        <asp:Parameter Name="Company_Name" Type="String" />
                        <asp:Parameter Name="Company_Type" Type="String" />
                        <asp:Parameter Name="Company_Details" Type="String" />
                        <asp:Parameter Name="Company_Location" Type="String" />
                        <asp:Parameter Name="Company_EmailId" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Company_Name" Type="String" />
                        <asp:Parameter Name="Company_Type" Type="String" />
                        <asp:Parameter Name="Company_Details" Type="String" />
                        <asp:Parameter Name="Company_Location" Type="String" />
                        <asp:Parameter Name="Company_EmailId" Type="String" />
                        <asp:Parameter Name="CompanyId" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </ContentTemplate>
               
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>

