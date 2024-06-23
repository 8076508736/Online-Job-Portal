<%@ Page Title="Add College Details" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCollegeMaster.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="3"><center>
                                <asp:Label ID="Label4" runat="server" Text="College Master"></asp:Label></center>
            </td>
        </tr>
        <tr>
            <td>
                                <asp:Label ID="Label8" runat="server" Text="College Code"></asp:Label>
                            </td>
            <td>
                                <asp:Label ID="Collegecode" runat="server"></asp:Label>
                            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                                <asp:Label ID="Label6" runat="server" Text="State  Code"></asp:Label>
                            </td>
            <td>
                                <asp:DropDownList ID="ddlStateCode" runat="server" DataSourceID="SqlDataSource1" 
                                    DataTextField="StateCode" DataValueField="StateCode" 
                                    Width="225px" ondatabound="ddlStateCode_DataBound">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                    
                    SelectCommand="SELECT [StateCode] FROM [StateDetails] ORDER BY [StateCode]">
                                </asp:SqlDataSource>
                            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="ddlStateCode" ErrorMessage="Please Select State Code" 
                    InitialValue="Select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                                <asp:Label ID="Label7" runat="server" Text="College Name"></asp:Label>
                            </td>
            <td>
                                <asp:TextBox ID="txtcollegename" runat="server" Width="260px"></asp:TextBox>
                            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcollegename" ErrorMessage="Please Enter College Name" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                                <asp:Button ID="Button2" runat="server" Text="Insert" 
                    onclick="Button2_Click" style="height: 26px" />
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
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CollegeCode" 
                    DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="CollegeCode" HeaderText="CollegeCode" 
                            ReadOnly="True" SortExpression="CollegeCode" />
                        <asp:BoundField DataField="StateCode" HeaderText="StateCode" 
                            SortExpression="StateCode" />
                        <asp:BoundField DataField="CollegeName" HeaderText="CollegeName" 
                            SortExpression="CollegeName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                    DeleteCommand="DELETE FROM [CollegeDetails] WHERE [CollegeCode] = @CollegeCode" 
                    InsertCommand="INSERT INTO [CollegeDetails] ([CollegeCode], [StateCode], [CollegeName]) VALUES (@CollegeCode, @StateCode, @CollegeName)" 
                    SelectCommand="SELECT * FROM [CollegeDetails] ORDER BY [CollegeName]" 
                    UpdateCommand="UPDATE [CollegeDetails] SET [StateCode] = @StateCode, [CollegeName] = @CollegeName WHERE [CollegeCode] = @CollegeCode">
                    <DeleteParameters>
                        <asp:Parameter Name="CollegeCode" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CollegeCode" Type="String" />
                        <asp:Parameter Name="StateCode" Type="String" />
                        <asp:Parameter Name="CollegeName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="StateCode" Type="String" />
                        <asp:Parameter Name="CollegeName" Type="String" />
                        <asp:Parameter Name="CollegeCode" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </center>
            </td>
        </tr>
    </table>
</asp:Content>

