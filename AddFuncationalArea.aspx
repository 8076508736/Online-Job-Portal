<%@ Page Title="Add Functional Area" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddFuncationalArea.aspx.cs" Inherits="FuncationalArea" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="3"><center>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Text="Funcational Area "></asp:Label></center>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="cational" runat="server" Text="Funcational AreaId"></asp:Label>
            </td>
            <td>
                <asp:Label ID="funcationid" runat="server" Text="FuncationalId"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Funcational Area Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFuncationalAreaName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFuncationalAreaName" 
                    ErrorMessage="Please  enter Funcational Area Name" SetFocusOnError="True" 
                    Display="None"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
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
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3"><center>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" 
                    DataKeyNames="FuncationalAreaId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="FuncationalAreaId" HeaderText="FuncationalAreaId" 
                            ReadOnly="True" SortExpression="FuncationalAreaId" />
                        <asp:BoundField DataField="FuncationalAreaName" 
                            HeaderText="FuncationalAreaName" SortExpression="FuncationalAreaName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                    DeleteCommand="DELETE FROM [FuncationalAreaDetails] WHERE [FuncationalAreaId] = @FuncationalAreaId" 
                    InsertCommand="INSERT INTO [FuncationalAreaDetails] ([FuncationalAreaId], [FuncationalAreaName]) VALUES (@FuncationalAreaId, @FuncationalAreaName)" 
                    SelectCommand="SELECT * FROM [FuncationalAreaDetails]" 
                    UpdateCommand="UPDATE [FuncationalAreaDetails] SET [FuncationalAreaName] = @FuncationalAreaName WHERE [FuncationalAreaId] = @FuncationalAreaId">
                    <DeleteParameters>
                        <asp:Parameter Name="FuncationalAreaId" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FuncationalAreaId" Type="String" />
                        <asp:Parameter Name="FuncationalAreaName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FuncationalAreaName" Type="String" />
                        <asp:Parameter Name="FuncationalAreaId" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource></center>
            </td>
        </tr>
    </table>
</asp:Content>

