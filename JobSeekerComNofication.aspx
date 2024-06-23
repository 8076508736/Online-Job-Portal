<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeFile="JobSeekerComNofication.aspx.cs" Inherits="JobSeekerComNofication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="SrNo" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="SrNo" HeaderText="SrNo" InsertVisible="False" 
                            ReadOnly="True" SortExpression="SrNo" />
                         <asp:HyperLinkField DataTextField="CompanyId" HeaderText="Company Id" 
                            DataNavigateUrlFields="CompanyId" 
                            DataNavigateUrlFormatString="~/CompanyDetail.aspx?companyid={0}" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                    SelectCommand="SELECT [SrNo], [CompanyId], [Date] FROM [JobSeekerNotification] WHERE ([UserId] = @UserId) ORDER BY [Date]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="UserId" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </center></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

