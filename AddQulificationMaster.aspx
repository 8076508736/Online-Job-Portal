<%@ Page Title="Add Qulification" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddQulificationMaster.aspx.cs" Inherits="_Default" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
        <table border="5" class="style1">
            <tr>
                <td colspan="3">
                    <center>
                        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                        <asp:Label ID="Label1" runat="server" Text="Qulification Master"></asp:Label>
                    </center>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Qulification Id"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="qulificationid" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Qulification Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtqulificationname" runat="server" Height="16px" 
                        Width="224px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtqulificationname" Display="None" 
                        ErrorMessage="Please  Enter Qulification  Name  Like Graduation"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtqulificationname" Display="None" 
                        ErrorMessage="Please enter correct format Like= PG Diploma" 
                        ValidationExpression="^\s*[a-zA-z\s]+\s*$"></asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Insert" />
                </td>
                <td>
                    <asp:Label ID="Message" runat="server" Text="Message"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <center>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                            DataKeyNames="QulificationId" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                            GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                    ShowSelectButton="True" />
                                <asp:BoundField DataField="QulificationId" HeaderText="QulificationId" 
                                    ReadOnly="True" SortExpression="QulificationId" />
                                <asp:BoundField DataField="QulificationName" HeaderText="QulificationName" 
                                    SortExpression="QulificationName" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                            DeleteCommand="DELETE FROM [QulificationDetails] WHERE [QulificationId] = @QulificationId" 
                            InsertCommand="INSERT INTO [QulificationDetails] ([QulificationId], [QulificationName]) VALUES (@QulificationId, @QulificationName)" 
                            SelectCommand="SELECT * FROM [QulificationDetails]" 
                            UpdateCommand="UPDATE [QulificationDetails] SET [QulificationName] = @QulificationName WHERE [QulificationId] = @QulificationId">
                            <DeleteParameters>
                                <asp:Parameter Name="QulificationId" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="QulificationId" Type="String" />
                                <asp:Parameter Name="QulificationName" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="QulificationName" Type="String" />
                                <asp:Parameter Name="QulificationId" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="3">
                    &nbsp;</td>
            </tr>
        </table>
        </ContentTemplate>
            </asp:UpdatePanel>
    </div>
</asp:Content>

