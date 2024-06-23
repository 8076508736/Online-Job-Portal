<%@ Page Title="Add University Master" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddUniversityMaster.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
<div>
    <table class="style1">
        <tr>
            <td colspan="3"><center>
                                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                </asp:ToolkitScriptManager>
                                <asp:Label ID="Label4" runat="server" Text="University Master" 
                    Font-Bold="True"></asp:Label></center>
            </td>
        </tr>
        <tr>
            <td>
                                <asp:Label ID="Label6" runat="server" Text="State Code"></asp:Label>
                            </td>
            <td>
                                <asp:DropDownList ID="ddlstatecode" runat="server" DataSourceID="SqlDataSource1" 
                                    DataTextField="StateCode" DataValueField="StateCode" Height="17px" 
                                    Width="225px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                    SelectCommand="SELECT [StateCode] FROM [StateDetails]"></asp:SqlDataSource>
                            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                                <asp:Label ID="Label9" runat="server" Text="University Code"></asp:Label>
                            </td>
            <td>
                                <asp:Label ID="universitycode" runat="server" 
                    Text="Universitycode"></asp:Label>
                            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                                <asp:Label ID="Label8" runat="server" Text="University Name"></asp:Label>
                            </td>
            <td>
                                <asp:TextBox ID="txtuniversityname" runat="server" Width="260px"></asp:TextBox>
                            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuniversityname" Display="None" 
                    ErrorMessage="Please enter University Name"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                </asp:ValidatorCalloutExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtuniversityname" Display="None" ValidationExpression="^\s*[a-zA-z\s]+\s*$" 
                    ErrorMessage="Please enter  correct format"></asp:RegularExpressionValidator>
                <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
                </asp:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td>
                                <asp:Button ID="Button2" runat="server" Text="Insert" onclick="Button2_Click" />
                            </td>
            <td>
                                <asp:Label ID="Message" runat="server" Text="Message"></asp:Label>
                            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3"><center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="UniversityCode" DataSourceID="SqlDataSource2" 
                    AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="UniversityCode" HeaderText="UniversityCode" 
                            ReadOnly="True" SortExpression="UniversityCode" />
                        <asp:BoundField DataField="StateCode" HeaderText="StateCode" 
                            SortExpression="StateCode" />
                        <asp:BoundField DataField="UniversityName" HeaderText="UniversityName" 
                            SortExpression="UniversityName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                    DeleteCommand="DELETE FROM [UniversityDetails] WHERE [UniversityCode] = @UniversityCode" 
                    InsertCommand="INSERT INTO [UniversityDetails] ([UniversityCode], [StateCode], [UniversityName]) VALUES (@UniversityCode, @StateCode, @UniversityName)" 
                    SelectCommand="SELECT * FROM [UniversityDetails]" 
                    UpdateCommand="UPDATE [UniversityDetails] SET [StateCode] = @StateCode, [UniversityName] = @UniversityName WHERE [UniversityCode] = @UniversityCode">
                    <DeleteParameters>
                        <asp:Parameter Name="UniversityCode" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UniversityCode" Type="String" />
                        <asp:Parameter Name="StateCode" Type="String" />
                        <asp:Parameter Name="UniversityName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="StateCode" Type="String" />
                        <asp:Parameter Name="UniversityName" Type="String" />
                        <asp:Parameter Name="UniversityCode" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource></center>
            </td>
        </tr>
    </table>
          </ContentTemplate>
            </asp:UpdatePanel>
    </div>
</asp:Content>

