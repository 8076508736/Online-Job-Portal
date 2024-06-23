<%@ Page Title="Add Job Details By Company" Language="C#" MasterPageFile="~/CompanyMasterPage.master" AutoEventWireup="true" CodeFile="AddJobDetailsByCompany.aspx.cs" Inherits="_Default" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 801px;
        }
        .style5
        {
            width: 79px;
        }
        .style6
        {
            width: 400px;
        }
        .style7
        {
            width: 292px;
        }
    </style>

                
                <script language="javascript" type="text/javascript">
                    function ValidateASPControls() {
                        var oItems;

                        oItems = document.getElementById("CbHiringProcess");
                        var chkList = oItems.getElementsByTagName("input");
                        chkFlag = 0;

                        for (var i = 0; i < chkList.length; i++) {
                            if (chkList[i].checked) {
                                chkFlag = 1;
                            }
                        }

                        if (chkFlag == 0) {
                            alert("Please select an item")
                            return false;
                        }

                    } 
</script>
                

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
        <table class="style3">
            <tr>
                <td colspan="3">
           <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
     </td>
            </tr>
            <tr>
                <td colspan="3"><center>
                    <asp:Label ID="Label18" runat="server" Text="Job Provide  By  Company" 
                        Font-Bold="True" Font-Italic="True" Font-Size="Larger" Font-Underline="True" 
                        ForeColor="Maroon"></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label24" runat="server" Text="JobId"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="JobId" runat="server"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="CompanyId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="Job Title"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtJobTitle" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtJobTitle" Display="None" 
                        ErrorMessage="Please enter Job Title"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCompanyName" runat="server" 
                        DataSourceID="SqlDataSource4" DataTextField="Company_Name" 
                        DataValueField="Company_Name" Width="400px" 
                        ondatabound="ddlCompanyName_DataBound" 
                       >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                        SelectCommand="SELECT [Company_Name] FROM [Company_Details] ORDER BY [Company_Name]">
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="ddlCompanyName" Display="None" 
                        ErrorMessage="Please select Company Name" InitialValue="Select" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label2" runat="server" Text="Company Address"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtCompanyAddress" runat="server" Height="50px" TextMode="MultiLine" 
                        Width="400px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtCompanyAddress" Display="None" 
                        ErrorMessage="Please enter Company Name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Funcational Area"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlFuncationArea" runat="server" 
                        Width="400px" DataSourceID="SqlDataSource1" 
                        DataTextField="FuncationalAreaName" DataValueField="FuncationalAreaName" 
                        ondatabound="ddlFuncationArea_DataBound">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                        SelectCommand="SELECT [FuncationalAreaName] FROM [FuncationalAreaDetails] ORDER BY [FuncationalAreaName]">
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ddlFuncationArea" Display="None" 
                        ErrorMessage="Please Select Functional Area" InitialValue="Select" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Key Words"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtKeyword" runat="server" Width="400px"></asp:TextBox></td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtKeyword" Display="None" 
                        ErrorMessage="Please enter Keywords" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator6">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Salary"></asp:Label>
                </td>
                <td><asp:Label ID="Label6" runat="server" Text="MinSalary"> </asp:Label>
                <asp:DropDownList ID="ddlMinSalary" runat="server" 
                       >
                    </asp:DropDownList>
                    <asp:Label ID="Label23" runat="server" Text="MaxSalary">
                    </asp:Label>
                    <asp:DropDownList ID="ddlMaxSalary" runat="server">
                    </asp:DropDownList>
                    <asp:Label ID="Label25" runat="server" Text="lakh per anum"></asp:Label>
                    </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddlMinSalary" Display="None" 
                        ErrorMessage="Please select MinSalary" InitialValue="Select" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator7_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator7">
                    </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="ddlMaxSalary" Display="None" 
                        ErrorMessage="Please select  Max Salary"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator8_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator8">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Location"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlLocation" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="CityName" DataValueField="CityName" Width="400px" 
                        ondatabound="ddlLocation_DataBound" 
                        >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                        SelectCommand="SELECT [CityName] FROM [JobCityDetails] ORDER BY [CityName]">
                    </asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="ddlLocation" Display="None" 
                        ErrorMessage="Please select Location" InitialValue="Select" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator9_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator9">
                    </asp:ValidatorCalloutExtender>
                </td>
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
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="ddlExperiencesTo" Display="None" 
                        ErrorMessage="Please select min experiences" InitialValue="Select" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator10_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator10">
                    </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="ddlExperiencesFrom" Display="None" 
                        ErrorMessage="please select min exp" InitialValue="Select" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator11_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator11">
                    </asp:ValidatorCalloutExtender>
                </td>
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
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label10" runat="server" Text="Eiligibility"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtEiligibility" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td class="style7" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtEiligibility" Display="None" 
                        ErrorMessage="Please enter Eiligibility type" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator12_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator12">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="Job Position "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtJobPosition" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtJobPosition" Display="None" 
                        ErrorMessage="Please enter Job Position" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator13_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator13">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="Job Posted Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtjobposteddate" runat="server" Width="175px"></asp:TextBox>
                   
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtjobposteddate" Display="None" 
                        ErrorMessage="Please enter Job Posted Date " SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator14_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator14">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdateto" runat="server" Width="175px"></asp:TextBox>
                    <asp:CalendarExtender ID="txtdateto_CalendarExtender" runat="server" 
                        TargetControlID="txtdateto">
                    </asp:CalendarExtender>
&nbsp;From&nbsp;
                    <asp:TextBox ID="txtdatefrom" runat="server" Width="175px"></asp:TextBox>
                    <asp:CalendarExtender ID="txtdatefrom_CalendarExtender" runat="server" 
                        TargetControlID="txtdatefrom">
                    </asp:CalendarExtender>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtdateto" Display="None" ErrorMessage="Please enter date" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator15_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator15">
                    </asp:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                        ControlToValidate="txtdatefrom" Display="None" ErrorMessage="Please enter date" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator21_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator21">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Timing"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTimingfrom" runat="server" Width="176px">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
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
                        <asp:ListItem Selected="True">Select</asp:ListItem>
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
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="ddlTimingto" Display="None" 
                        ErrorMessage="Please select timing" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                        ControlToValidate="ddlTimingfrom" Display="None" 
                        ErrorMessage="Please  select timeing " SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator20_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator20">
                    </asp:ValidatorCalloutExtender>
                </td>
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
                <td class="style7">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ErrorMessage="Please select at list one item" 
                        onservervalidate="CustomValidator1_ServerValidate" 
                        ClientValidationFunction="ValidateASPControls"></asp:CustomValidator>

                     



                </td>
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
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="No of  Vacancy"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtVacancy" runat="server" Width="400px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="txtVacancy" Display="None" 
                        ErrorMessage="Please enter No of  Vacancy" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator17_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator17">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Job Descripation"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtJobDescripation" runat="server" Height="100px" 
                        TextMode="MultiLine" Width="400px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="txtJobDescripation" Display="None" 
                        ErrorMessage="Please enter Job Description" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator18_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator18">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label22" runat="server" Text="Job Status"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtjobstatus" runat="server" Width="400px"></asp:TextBox>
                </td>
               
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                        ControlToValidate="txtjobstatus" Display="None" 
                        ErrorMessage="Please enter Job Status" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator19_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator19">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                </td>
                <td>
                    <asp:Label ID="Message" runat="server" Text="Message"></asp:Label>
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3"><center>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True" 
                        DataKeyNames="Company_JobId" PageSize="5">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                ShowSelectButton="True" />
                            <asp:BoundField DataField="Company_JobId" HeaderText="Company_JobId" 
                                SortExpression="Company_JobId" ReadOnly="True" />
                            <asp:BoundField DataField="Job_Title" HeaderText="Job_Title" 
                                SortExpression="Job_Title" />
                            <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" 
                                SortExpression="Company_Name" />
                            <asp:BoundField DataField="Company_Address" HeaderText="Company_Address" 
                                SortExpression="Company_Address" />
                            <asp:BoundField DataField="Job_FuncationalArea" HeaderText="Job_FuncationalArea" 
                                SortExpression="Job_FuncationalArea" />
                            <asp:BoundField DataField="No_Of_Vacancy" HeaderText="No_Of_Vacancy" 
                                SortExpression="No_Of_Vacancy" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                        SelectCommand="SELECT [Company_JobId], [Job_Title], [Company_Name], [Company_Address], [Job_FuncationalArea], [No_Of_Vacancy] FROM [Company_JobDetails]" 
                        DeleteCommand="DELETE FROM [Company_JobDetails] WHERE [Company_JobId] = @Company_JobId" 
                        InsertCommand="INSERT INTO [Company_JobDetails] ([Company_JobId], [Job_Title], [Company_Name], [Company_Address], [Job_FuncationalArea], [No_Of_Vacancy]) VALUES (@Company_JobId, @Job_Title, @Company_Name, @Company_Address, @Job_FuncationalArea, @No_Of_Vacancy)" 
                        
                        UpdateCommand="UPDATE [Company_JobDetails] SET [Job_Title] = @Job_Title, [Company_Name] = @Company_Name, [Company_Address] = @Company_Address, [Job_FuncationalArea] = @Job_FuncationalArea, [No_Of_Vacancy] = @No_Of_Vacancy WHERE [Company_JobId] = @Company_JobId">
                        <DeleteParameters>
                            <asp:Parameter Name="Company_JobId" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Company_JobId" Type="String" />
                            <asp:Parameter Name="Job_Title" Type="String" />
                            <asp:Parameter Name="Company_Name" Type="String" />
                            <asp:Parameter Name="Company_Address" Type="String" />
                            <asp:Parameter Name="Job_FuncationalArea" Type="String" />
                            <asp:Parameter Name="No_Of_Vacancy" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Job_Title" Type="String" />
                            <asp:Parameter Name="Company_Name" Type="String" />
                            <asp:Parameter Name="Company_Address" Type="String" />
                            <asp:Parameter Name="Job_FuncationalArea" Type="String" />
                            <asp:Parameter Name="No_Of_Vacancy" Type="String" />
                            <asp:Parameter Name="Company_JobId" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    </center>
                </td>
            </tr>
        </table>
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
    
</asp:Content>

