<%@ Page Title="Job Whole Detail" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeFile="CompanyWholeDetails.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="Company_JobId" DataSourceID="SqlDataSource1" Height="50px" 
        onpageindexchanging="DetailsView1_PageIndexChanging" Width="234px" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Company_JobId" HeaderText="Company JobId" 
                ReadOnly="True" SortExpression="Company_JobId" />
            <asp:BoundField DataField="Job_Title" HeaderText="Job Title" 
                SortExpression="Job_Title" />
            <asp:BoundField DataField="Company_Name" HeaderText="Company Name" 
                SortExpression="Company_Name" />
            <asp:BoundField DataField="Company_Address" HeaderText="Company Address" 
                SortExpression="Company_Address" />
            <asp:BoundField DataField="Job_FuncationalArea" 
                HeaderText="Job FuncationalArea" SortExpression="Job_FuncationalArea" />
            <asp:BoundField DataField="Job_KeyWord" HeaderText="Job KeyWord" 
                SortExpression="Job_KeyWord" />
            <asp:BoundField DataField="Job_Salary" HeaderText="Job Salary" 
                SortExpression="Job_Salary" />
            <asp:BoundField DataField="Job_Location" HeaderText="Job Location" 
                SortExpression="Job_Location" />
            <asp:BoundField DataField="Job_Experiences" HeaderText="Job Experiences" 
                SortExpression="Job_Experiences" />
            <asp:BoundField DataField="Job_Shifting" HeaderText="Job Shifting" 
                SortExpression="Job_Shifting" />
            <asp:BoundField DataField="Job_Eiligibility" HeaderText="Job Eiligibility" 
                SortExpression="Job_Eiligibility" />
            <asp:BoundField DataField="Job_Postion" HeaderText="Job Postion" 
                SortExpression="Job_Postion" />
            <asp:BoundField DataField="Job_PostedDate" HeaderText="Job PostedDate" 
                SortExpression="Job_PostedDate" />
            <asp:BoundField DataField="Job_ToFromDate" HeaderText="Job ToFromDate" 
                SortExpression="Job_ToFromDate" />
            <asp:BoundField DataField="Job_Timing" HeaderText="Job Timing" 
                SortExpression="Job_Timing" />
            <asp:BoundField DataField="Job_HiringProcess" HeaderText="Job HiringProcess" 
                SortExpression="Job_HiringProcess" />
            <asp:BoundField DataField="Job_Type" HeaderText="Job Type" 
                SortExpression="Job_Type" />
            <asp:BoundField DataField="No_Of_Vacancy" HeaderText="No Of Vacancy" 
                SortExpression="No_Of_Vacancy" />
            <asp:BoundField DataField="Job_Descripation" HeaderText="Job Descripation" 
                SortExpression="Job_Descripation" />
            <asp:BoundField DataField="Job_Status" HeaderText="Job Status" 
                SortExpression="Job_Status" />
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
        
        
        SelectCommand="SELECT * FROM [Company_JobDetails] WHERE ([Company_JobId] = @Company_JobId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Company_JobId" QueryStringField="jobid" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
</asp:Content>

