<%@ Page Title="Add Key Words" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddKeywordsMaster.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="3"><center>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Medium" Font-Underline="True" Text="KeyWord Details"></asp:Label></center>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Keyword Id"></asp:Label>
            </td>
            <td>
                <asp:Label ID="keywordid" runat="server" Text="KeywordId"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="FuncationalAreaId"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlfuncationalareaId" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="FuncationalAreaId" 
                    DataValueField="FuncationalAreaId" Width="160px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                    SelectCommand="SELECT [FuncationalAreaId] FROM [FuncationalAreaDetails]">
                </asp:SqlDataSource>
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
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="KeyWord Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtkeywordname" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
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
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="KeywordId" 
                    DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="FuncationalAreaId" HeaderText="FuncationalAreaId" 
                            SortExpression="FuncationalAreaId" />
                        <asp:BoundField DataField="KeywordId" HeaderText="KeywordId" ReadOnly="True" 
                            SortExpression="KeywordId" />
                        <asp:BoundField DataField="KeywordName" HeaderText="KeywordName" 
                            SortExpression="KeywordName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                    DeleteCommand="DELETE FROM [KeywordDetails] WHERE [KeywordId] = @KeywordId" 
                    InsertCommand="INSERT INTO [KeywordDetails] ([FuncationalAreaId], [KeywordId], [KeywordName]) VALUES (@FuncationalAreaId, @KeywordId, @KeywordName)" 
                    SelectCommand="SELECT * FROM [KeywordDetails]" 
                    UpdateCommand="UPDATE [KeywordDetails] SET [FuncationalAreaId] = @FuncationalAreaId, [KeywordName] = @KeywordName WHERE [KeywordId] = @KeywordId">
                    <DeleteParameters>
                        <asp:Parameter Name="KeywordId" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FuncationalAreaId" Type="String" />
                        <asp:Parameter Name="KeywordId" Type="String" />
                        <asp:Parameter Name="KeywordName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FuncationalAreaId" Type="String" />
                        <asp:Parameter Name="KeywordName" Type="String" />
                        <asp:Parameter Name="KeywordId" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource></center>
            </td>
        </tr>
    </table>
</asp:Content>

