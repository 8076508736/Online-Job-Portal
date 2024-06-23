<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeFile="JobSeekerDetails.aspx.cs" Inherits="JobSeekerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 147px;
            height: 23px;
        }
        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 331px;
        }
        .style7
        {
            width: 337px;
        }
        .style9
        {
            width: 338px;
        }
        .style11
        {
            width: 147px;
        }
        .style12
        {
            width: 339px;
        }
        .style13
        {
            width: 147px;
            height: 20px;
        }
        .style14
        {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td class="style6">
                            
                                <asp:Label ID="Label1" runat="server" Text="JobSeeker Personal Deatails" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                                Text="Upgrade Details" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label59" runat="server" Text="Last Name"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label60" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label3" runat="server" Text="EmailId"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label4" runat="server" Text="Date Of Birth"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label61" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label62" runat="server" Text="Pin Code"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label63" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label7" runat="server" Text="MobileNo"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label8" runat="server" Text="PhoneNo"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label25" runat="server" Text="Current Residence City"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style4">
                
                
                                <asp:Label ID="Label9" runat="server" Text="JobSeeker Educational Deatails" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                           </td>
            <td class="style5">
                
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style7">
                                <asp:Label ID="Label34" runat="server" Text="Highest Qulification"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label43" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:Label ID="Label35" runat="server" Text="Type"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label42" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:Label ID="Label36" runat="server" Text="No_Of_BackPaper"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label41" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:Label ID="Label37" runat="server" Text="Favorite Subject"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style11">
                            
                                <asp:Label ID="Label44" runat="server" Text="JobSeeker PG Deatails" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="PgPanel" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label45" runat="server" Text="Course/Qulification"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label52" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label46" runat="server" Text="Branch_Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label53" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label47" runat="server" Text="Country Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label54" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label48" runat="server" Text="State Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label55" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label49" runat="server" Text="Institute Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label56" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label50" runat="server" Text="University Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label57" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label51" runat="server" Text="Passing Year"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label58" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label65" runat="server" Text="Total Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label64" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style11">
                            
                                <asp:Label ID="Label66" runat="server" Text="JobSeeker Graduacation Deatails" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="GraduationPanel" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label67" runat="server" Text="Course/Qulification"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label68" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label69" runat="server" Text="Branch_Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label70" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label71" runat="server" Text="Country Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label72" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label73" runat="server" Text="State Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label74" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label75" runat="server" Text="Institute Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label76" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label77" runat="server" Text="University Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label78" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label79" runat="server" Text="Passing Year"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label80" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label81" runat="server" Text="Total Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label82" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style11">
                            
                                <asp:Label ID="Label83" runat="server" Text="JobSeeker 12th Deatails" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
            <td>
                            
                                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel12th" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label84" runat="server" Text="Course/Qulification"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label85" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label86" runat="server" Text="Branch_Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label87" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label88" runat="server" Text="Country Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label89" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label90" runat="server" Text="State Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label91" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label92" runat="server" Text="Institute Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label93" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label94" runat="server" Text="University Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label95" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label96" runat="server" Text="Passing Year"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label97" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label98" runat="server" Text="Total Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label99" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style11">
                            
                                <asp:Label ID="Label100" runat="server" Text="JobSeeker 10th Deatails" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
            <td>
                            
                                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel10th" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label101" runat="server" Text="Course/Qulification"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label102" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label103" runat="server" Text="Branch_Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label104" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label105" runat="server" Text="Country Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label106" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label107" runat="server" Text="State Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label108" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label109" runat="server" Text="Institute Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label110" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label111" runat="server" Text="University Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label112" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label113" runat="server" Text="Passing Year"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label114" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label115" runat="server" Text="Total Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label116" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style11">
                            
                                <asp:Label ID="Label117" runat="server" Text="My Project Details" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
            <td>
                            
                                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="MyProjectPanel" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label120" runat="server" Text="Project Choose"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label121" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label122" runat="server" Text="Project Title"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label123" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label124" runat="server" Text="Project Team Member"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label125" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label126" runat="server" Text="Project Technical Skill"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label127" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label128" runat="server" Text="Project Descripation"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label129" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label130" runat="server" Text="Project Role"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label131" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style11">
                            
                                <asp:Label ID="Label132" runat="server" Text="My Academic Details" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
            <td>
                            
                                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="MyAcedamicPanel" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label133" runat="server" Text="Project Choose"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label134" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label135" runat="server" Text="Project Title"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label136" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label137" runat="server" Text="Project Team Member"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label138" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label139" runat="server" Text="Project Technical Skill"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label140" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label141" runat="server" Text="Project Descripation"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label142" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label143" runat="server" Text="Project Role"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label144" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style13">
                            
                                <asp:Label ID="Label145" runat="server" Text="My Training Details" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
            <td class="style14">
                            
                        </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="MyTrainingPanel" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label148" runat="server" Text="Training Course Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label149" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label150" runat="server" Text="Training InstituteName"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label151" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label152" runat="server" Text="Training Duration To"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label153" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label154" runat="server" Text="Training Duration For"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label155" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label156" runat="server" Text="Training Details"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label157" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style11">
                            
                                <asp:Label ID="Label146" runat="server" Text="My Work Experiences Details" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
            <td>
                            
                                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="MyWorkExpPanel" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label160" runat="server" Text="Company Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label161" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label162" runat="server" Text="Total Experiences"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label163" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label164" runat="server" Text="Industry"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label165" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label166" runat="server" Text="Designation"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label167" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label168" runat="server" Text="Project Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label169" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label170" runat="server" Text=" Key Skills"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label171" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label172" runat="server" Text="Project Description"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label174" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label173" runat="server" Text="Project Role"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label175" runat="server" Text="Type"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style11">
                            
                                <asp:Label ID="Label147" runat="server" Text="My Competative Exam Details" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
            <td>
                            
                                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="CompetativePanel" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label177" runat="server" Text="Competative Exam Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label180" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label178" runat="server" Text="Competative Result Type"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label181" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label179" runat="server" Text="Competative Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label182" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style11">
                            
                                <asp:Label ID="Label176" runat="server" Text="Job Seeker Carrier Preference" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
            <td>
                            
                                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="CarrierPrefercencePanel" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label183" runat="server" Text="Looking For"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label196" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label184" runat="server" Text="Work Preference"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label197" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label185" runat="server" Text="Excepted Minimum Salary"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label198" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label186" runat="server" Text="Language1"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label199" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label187" runat="server" Text="Language2"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label200" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label188" runat="server" Text="Language3"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label201" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label195" runat="server" Text="1st Preference Job Type"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label202" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label190" runat="server" Text="2nd Preference Job Type"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label203" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label191" runat="server" Text="3rd Preference Job Type"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label204" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label192" runat="server" Text="1st Preference Job Location"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label205" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label193" runat="server" Text="2nd Preference Job Location"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label206" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label194" runat="server" Text="3rd Preference Job Location"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label207" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

