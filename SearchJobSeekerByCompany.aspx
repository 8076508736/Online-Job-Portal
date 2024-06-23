<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="SearchJobSeekerByCompany.aspx.cs" Inherits="SearchJobSeekerByCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <table class="style1">
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td colspan="4"><center>
                            <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="Yellow" 
                                Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Red" 
                                Text="Search JobSeeker By Comany"></asp:Label></center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                        <td colspan="2">
                            <asp:Label ID="CompanyId" runat="server" Text="CompanyId"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Search By Qulification"></asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:Label ID="Label3" runat="server" Text="Job By Experience"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Serch By Technology"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            <asp:TextBox ID="txtQulification" runat="server" 
                               ></asp:TextBox>
                        </td>
                        <td colspan="2">
                            <asp:Label ID="Label5" runat="server" Text="Year"></asp:Label>
                                <asp:DropDownList ID="ddlWEYearTo" runat="server">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;TO<asp:DropDownList ID="ddlWEYearFrom" runat="server">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                </asp:DropDownList>
                            Year</td>
                        <td>
                            <asp:TextBox ID="txttechnology" runat="server" 
                               ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
                                style="height: 26px" />
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
                            <asp:Button ID="Send" runat="server" onclick="Send_Click" Text="Send" />
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td><center>
                <asp:GridView ID="GridView1" runat="server" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    EmptyDataText="There is no data for  this  query">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Select" Text="Select"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBox ID="chkall" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="chkall_CheckedChanged" Text="All" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="chk" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                </center>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </ContentTemplate>
    </asp:UpdatePanel>

    
</asp:Content>

