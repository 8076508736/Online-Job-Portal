<%@ Page Title="Add State Master" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddStateMaster.aspx.cs" Inherits="_Default" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
    
                    <table class="style1">
                        <tr>
                            <td colspan="3"><center>
                                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                </asp:ToolkitScriptManager>
                                <asp:Label ID="Label4" runat="server" Text="State Master"></asp:Label></center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Country  Code"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlcountrycode" runat="server" DataSourceID="SqlDataSource1" 
                                    DataTextField="CountryCode" DataValueField="CountryCode" Height="17px" 
                                    Width="225px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                    SelectCommand="SELECT [CountryCode] FROM [CountryDetails]">
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="State Code"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="statecode" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="State Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtstatename" runat="server" Width="260px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtstatename" ErrorMessage="Please Enter State Name" 
                                    Display="None"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                                </asp:ValidatorCalloutExtender>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtstatename" Display="None" ValidationExpression="^\s*[a-zA-z\s]+\s*$"
                                    ErrorMessage="Please Enter correct format  Like= Uttar Pradesh"></asp:RegularExpressionValidator>
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
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                    DataKeyNames="StateCode" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                                    GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                            ShowSelectButton="True" />
                                        <asp:BoundField DataField="StateCode" HeaderText="StateCode" ReadOnly="True" 
                                            SortExpression="StateCode" />
                                        <asp:BoundField DataField="StateName" HeaderText="StateName" 
                                            SortExpression="StateName" />
                                        <asp:BoundField DataField="CountryCode" HeaderText="CountryCode" 
                                            SortExpression="CountryCode" />
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
                                    DeleteCommand="DELETE FROM [StateDetails] WHERE [StateCode] = @StateCode" 
                                    InsertCommand="INSERT INTO [StateDetails] ([StateCode], [StateName], [CountryCode]) VALUES (@StateCode, @StateName, @CountryCode)" 
                                    SelectCommand="SELECT * FROM [StateDetails]" 
                                    UpdateCommand="UPDATE [StateDetails] SET [StateName] = @StateName, [CountryCode] = @CountryCode WHERE [StateCode] = @StateCode">
                                    <DeleteParameters>
                                        <asp:Parameter Name="StateCode" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="StateCode" Type="String" />
                                        <asp:Parameter Name="StateName" Type="String" />
                                        <asp:Parameter Name="CountryCode" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="StateName" Type="String" />
                                        <asp:Parameter Name="CountryCode" Type="String" />
                                        <asp:Parameter Name="StateCode" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource></center>
                            </td>
                        </tr>
                    </table>
                    </ContentTemplate>
            </asp:UpdatePanel>
    
    </div>
    
</asp:Content>

