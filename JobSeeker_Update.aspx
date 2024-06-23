<%@ Page Title="Update By JobSeeker" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeFile="JobSeeker_Update.aspx.cs" Inherits="JobSeekerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 204px;
            height: 23px;
        }
        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 341px;
        }
        .style9
        {
            width: 338px;
        }
        .style11
        {
            width: 204px;
        }
        .style12
        {
            width: 339px;
        }
        .style14
        {
            width: 340px;
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
                            <asp:Button ID="Button2" runat="server" Text="Update" onclick="Button2_Click" 
                                />
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label59" runat="server" Text="Last Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label3" runat="server" Text="EmailId"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label4" runat="server" Text="Date Of Birth"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label62" runat="server" Text="Pin Code"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label7" runat="server" Text="MobileNo"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label8" runat="server" Text="PhoneNo"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label25" runat="server" Text="Current Residence City"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
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
                
                <asp:Button ID="Bedu" runat="server" Text="Update" style="height: 26px" onclick="Bedu_Click" 
                     />
                
                </td>
        </tr>
        <tr>
            <td colspan="2">
                
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label34" runat="server" Text="Highest Qulification"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label35" runat="server" Text="Type"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label36" runat="server" Text="No_Of_BackPaper"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label37" runat="server" Text="Favorite Subject"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Message1" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
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
                <asp:Button ID="editPg" runat="server"  Text="Update" onclick="editPg_Click" />
            </td>
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
                                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label46" runat="server" Text="Branch_Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label47" runat="server" Text="Country Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label48" runat="server" Text="State Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label49" runat="server" Text="Institute Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label50" runat="server" Text="University Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label51" runat="server" Text="Passing Year"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label65" runat="server" Text="Total Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Message2" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
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
                <asp:Button ID="Upadate" runat="server" Text="Update" onclick="Upadate_Click" 
                     />
            </td>
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
                                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label69" runat="server" Text="Branch_Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label71" runat="server" Text="Country Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label73" runat="server" Text="State Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label75" runat="server" Text="Institute Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label77" runat="server" Text="University Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label79" runat="server" Text="Passing Year"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label81" runat="server" Text="Total Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Message3" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
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
                            
                                <asp:Button ID="Update12" runat="server" Text="Update" 
                                    onclick="Update12_Click" />
                            
                        </td>
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
                                <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label86" runat="server" Text="Branch_Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label88" runat="server" Text="Country Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label90" runat="server" Text="State Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label92" runat="server" Text="Institute Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label94" runat="server" Text="University Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label96" runat="server" Text="Passing Year"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label98" runat="server" Text="Total Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Message4" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
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
                            
                                <asp:Button ID="B10UPDATE" runat="server" Text="Upadate" 
                                    onclick="B10UPDATE_Click" />
                            
                        </td>
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
                                <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label103" runat="server" Text="Branch_Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label105" runat="server" Text="Country Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label107" runat="server" Text="State Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label109" runat="server" Text="Institute Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label111" runat="server" Text="University Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label113" runat="server" Text="Passing Year"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label115" runat="server" Text="Total Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Message5" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
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
                            
                                <asp:Button ID="UPDATEProject" runat="server" Text="UPDATE" 
                                    onclick="UPDATEProject_Click" />
                            
                        </td>
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
                                <asp:TextBox ID="TextBox47" runat="server" 
                                    ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label122" runat="server" Text="Project Title"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label124" runat="server" Text="Project Team Member"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label126" runat="server" Text="Project Technical Skill"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label128" runat="server" Text="Project Descripation"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label130" runat="server" Text="Project Role"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Message6" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
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
                            
                                <asp:Button ID="Academic" runat="server" Text="Update" 
                                    onclick="Academic_Click" />
                            
                        </td>
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
                                <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label135" runat="server" Text="Project Title"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label137" runat="server" Text="Project Team Member"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox55" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label139" runat="server" Text="Project Technical Skill"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox56" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label141" runat="server" Text="Project Descripation"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label143" runat="server" Text="Project Role"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox58" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Message7" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style11">
                            
                                <asp:Label ID="Label145" runat="server" Text="My Training Details" 
                                    Font-Bold="True" ForeColor="Maroon"></asp:Label>
                            
                        </td>
            <td>
                            
                                <asp:Button ID="Btraining" runat="server" Text="Update" 
                                    onclick="Btraining_Click" />
                            
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
                                <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label150" runat="server" Text="Training InstituteName"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox60" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label152" runat="server" Text="Training Duration To"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox61" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label154" runat="server" Text="Training Duration For"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox62" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label156" runat="server" Text="Training Details"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Message8" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
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
                            
                                <asp:Button ID="BWork" runat="server" Text="Update" onclick="BWork_Click" />
                            
                        </td>
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
                                <asp:TextBox ID="TextBox64" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label162" runat="server" Text="Total Experiences"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox65" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label164" runat="server" Text="Industry"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox66" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label166" runat="server" Text="Designation"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox67" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label168" runat="server" Text="Project Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox68" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label170" runat="server" Text=" Key Skills"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox69" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label172" runat="server" Text="Project Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox70" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label173" runat="server" Text="Project Role"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox71" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Message9" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
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
                            
                                <asp:Button ID="bCompetative" runat="server" Text="Update" 
                                    onclick="bCompetative_Click" />
                            
                        </td>
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
                                <asp:TextBox ID="TextBox72" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label178" runat="server" Text="Competative Result Type"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox73" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label179" runat="server" Text="Competative Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox74" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Message10" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
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
                            
                                <asp:Button ID="BCarrierPreference" runat="server" Text="Update" 
                                    onclick="BCarrierPreference_Click" />
                            
                        </td>
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
                                <asp:TextBox ID="TextBox75" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label184" runat="server" Text="Work Preference"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox76" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label185" runat="server" Text="Excepted Minimum Salary"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox77" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:TextBox ID="txtlan1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox78" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:TextBox ID="txtlan2" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox79" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:TextBox ID="txtlan3" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox80" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label195" runat="server" Text="1st Preference Job Type"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox81" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label190" runat="server" Text="2nd Preference Job Type"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox82" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label191" runat="server" Text="3rd Preference Job Type"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox83" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label192" runat="server" Text="1st Preference Job Location"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox84" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label193" runat="server" Text="2nd Preference Job Location"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox85" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label194" runat="server" Text="3rd Preference Job Location"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox86" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Message11" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
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

