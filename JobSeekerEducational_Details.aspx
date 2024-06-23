<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JobSeekerEducational_Details.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        <div>
           <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table class="style1">
                        <tr>
                            <td>
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
                                            <asp:Label ID="JobSeekerName" runat="server" Font-Bold="False" Font-Size="Medium" 
                                                ForeColor="Black" Text="JobSeekerName"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <center>
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                                                    Font-Overline="False" Font-Size="Medium" Font-Underline="True" 
                                                    Text="Highest Qulification Detail"></asp:Label>
                                            </center>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="Highest Qulification"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:DropDownList ID="ddleducationaldetail" runat="server" AutoPostBack="True" 
                                                onselectedindexchanged="ddleducationaldetail_SelectedIndexChanged" 
                                                Width="248px">
                                                <asp:ListItem Selected="True">Educational Qulification</asp:ListItem>
                                                <asp:ListItem>PG/PG Diploma</asp:ListItem>
                                                <asp:ListItem>Integarated PG</asp:ListItem>
                                                <asp:ListItem>Graduation</asp:ListItem>
                                                <asp:ListItem>Diploma</asp:ListItem>
                                                <asp:ListItem>Certificate Course</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Type</td>
                                        <td colspan="2">
                                            <asp:RadioButtonList ID="RbEducationType" runat="server" 
                                                RepeatDirection="Horizontal" Width="269px">
                                                <asp:ListItem Selected="True">Full Time</asp:ListItem>
                                                <asp:ListItem>Part Time</asp:ListItem>
                                                <asp:ListItem>Correpondence</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="No of Back logs"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            &nbsp;&nbsp;
                                            <asp:DropDownList ID="ddlNoOfBack" runat="server" Width="82px">
                                                <asp:ListItem Selected="True" Value="0"></asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3">
                                            <asp:Label ID="Label4" runat="server" Text="Your Favorite Subjects"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            1.<asp:TextBox ID="txtf1subject" runat="server"></asp:TextBox>
                                        </td>
                                        <td >
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtf1subject" Display="None" 
                                                ErrorMessage="Please enter Subject" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                                            </asp:ValidatorCalloutExtender>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            2.<asp:TextBox ID="txtf2subject" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="txtf2subject" Display="None" 
                                                ErrorMessage="Please enter Subject" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                                            </asp:ValidatorCalloutExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            3.<asp:TextBox ID="txtf3subject" runat="server"></asp:TextBox>
                                        </td><td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="txtf3subject" Display="None" 
                                                ErrorMessage="Please enter Subject" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                                            </asp:ValidatorCalloutExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td colspan="2">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Panel ID="PGPanel1" runat="server" Visible="False">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <table class="style1">
                                                    <tr>
                                                        <td colspan="3">
                                                            <center>
                                                                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                                    Font-Underline="True" Text="PG/PG Diploma Detail"></asp:Label>
                                                            </center>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label5" runat="server" Text="Select your Course"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlPgCourse" runat="server" Width="300px" 
                                                                AutoPostBack="True" DataSourceID="SqlDataSource10" DataTextField="CourseName" 
                                                                DataValueField="CourseId" ondatabound="ddlPgCourse_DataBound">
                                                                
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                
                                                                SelectCommand="SELECT [CourseId], [CourseName], [QulificationId] FROM [CourseDetails] WHERE ([QulificationId] = @QulificationId) ORDER BY [CourseName]">
                                                                <SelectParameters>
                                                                    <asp:Parameter DefaultValue=" PG/8065 " Name="QulificationId" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                                ControlToValidate="ddlPgCourse" Display="None" 
                                                                ErrorMessage="Please  select Course Name" InitialValue="Select" 
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td valign="top">
                                                            <asp:Label ID="Label6" runat="server" Text="Branch of Study"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlPgBranch" runat="server" style="margin-right: 0px" 
                                                                Width="300px" DataSourceID="SqlDataSource11" 
                                                                DataTextField="DepartmentName" DataValueField="DepartmentName" 
                                                                ondatabound="ddlPgBranch_DataBound" AutoPostBack="True" 
                                                              >
                                                            </asp:DropDownList>
                                                            <br />
                                                           
                                                            

                                                            <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [DepartmentName] FROM [DepartmentDetails] WHERE ([CourseId] = @CourseId)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlPgCourse" Name="CourseId" 
                                                                        PropertyName="SelectedValue" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label7" runat="server" Text="Country Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlpgcountry" runat="server" style="margin-right: 0px" 
                                                                Width="300px" AutoPostBack="True" DataSourceID="SqlDataSource1" 
                                                                DataTextField="CountryName" DataValueField="CountryCode" 
                                                                ondatabound="ddlpgcountry_DataBound" >
                                                               
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT * FROM [CountryDetails]"></asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label8" runat="server" Text="State Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlPgState" runat="server" Width="300px" 
                                                                DataSourceID="SqlDataSource2" DataTextField="StateName" 
                                                                DataValueField="StateCode" AutoPostBack="True" ondatabound="ddlPgState_DataBound" 
                                                               >
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                
                                                                SelectCommand="SELECT [StateCode], [StateName] FROM [StateDetails] WHERE ([CountryCode] = @CountryCode)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlpgcountry" Name="CountryCode" 
                                                                        PropertyName="SelectedValue" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:TextBox ID="txtpgstatename" runat="server" Width="300px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label9" runat="server" Text="Institute Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlpginstitutename" runat="server" Width="299px" 
                                                                AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="CollegeName" 
                                                                DataValueField="CollegeName" ondatabound="ddlpginstitutename_DataBound">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [CollegeName] FROM [CollegeDetails] WHERE ([StateCode] = @StateCode2)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlPgState" Name="StateCode2" 
                                                                        PropertyName="SelectedValue" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:TextBox ID="txtpginstitutename" runat="server" Width="300px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label10" runat="server" Text="University Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlpguniversity" runat="server" Width="300px" 
                                                                DataSourceID="SqlDataSource12" DataTextField="UniversityName" 
                                                                DataValueField="UniversityName" ondatabound="ddlpguniversity_DataBound">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [UniversityName], [UniversityCode] FROM [UniversityDetails] WHERE ([StateCode] = @StateCode)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlPgState" Name="StateCode" 
                                                                        PropertyName="SelectedValue" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:TextBox ID="txtpguniversityname" runat="server" Width="300px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label11" runat="server" Text="Passout"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label49" runat="server" Text="Month"></asp:Label>
                                                            &nbsp;
                                                            <asp:DropDownList ID="ddlPgMonth" runat="server">
                                                                <asp:ListItem>Select</asp:ListItem>
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
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="Label50" runat="server" Text="Year"></asp:Label>
                                                            &nbsp;
                                                            <asp:DropDownList ID="ddlPgYear" runat="server" AppendDataBoundItems="True">
                                                                
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                                                                ControlToValidate="ddlPgMonth" Display="None" 
                                                                ErrorMessage="Please  select Month" InitialValue="Select" 
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator23_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator23">
                                                            </asp:ValidatorCalloutExtender>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                                                                ControlToValidate="ddlPgYear" Display="None" ErrorMessage="Please  select Year" 
                                                                InitialValue="Select" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator24_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator24">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label12" runat="server" Text="Aggregate Mark"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:RadioButtonList ID="rbpgmarkstype" runat="server" 
                                                                RepeatDirection="Horizontal">
                                                                <asp:ListItem Selected="True">Percentage</asp:ListItem>
                                                                <asp:ListItem>CGPA</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:TextBox ID="txtpgmarks" runat="server" Width="184px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        
                                        
                                    </table>
                                </asp:Panel>

                            </td>
                        </tr>
                       <tr><td>
                           
                           &nbsp;</td></tr>
                        <tr>
                            <td>
                                <asp:Panel ID="GraduationPanel" runat="server" Visible="False">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <table class="style1">
                                                    <tr>
                                                        <td colspan="3">
                                                            <center>
                                                                <asp:Label ID="Label76" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                                    Font-Underline="True" Text="Graduation Diploma Certification Course Detail"></asp:Label>
                                                            </center>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label77" runat="server" Text="Select your Course"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlGraduationCourse" runat="server" Width="300px" 
                                                                AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="CourseName" 
                                                                DataValueField="CourseId" ondatabound="ddlGraduationCourse_DataBound" >
                                                                
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [CourseName], [CourseId] FROM [CourseDetails] WHERE ([QulificationId] = @QulificationId)">
                                                                <SelectParameters>
                                                                    <asp:Parameter DefaultValue="Gra3985" Name="QulificationId" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                                ControlToValidate="ddlGraduationCountry" Display="None" 
                                                                ErrorMessage="Please  select Country Name" InitialValue="Select" 
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator6">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label78" runat="server" Text="Branch of Study"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlGraduationBranch" runat="server" 
                                                                style="margin-right: 0px" Width="300px" DataSourceID="SqlDataSource4" 
                                                                DataTextField="DepartmentName" DataValueField="DepartmentName" onselectedindexchanged="ddlGraduationBranch_SelectedIndexChanged"
                                                               >
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [DepartmentName], [DepartmentId] FROM [DepartmentDetails] WHERE ([CourseId] = @CourseId)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlGraduationCourse" Name="CourseId" 
                                                                        PropertyName="SelectedValue" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                            <div id ="div1">
                                                            <asp:TextBox ID="txtgraduationbranch" runat="server" Width="300px"></asp:TextBox></div>
                                                            
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
                                                    <tr>
                                                        <td class="style3">
                                                            <asp:Label ID="Label79" runat="server" Text="Country Name"></asp:Label>
                                                        </td>
                                                        <td class="style3">
                                                            <asp:DropDownList ID="ddlGraduationCountry" runat="server" 
                                                                style="margin-right: 0px" Width="300px" AutoPostBack="True" 
                                                                DataSourceID="SqlDataSource13" DataTextField="CountryName" 
                                                                DataValueField="CountryCode" AppendDataBoundItems="True" 
                                                                ondatabound="ddlGraduationCountry_DataBound">
                                                                <asp:ListItem>Select</asp:ListItem>
                                                               </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource13" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [CountryCode], [CountryName] FROM [CountryDetails] ORDER BY [CountryName]">
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td class="style3">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style2">
                                                            <asp:Label ID="Label80" runat="server" Text="State Name"></asp:Label>
                                                        </td>
                                                        <td class="style2">
                                                            <asp:DropDownList ID="ddlGraduationState" runat="server" Width="300px" 
                                                                AutoPostBack="True" DataSourceID="SqlDataSource14" DataTextField="StateName" 
                                                                DataValueField="StateCode" ondatabound="ddlGraduationState_DataBound" >
                                                              
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource14" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [StateName], [StateCode] FROM [StateDetails] WHERE ([CountryCode] = @CountryCode)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlGraduationCountry" Name="CountryCode" 
                                                                        PropertyName="SelectedValue" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td class="style2">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            <asp:TextBox ID="txtgraduationstate" runat="server" 
                                                                Width="300px" ></asp:TextBox>
                                                        </td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label81" runat="server" Text="Institute Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlGraduationInstituteName" runat="server" Width="300px" 
                                                                DataSourceID="SqlDataSource15" DataTextField="CollegeName" 
                                                                DataValueField="CollegeCode" 
                                                                ondatabound="ddlGraduationInstituteName_DataBound"> 
                                                            
                                          </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource15" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [CollegeCode], [CollegeName], [StateCode] FROM [CollegeDetails] WHERE ([StateCode] = @StateCode)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlGraduationState" Name="StateCode" 
                                                                        PropertyName="SelectedValue" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:TextBox ID="txtgraduationInstitueName" runat="server" 
                                                                Width="300px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label82" runat="server" Text="University Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlGraduationUniversity" runat="server" Width="300px" 
                                                                DataSourceID="SqlDataSource16" DataTextField="UniversityName" 
                                                                DataValueField="UniversityCode" 
                                                                ondatabound="ddlGraduationUniversity_DataBound"> 
                                                               
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource16" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [UniversityCode], [StateCode], [UniversityName] FROM [UniversityDetails] WHERE ([StateCode] = @StateCode)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlGraduationState" Name="StateCode" 
                                                                        PropertyName="SelectedValue" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:TextBox ID="txtgraduationUniversity" runat="server" 
                                                                Width="300px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label83" runat="server" Text="Passout"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label84" runat="server" Text="Month"></asp:Label>
                                                            &nbsp;
                                                            <asp:DropDownList ID="ddlGraduationMonth" runat="server">
                                                                <asp:ListItem>Select</asp:ListItem>
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
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="Label85" runat="server" Text="Year"></asp:Label>
                                                            &nbsp;
                                                            <asp:DropDownList ID="ddlGraduationYear" runat="server" 
                                                                ondatabound="ddlGraduationYear_DataBound">
                                                            
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                                                                ControlToValidate="ddlGraduationMonth" Display="None" 
                                                                ErrorMessage="Please  select Month" InitialValue="Select" 
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator21_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator21">
                                                            </asp:ValidatorCalloutExtender>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                                                                ControlToValidate="ddlGraduationYear" Display="None" 
                                                                ErrorMessage="Please  select Year" InitialValue="Select" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator22_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator22">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label86" runat="server" Text="Aggregate Mark"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:RadioButtonList ID="Rbgraduationmarkstype" runat="server" 
                                                                RepeatDirection="Horizontal">
                                                                <asp:ListItem Selected="True">Percentage</asp:ListItem>
                                                                <asp:ListItem>CGPA</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:TextBox ID="txtGraduationMark" runat="server" Width="184px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        
                                                                            </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Panel ID="IntermidiatePanel" runat="server" Visible="False">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <table class="style1">
                                                    <tr>
                                                        <td colspan="3">
                                                            <center>
                                                                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                                    Font-Underline="True" Text="Class 12th Details"></asp:Label>
                                                            </center>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label94" runat="server" Text="Background  Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddl12Backgroundname" runat="server" Width="400px" 
                                                                ondatabound="ddl12Backgroundname_DataBound">
                                                                <asp:ListItem>Science </asp:ListItem>
                                                                <asp:ListItem>Art</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                                ControlToValidate="ddl12Backgroundname" Display="None" 
                                                                ErrorMessage="Please  select Background Name" InitialValue="Select" 
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator13_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator13">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label14" runat="server" Text="School Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txt12SchoolName" runat="server" Width="400px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                                                ControlToValidate="txt12SchoolName" Display="None" 
                                                                ErrorMessage="Please  enter School Name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator14_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator14">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label15" runat="server" Text="Board Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txt12BoardName" runat="server" Width="400px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                                                ControlToValidate="txt12BoardName" Display="None" 
                                                                ErrorMessage="Please  enter Board  Name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator15_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator15">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label89" runat="server" Text="Country Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddl12CountryNmae" runat="server" AutoPostBack="True" 
                                                                DataSourceID="SqlDataSource6" DataTextField="CountryName" 
                                                                DataValueField="CountryCode" 
                                                                
                                                                Width="400px" AppendDataBoundItems="True" 
                                                                ondatabound="ddl12CountryNmae_DataBound">
                                                                <asp:ListItem>Select</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [CountryCode], [CountryName] FROM [CountryDetails] ORDER BY [CountryName]">
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                                ControlToValidate="ddl12CountryNmae" Display="None" 
                                                                ErrorMessage="Please  select Country Name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator7_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator7">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label90" runat="server" Text="State Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddl12StateName" runat="server" Height="22px" 
                                                                style="margin-bottom: 0px" Width="400px" DataSourceID="SqlDataSource8" 
                                                                DataTextField="StateName" DataValueField="StateName" 
                                                                ondatabound="ddl12StateName_DataBound">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [StateName] FROM [StateDetails] WHERE ([CountryCode] = @CountryCode)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddl12CountryNmae" Name="CountryCode" 
                                                                        PropertyName="SelectedValue" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label16" runat="server" Text="Passout"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label17" runat="server" Text="Month"></asp:Label>
                                                            &nbsp;
                                                            <asp:DropDownList ID="ddl12Month" runat="server">
                                                                <asp:ListItem>Select</asp:ListItem>
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
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="Label18" runat="server" Text="Year"></asp:Label>
                                                            &nbsp;
                                                            <asp:DropDownList ID="ddl12Year" runat="server" 
                                                                ondatabound="ddl12Year_DataBound">

                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                                                ControlToValidate="ddl12Month" Display="None" 
                                                                ErrorMessage="Please  select Month" InitialValue="Select" 
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator19_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator19">
                                                            </asp:ValidatorCalloutExtender>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                                                ControlToValidate="ddl12Year" Display="None" ErrorMessage="Please  select Year" 
                                                                InitialValue="Select" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator20_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator20">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label19" runat="server" Text="Aggregate Mark"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:RadioButtonList ID="rb12markstype" runat="server" 
                                                                RepeatDirection="Horizontal">
                                                                <asp:ListItem Selected="True">Percentage</asp:ListItem>
                                                                <asp:ListItem>Grade Point(Out of 10)</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:TextBox ID="txt12Marks" runat="server" Width="200px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                                                ControlToValidate="txt12Marks" Display="None" ErrorMessage="Please enter Marks"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator16_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator16">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
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
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Panel ID="HighSchoolPanel" runat="server">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <table class="style1">
                                                    <tr>
                                                        <td colspan="3">
                                                            <center>
                                                                <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                                    Font-Underline="True" Text="Class 10th Details"></asp:Label>
                                                            </center>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label93" runat="server" Text="Background Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddl10Backgroundname" runat="server" Width="400px">
                                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                                <asp:ListItem>Science </asp:ListItem>
                                                                <asp:ListItem>Art</asp:ListItem>
                                                                <asp:ListItem>Other</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                                ControlToValidate="ddl10Backgroundname" Display="None" 
                                                                ErrorMessage="Please  select Background Name" InitialValue="Select" 
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator10_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator10">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label34" runat="server" Text="School Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txt10SchoolName" runat="server" Width="400px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                                ControlToValidate="txt10SchoolName" Display="None" 
                                                                ErrorMessage="Please  enter School Name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator11_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator11">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label35" runat="server" Text="Board Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txt10BoardName" runat="server" Width="400px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                                ControlToValidate="txt10BoardName" Display="None" 
                                                                ErrorMessage="Please  enter Board  Name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator12_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator12">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label91" runat="server" Text="Country Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddl10CountryName" runat="server" Width="400px" 
                                                                AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="CountryName" 
                                                                DataValueField="CountryCode" style="margin-bottom: 0px" 
                                                                AppendDataBoundItems="True" ondatabound="ddl10CountryName_DataBound">
                                                                <asp:ListItem>Select</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [CountryCode], [CountryName] FROM [CountryDetails] ORDER BY [CountryName]">
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                                ControlToValidate="ddl10CountryName" Display="None" 
                                                                ErrorMessage="Please  select Country Name" InitialValue="Select" 
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator8_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator8">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label92" runat="server" Text="State Name"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddl10StateName" runat="server" 
                                                                Width="400px" DataSourceID="SqlDataSource7" DataTextField="StateName" 
                                                                DataValueField="StateName" ondatabound="ddl10StateName_DataBound">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                                                SelectCommand="SELECT [StateName] FROM [StateDetails] WHERE ([CountryCode] = @CountryCode)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddl10CountryName" Name="CountryCode" 
                                                                        PropertyName="SelectedValue" Type="String" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label36" runat="server" Text="Passout"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label37" runat="server" Text="Month"></asp:Label>
                                                            &nbsp;
                                                            <asp:DropDownList ID="ddl10Month" runat="server" Height="21px" 
                                                                style="margin-bottom: 0px" Width="74px">
                                                                <asp:ListItem>Select</asp:ListItem>
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
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="Label38" runat="server" Text="Year"></asp:Label>
                                                            &nbsp;
                                                            <asp:DropDownList ID="ddl10Year" runat="server" 
                                                                ondatabound="ddl10Year_DataBound">
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                                                ControlToValidate="ddl10Month" Display="None" 
                                                                ErrorMessage="Please  select Month" InitialValue="Select" 
                                                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator17_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator17">
                                                            </asp:ValidatorCalloutExtender>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                                                ControlToValidate="ddl10Year" Display="None" ErrorMessage="Please  select Year" 
                                                                InitialValue="Select" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator18_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator18">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label39" runat="server" Text="Aggregate Mark"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:RadioButtonList ID="rbhighschoolmarkstype" runat="server" 
                                                                RepeatDirection="Horizontal">
                                                                <asp:ListItem Selected="True">Percentage</asp:ListItem>
                                                                <asp:ListItem>Grade Point(Out of 10)</asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:TextBox ID="txt10Marks" runat="server" Width="200px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                                ErrorMessage="Please enter Marks" ControlToValidate="txt10Marks" 
                                                                Display="None"></asp:RequiredFieldValidator>
                                                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
                                                            </asp:ValidatorCalloutExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                        <td>
                        <asp:Button ID="Button1" runat="server" Text="Next" onclick="Button1_Click" />
    

&nbsp;<asp:Label ID="Message" runat="server" Text="Message"></asp:Label>
    

                        </td>
                        </tr>
                    </table>
            </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        
    
    </div>
    
    
    

</asp:Content>

