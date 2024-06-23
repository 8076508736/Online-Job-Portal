<%@ Page Title="Add Country Details" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCountryMaster.aspx.cs" Inherits="_Default" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
     
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
        <table border="5" class="style1">
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td colspan="3">
                                <center>
                                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                </asp:ToolkitScriptManager>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                                        Text="CountryName Master"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Country Code"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="countrycode" runat="server" Text="lable"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Country Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtcountryname" runat="server" Width="233px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtcountryname" Display="None" 
                                    ErrorMessage="Please Enter Country Name"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                                </asp:ValidatorCalloutExtender>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtcountryname" Display="None" 
                                    ErrorMessage="Please enter Correct format  Like =India" 
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
                                        DataKeyNames="CountryCode" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                        GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                                ShowSelectButton="True" CausesValidation="False" />
                                            <asp:BoundField DataField="CountryCode" HeaderText="CountryCode" 
                                                ReadOnly="True" SortExpression="CountryCode" />
                                            <asp:BoundField DataField="CountryName" HeaderText="CountryName" 
                                                SortExpression="CountryName" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                        DeleteCommand="DELETE FROM [CountryDetails] WHERE [CountryCode] = @CountryCode" 
                                        InsertCommand="INSERT INTO [CountryDetails] ([CountryCode], [CountryName]) VALUES (@CountryCode, @CountryName)" 
                                        SelectCommand="SELECT * FROM [CountryDetails]" 
                                        UpdateCommand="UPDATE [CountryDetails] SET [CountryName] = @CountryName WHERE [CountryCode] = @CountryCode">
                                        <DeleteParameters>
                                            <asp:Parameter Name="CountryCode" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="CountryCode" Type="String" />
                                            <asp:Parameter Name="CountryName" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="CountryName" Type="String" />
                                            <asp:Parameter Name="CountryCode" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </center>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
         </ContentTemplate>
            </asp:UpdatePanel>
    </div>
</asp:Content>

