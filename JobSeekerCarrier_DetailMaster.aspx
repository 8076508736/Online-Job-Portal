<%@ Page Title="JobSeeker Carrier Detail " Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobSeekerCarrier_DetailMaster.aspx.cs" Inherits="_Default" %>

<script runat="server">

   
   
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
    <table class="style1">
        <tr>
            <td>
                <center>
              <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Medium" 
                Font-Underline="True" Text="Carrer Detail"></asp:Label>
                </center>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="MyProjectPanel" runat="server">
                    <table class="style1">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label88" runat="server" Font-Bold="True" Font-Size="Medium" 
                                    ForeColor="Lime" Text="Your Id"></asp:Label>
                                <asp:Label ID="JobSeekerId" runat="server" Font-Bold="False" Font-Size="Medium" 
                                    ForeColor="Black" Text="JobSeekerId"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:Label ID="Label87" runat="server" Font-Bold="True" Font-Size="Medium" 
                                    ForeColor="Lime" Text="Welcome"></asp:Label>
                                <asp:Label ID="JobSeekerName" runat="server" Font-Bold="False" 
                                    Font-Size="Medium" ForeColor="Black" Text="JobSeekerName"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <center>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                                        Font-Overline="False" Font-Size="Medium" Font-Underline="True" 
                                        Text="My Project Work"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:Label ID="Label24" runat="server" Text="Choose"></asp:Label>
                            </td>
                            <td class="style2" colspan="2">
                                <asp:DropDownList ID="ddlProjectChoose" runat="server" Width="202px">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>My Project</asp:ListItem>
                                    <asp:ListItem>My Mini Project </asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style2">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label25" runat="server" Text="Title of Project"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtProjectTitle" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label29" runat="server" Text="Team Member"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtProjectteammember" runat="server" Width="198px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label26" runat="server" Text="Technical Skill"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtProjectTechnicalSkill" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label27" runat="server" Text="Description  of Project"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtProjectDescription" runat="server" Height="79px" 
                                    TextMode="MultiLine" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label28" runat="server" Text="Role"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtProjectRole" runat="server" Width="197px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label74" runat="server" Font-Bold="True" 
                    Text="Do You  have any Academic work "></asp:Label>
                <br />
                <asp:RadioButtonList ID="RbAcademic" runat="server" AutoPostBack="True" 
                   
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem Selected="True">No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="AcademicPanel" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style2" colspan="3">
                                <center>
                                    <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Italic="False" 
                                        Font-Overline="False" Font-Size="Medium" Font-Underline="True" 
                                        Text="My Academic Work"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:Label ID="Label31" runat="server" Text="Choose"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:DropDownList ID="ddlAcademicChoose" runat="server" Width="202px">
                                    <asp:ListItem Enabled="False" Selected="True">Select</asp:ListItem>
                                    <asp:ListItem Selected="True">My Seminar</asp:ListItem>
                                    <asp:ListItem>My Presentation</asp:ListItem>
                                    <asp:ListItem>My Case Study</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style2">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label32" runat="server" Text="Title of Project"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtAcademicTitle" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label33" runat="server" Text="Team Member"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtAcademicTeamMemeber" runat="server" Width="198px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label34" runat="server" Text="Technical Skill"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtAcademicTechnichalSkill" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label35" runat="server" Text="Description  of Project"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtAcedamicDescription" runat="server" Height="79px" 
                                    TextMode="MultiLine" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label36" runat="server" Text="Role"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtAcadmicRole" runat="server" Width="197px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label39" runat="server" Font-Bold="True" 
                    Text="Do You  have any work Experience"></asp:Label>
                &nbsp;&nbsp;
                <asp:RadioButtonList ID="RbExperience" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem Selected="True">No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="WorkExperiencePanel" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td colspan="3">
                                <center>
                                    <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Italic="False" 
                                        Font-Overline="False" Font-Size="Medium" Font-Underline="True" 
                                        Text="Work Experience"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label41" runat="server" Text="Company Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtWECompanyName" runat="server" Width="177px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label42" runat="server" Text="Total Month Of Experience"></asp:Label>
                            </td>
                            <td>&nbsp;<asp:Label ID="Label2" runat="server" Text="Year"></asp:Label>
                                <asp:DropDownList ID="ddlWEYearTo" runat="server">
                                    <asp:ListItem Selected="True">0</asp:ListItem>
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
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;TO<asp:DropDownList ID="ddlWEYearFrom" runat="server">
                                    <asp:ListItem Selected="True">0</asp:ListItem>
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
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                Year</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label43" runat="server" Text="Industry"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlWEIndustry" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="FuncationalAreaName" 
                                    DataValueField="FuncationalAreaName" Width="175px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                    SelectCommand="SELECT [FuncationalAreaName] FROM [FuncationalAreaDetails]">
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label44" runat="server" Text="Designation"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtWEDesignation" runat="server" Width="177px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label45" runat="server" Text="Project Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtWEProjectName" runat="server" Width="177px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label47" runat="server" Text="Key Skills"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtWEKeySkills" runat="server" Width="177px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label46" runat="server" Text="Project Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtWEDescription" runat="server" Height="60px" 
                                    TextMode="MultiLine" ></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label48" runat="server" Text="Role"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtWERole" runat="server" Width="177px"></asp:TextBox>
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
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label58" runat="server" Font-Bold="True" 
                    Text="Are you have any Training Details"></asp:Label>
                <asp:RadioButtonList ID="RbTraining" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem Selected="True">No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                
                <asp:Panel ID="TrainingPanel" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style2" colspan="3">
                                <center>
                                    <asp:Label ID="Label70" runat="server" Font-Bold="True" Font-Italic="False" 
                                        Font-Overline="False" Font-Size="Medium" Font-Underline="True" 
                                        Text="Training Details"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label71" runat="server" Text="Cousre Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTDCourseName" runat="server" Width="250px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label62" runat="server" Text="Institute Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTDInstitute" runat="server" Width="250px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label63" runat="server" Text="Duration"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label66" runat="server" Text="Month"></asp:Label>
                                <asp:DropDownList ID="ddlTdToMonth" runat="server">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Jan</asp:ListItem>
                                    <asp:ListItem>Feb</asp:ListItem>
                                    <asp:ListItem>Mar</asp:ListItem>
                                    <asp:ListItem>Apr</asp:ListItem>
                                    <asp:ListItem>May</asp:ListItem>
                                    <asp:ListItem>Jun</asp:ListItem>
                                    <asp:ListItem>Jul</asp:ListItem>
                                    <asp:ListItem>Aug</asp:ListItem>
                                    <asp:ListItem>Sep</asp:ListItem>
                                    <asp:ListItem>Oct</asp:ListItem>
                                    <asp:ListItem>Nov</asp:ListItem>
                                    <asp:ListItem>Dec</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label67" runat="server" Text="Year"></asp:Label>
                                <asp:DropDownList ID="ddlTdToYear" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                To</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label68" runat="server" Text="Month"></asp:Label>
                                <asp:DropDownList ID="ddlTdFromMonth" runat="server">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Jan</asp:ListItem>
                                    <asp:ListItem>Feb</asp:ListItem>
                                    <asp:ListItem>Mar</asp:ListItem>
                                    <asp:ListItem>Apr</asp:ListItem>
                                    <asp:ListItem>May</asp:ListItem>
                                    <asp:ListItem>Jun</asp:ListItem>
                                    <asp:ListItem>Jul</asp:ListItem>
                                    <asp:ListItem>Aug</asp:ListItem>
                                    <asp:ListItem>Sep</asp:ListItem>
                                    <asp:ListItem>Oct</asp:ListItem>
                                    <asp:ListItem>Nov</asp:ListItem>
                                    <asp:ListItem>Dec</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label69" runat="server" Text="Year"></asp:Label>
                                <asp:DropDownList ID="ddlTdfromYear" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label65" runat="server" Text="Detail"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTDDetails" runat="server" Height="62px" 
                                    TextMode="MultiLine" Width="250px"></asp:TextBox>
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
                    </table>
                </asp:Panel>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label75" runat="server" Font-Bold="True" 
                    Text="Are you face any Competative Exam"></asp:Label>
                <br />
                <asp:RadioButtonList ID="RbCompetative" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem Selected="True">No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="CompetetiveExamPanel" runat="server" Visible="False">
                    <table border="5" class="style1">
                        <tr>
                            <td colspan="3">
                                <center>
                                    <asp:Label ID="Label72" runat="server" Font-Bold="True" Font-Italic="False" 
                                        Font-Overline="False" Font-Size="Medium" Font-Underline="True" 
                                        Text="Competative  Exam Scores"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label73" runat="server" Text="Examination Name"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DdlComExam_Name" runat="server" Width="253px">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>GATE</asp:ListItem>
                                    <asp:ListItem>CAT</asp:ListItem>
                                    <asp:ListItem>MAT</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:RadioButtonList ID="RbExamType" runat="server" 
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True">Rank</asp:ListItem>
                                    <asp:ListItem>Percentage</asp:ListItem>
                                    <asp:ListItem>Percentage in 10</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="txtExamMarks" runat="server" Width="252px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Message" runat="server" Text="Message"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
            </td>
        </tr>
        </caption>
    </table>
     </ContentTemplate>
            </asp:UpdatePanel>
    </div>
</asp:Content>

