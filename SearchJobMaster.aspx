<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeFile="SearchJobMaster.aspx.cs" Inherits="SearchJobMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td colspan="4"><center>
                            <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="Yellow" 
                                Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Red" 
                                Text="Job Search By Seeker"></asp:Label></center>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="userid" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Job By Category"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Job By Keywords"></asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:Label ID="Label4" runat="server" Text="Job By Location"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                    <asp:DropDownList ID="ddlFuncationArea" runat="server" 
                        Width="221px" DataSourceID="SqlDataSource1" 
                        DataTextField="FuncationalAreaName" DataValueField="FuncationalAreaName" ondatabound="ddlFuncationArea_DataBound1" 
                               >
                    </asp:DropDownList>
                            <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                        
                        
                                SelectCommand="SELECT [FuncationalAreaName] FROM [FuncationalAreaDetails] ORDER BY [FuncationalAreaName]">
                    </asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:TextBox ID="txtkeywords" runat="server"></asp:TextBox>
                        </td>
                        <td colspan="2">
                    <asp:DropDownList ID="ddlLocation" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="CityName" DataValueField="CityName" Width="152px" 
                                ondatabound="ddlLocation_DataBound1">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                        
                        SelectCommand="SELECT [CityName] FROM [JobCityDetails] ORDER BY [CityName]">
                    </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Job By Experiences"></asp:Label>
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Salary Expectation"></asp:Label>
                        </td>
                        <td rowspan="3">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
                        </td>
                        <td rowspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlExperiencesTo" runat="server">
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
                            </asp:DropDownList>
                            &nbsp;from<asp:DropDownList ID="ddlExperiencesFrom" runat="server">
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
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label24" runat="server" Text="MinSalary"> </asp:Label>
                            <asp:DropDownList ID="ddlMinSalary" runat="server">
                            </asp:DropDownList>
                            <asp:Label ID="Label23" runat="server" Text="MaxSalary">
                    </asp:Label>
                            <asp:DropDownList ID="ddlMaxSalary" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td><center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                       
                        <asp:TemplateField HeaderText="Apply Job">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                        </asp:TemplateField>
                       
                        <asp:BoundField DataField="Job_FuncationalArea" 
                            HeaderText="Job Functional Area" /> 
                        <asp:BoundField DataField="Company_JobId" Visible="False" />
                        <asp:BoundField DataField="job_title" HeaderText="Job Title" />
                        <asp:HyperLinkField DataTextField="company_name" HeaderText="Company Name" 
                            DataNavigateUrlFields="company_jobid" 
                            DataNavigateUrlFormatString="~/CompanyWholeDetails.aspx?jobid={0}" />
                       
                        <asp:BoundField DataField="Job_Eiligibility" HeaderText="Eligibility" />
                        <asp:BoundField DataField="Job_ToFromDate" HeaderText="Interview Date" />
                        <asp:BoundField DataField="No_Of_Vacancy" HeaderText="Vacency" />
                    </Columns>
                </asp:GridView></center>
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
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

