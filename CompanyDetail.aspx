<%@ Page Title="Company Details" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeFile="CompanyDetail.aspx.cs" Inherits="CompanyDetai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td><center>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="CompanyId" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="CompanyId" HeaderText="Company Id" ReadOnly="True" 
                            SortExpression="CompanyId" />
                        <asp:BoundField DataField="Company_Name" HeaderText="Company Name" 
                            SortExpression="Company_Name" />
                        <asp:BoundField DataField="Company_Type" HeaderText="Company Type" 
                            SortExpression="Company_Type" />
                        <asp:BoundField DataField="Company_Details" HeaderText="Company Details" 
                            SortExpression="Company_Details" />
                        <asp:BoundField DataField="Company_Location" HeaderText="Company Location" 
                            SortExpression="Company_Location" />
                        <asp:BoundField DataField="Company_EmailId" HeaderText="Company EmailId" 
                            SortExpression="Company_EmailId" />
                    </Fields>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                    SelectCommand="SELECT * FROM [Company_Details] WHERE ([CompanyId] = @CompanyId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="CompanyId" QueryStringField="companyid" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
          </center>  </td>
        </tr>
    </table>
</asp:Content>

