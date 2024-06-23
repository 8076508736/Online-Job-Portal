<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="UpdateJobByCompany.aspx.cs" Inherits="UpdateJobByCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td><center>
                    <asp:Label ID="Label18" runat="server" Text="Job Update By  Company" 
                        Font-Bold="True" Font-Italic="True" Font-Size="Larger" Font-Underline="True" 
                        ForeColor="Maroon"></asp:Label></center>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="style1">
                                <tr>
                                    <td>
                                            <asp:Label ID="Label25" runat="server" Text="JobId"></asp:Label>
                                        </td>
                                    <td>
                                            <asp:TextBox ID="txtJobId" runat="server"></asp:TextBox>
                                        </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                            <asp:Button ID="BView" runat="server" onclick="Button1_Click" Text="View" />
                                        </td>
                                    <td>
                                            <asp:Button ID="BUpdate" runat="server" onclick="BUpdate_Click" 
                                            Text="Update" />
                                        </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Panel ID="MyPanel" runat="server" Visible="False">
                                <table class="style1">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label19" runat="server" Text="Job Title"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtJobTitle" runat="server" Width="400px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtCompanyName" runat="server" Width="397px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            <asp:Label ID="Label2" runat="server" Text="Company Address"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:TextBox ID="txtCompanyAddress" runat="server" Height="50px" TextMode="MultiLine" 
                        Width="400px"></asp:TextBox>
                                        </td>
                                        <td class="style3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Funcational Area"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtFuncationalArea" runat="server" Width="394px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Key Words"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtKeyword" runat="server" Width="175px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="Salary"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="MinSalary"> </asp:Label>
                                            <asp:DropDownList ID="ddlMinSalary" runat="server">
                                            </asp:DropDownList>
                                            <asp:Label ID="Label23" runat="server" Text="MaxSalary">
                    </asp:Label>
                                            <asp:DropDownList ID="ddlMaxSalary" runat="server">
                                            </asp:DropDownList>
                                            <asp:Label ID="sal" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="Location"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlLocation" runat="server" DataSourceID="SqlDataSource1" 
                                                DataTextField="CityName" DataValueField="CityName" Width="400px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                SelectCommand="SELECT [CityName] FROM [JobCityDetails]"></asp:SqlDataSource>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text="Experiences"></asp:Label>
                                        </td>
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
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Text="Shifting"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="RbShifting" runat="server" 
                        RepeatDirection="Horizontal">
                                                <asp:ListItem Selected="True">Day</asp:ListItem>
                                                <asp:ListItem>Night</asp:ListItem>
                                                <asp:ListItem>Day-Night</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="Label10" runat="server" Text="Eiligibility"></asp:Label>
                                        </td>
                                        <td class="style2">
                                            <asp:TextBox ID="txtEiligibility" runat="server" Width="400px"></asp:TextBox>
                                        </td>
                                        <td >
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label21" runat="server" Text="Job Position "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtJobPosition" runat="server" Width="400px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label20" runat="server" Text="Job Posted Date"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtjobposteddate" runat="server" Width="175px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text="Date"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtdateto" runat="server" Width="175px"></asp:TextBox>
                                            &nbsp;From&nbsp;
                                            <asp:TextBox ID="txtdatefrom" runat="server" Width="175px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Text="Timing"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlTimingfrom" runat="server" Width="176px">
                                                <asp:ListItem>6:00am</asp:ListItem>
                                                <asp:ListItem>6:30am</asp:ListItem>
                                                <asp:ListItem>7:00am</asp:ListItem>
                                                <asp:ListItem>7:30am</asp:ListItem>
                                                <asp:ListItem>8:00am</asp:ListItem>
                                                <asp:ListItem>8:30am</asp:ListItem>
                                                <asp:ListItem>9:00am</asp:ListItem>
                                                <asp:ListItem>9:30am</asp:ListItem>
                                                <asp:ListItem>10:00am</asp:ListItem>
                                                <asp:ListItem>10:30am</asp:ListItem>
                                                <asp:ListItem>11:00am</asp:ListItem>
                                                <asp:ListItem>11:30am</asp:ListItem>
                                                <asp:ListItem>12:00pm</asp:ListItem>
                                                <asp:ListItem>12:30pm</asp:ListItem>
                                                <asp:ListItem>1:00pm</asp:ListItem>
                                                <asp:ListItem>1:30pm</asp:ListItem>
                                                <asp:ListItem>2:00pm</asp:ListItem>
                                                <asp:ListItem>2:30pm</asp:ListItem>
                                                <asp:ListItem>3:00pm</asp:ListItem>
                                                <asp:ListItem>3:30pm</asp:ListItem>
                                                <asp:ListItem>4:00pm</asp:ListItem>
                                                <asp:ListItem>4:30pm</asp:ListItem>
                                                <asp:ListItem>5:00pm</asp:ListItem>
                                                <asp:ListItem>5:30pm</asp:ListItem>
                                                <asp:ListItem>6:00pm</asp:ListItem>
                                                <asp:ListItem>6:30pm</asp:ListItem>
                                                <asp:ListItem>7:00pm</asp:ListItem>
                                                <asp:ListItem>7:30pm</asp:ListItem>
                                                <asp:ListItem>8:00pm</asp:ListItem>
                                                <asp:ListItem>8:30pm</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Label ID="from" runat="server" Text="From"></asp:Label>
                                            &nbsp;
                                            <asp:DropDownList ID="ddlTimingto" runat="server" Width="175px">
                                                <asp:ListItem>6:00am</asp:ListItem>
                                                <asp:ListItem>6:30am</asp:ListItem>
                                                <asp:ListItem>7:00am</asp:ListItem>
                                                <asp:ListItem>7:30am</asp:ListItem>
                                                <asp:ListItem>8:00am</asp:ListItem>
                                                <asp:ListItem>8:30am</asp:ListItem>
                                                <asp:ListItem>9:00am</asp:ListItem>
                                                <asp:ListItem>9:30am</asp:ListItem>
                                                <asp:ListItem>10:00am</asp:ListItem>
                                                <asp:ListItem>10:30am</asp:ListItem>
                                                <asp:ListItem>11:00am</asp:ListItem>
                                                <asp:ListItem>11:30am</asp:ListItem>
                                                <asp:ListItem>12:00pm</asp:ListItem>
                                                <asp:ListItem>12:30pm</asp:ListItem>
                                                <asp:ListItem>1:00pm</asp:ListItem>
                                                <asp:ListItem>1:30pm</asp:ListItem>
                                                <asp:ListItem>2:00pm</asp:ListItem>
                                                <asp:ListItem>2:30pm</asp:ListItem>
                                                <asp:ListItem>3:00pm</asp:ListItem>
                                                <asp:ListItem>3:30pm</asp:ListItem>
                                                <asp:ListItem>4:00pm</asp:ListItem>
                                                <asp:ListItem>4:30pm</asp:ListItem>
                                                <asp:ListItem>5:00pm</asp:ListItem>
                                                <asp:ListItem>5:30pm</asp:ListItem>
                                                <asp:ListItem>6:00pm</asp:ListItem>
                                                <asp:ListItem>6:30pm</asp:ListItem>
                                                <asp:ListItem>7:00pm</asp:ListItem>
                                                <asp:ListItem>7:30pm</asp:ListItem>
                                                <asp:ListItem>8:00pm</asp:ListItem>
                                                <asp:ListItem>8:30pm</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" Text="HiringProcess "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:CheckBoxList ID="CbHiringProcess" runat="server" 
                        RepeatDirection="Horizontal">
                                                <asp:ListItem>Written</asp:ListItem>
                                                <asp:ListItem>Interview</asp:ListItem>
                                                <asp:ListItem>Aptitude Test </asp:ListItem>
                                                <asp:ListItem>Group Discusion</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label14" runat="server" Text="JobType"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:RadioButtonList ID="RbJobType" runat="server" 
                        RepeatDirection="Horizontal">
                                                <asp:ListItem Selected="True">FullTime</asp:ListItem>
                                                <asp:ListItem>HalfTime</asp:ListItem>
                                                <asp:ListItem>PartTime</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Text="No of  Vacancy"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtVacancy" runat="server" Width="400px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label16" runat="server" Text="Job Descripation"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtJobDescripation" runat="server" Height="100px" 
                        TextMode="MultiLine" Width="400px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label22" runat="server" Text="Job Status"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtjobstatus" runat="server" Width="400px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

