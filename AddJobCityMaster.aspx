<%@ Page Title="Add Job City" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddJobCityMaster.aspx.cs" Inherits="Default2" %><%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 30px;
        }
        .style4
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <table cl>
        <tr>
            <td class="style2" colspan="3"><center>
                
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Text="Job City Name"></asp:Label>
                </center></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="City Code"></asp:Label>
            </td>
            <td>
                <asp:Label ID="citycode" runat="server" Text="citycode"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Text="City Name"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtcityname" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcityname" Display="None" 
                    ErrorMessage="Please enter City Name"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcityname" 
                    ErrorMessage="City Name is not Valid format" 
                    ValidationExpression="^\s*[a-zA-z\s]+\s*$" Display="None" 
                    SetFocusOnError="True"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
                </asp:ValidatorCalloutExtender>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
            </td>
            <td>
                <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                </td>
        </tr>
        <tr>
            <td colspan="3"><center>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CityCode" 
                    DataSourceID="SqlDataSource1" PageSize="5">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" CausesValidation="False" />
                        <asp:BoundField DataField="CityCode" HeaderText="CityCode" ReadOnly="True" 
                            SortExpression="CityCode" />
                        <asp:BoundField DataField="CityName" HeaderText="CityName" 
                            SortExpression="CityName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                    DeleteCommand="DELETE FROM [JobCityDetails] WHERE [CityCode] = @CityCode" 
                    InsertCommand="INSERT INTO [JobCityDetails] ([CityCode], [CityName]) VALUES (@CityCode, @CityName)" 
                    SelectCommand="SELECT * FROM [JobCityDetails] ORDER BY [CityName]" 
                    UpdateCommand="UPDATE [JobCityDetails] SET [CityName] = @CityName WHERE [CityCode] = @CityCode">
                    <DeleteParameters>
                        <asp:Parameter Name="CityCode" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CityCode" Type="String" />
                        <asp:Parameter Name="CityName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CityName" Type="String" />
                        <asp:Parameter Name="CityCode" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource></center>
            </td>
        </tr>
    </table>
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>

