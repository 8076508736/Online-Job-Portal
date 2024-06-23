<%@ Page Title="Add Branch Master" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddBranchMaster.aspx.cs" Inherits="Default2" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
                    
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <table class="style1">
                        <tr>
                            <td colspan="3"><center>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                                <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1" >
                                <ProgressTemplate >
                                    &nbsp;
                                </ProgressTemplate>
                                </asp:UpdateProgress>
                                <asp:Label ID="Label4" runat="server" Text="Department Master"></asp:Label></center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="DepartmentId"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="department_id" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Course Id"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlcourseid" runat="server" DataSourceID="SqlDataSource1" 
                                    DataTextField="CourseId" DataValueField="CourseId" Width="250px" 
                                    ondatabound="ddlcourseid_DataBound">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                    SelectCommand="SELECT [CourseId] FROM [CourseDetails]" 
                                    DeleteCommand="DELETE FROM [CourseDetails] WHERE [CourseId] = @CourseId" 
                                    InsertCommand="INSERT INTO [CourseDetails] ([CourseId]) VALUES (@CourseId)">
                                    <DeleteParameters>
                                        <asp:Parameter Name="CourseId" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="CourseId" Type="String" />
                                    </InsertParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage="Please  select Course Id" ControlToValidate="ddlcourseid" 
                                    InitialValue="Select" Display="None"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Department Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtdepartmentname" runat="server" Width="250px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtdepartmentname" 
                                    ErrorMessage="Please enter Department Name" Display="None" 
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Insert" onclick="Button2_Click" />
                            </td>
                            <td>
                                <asp:Label ID="Message" runat="server" Text="Message"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3"><center>
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
                                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                    CellSpacing="2" DataKeyNames="CourseId" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                            ShowSelectButton="True" />
                                        <asp:BoundField DataField="CourseId" HeaderText="CourseId" ReadOnly="True" 
                                            SortExpression="CourseId" />
                                        <asp:BoundField DataField="DepartmentId" HeaderText="DepartmentId" 
                                            SortExpression="DepartmentId" />
                                        <asp:BoundField DataField="DepartmentName" HeaderText="DepartmentName" 
                                            SortExpression="DepartmentName" />
                                    </Columns>
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                    DeleteCommand="DELETE FROM [DepartmentDetails] WHERE [CourseId] = @CourseId" 
                                    InsertCommand="INSERT INTO [DepartmentDetails] ([CourseId], [DepartmentId], [DepartmentName]) VALUES (@CourseId, @DepartmentId, @DepartmentName)" 
                                    SelectCommand="SELECT * FROM [DepartmentDetails]" 
                                    UpdateCommand="UPDATE [DepartmentDetails] SET [DepartmentId] = @DepartmentId, [DepartmentName] = @DepartmentName WHERE [CourseId] = @CourseId">
                                    <DeleteParameters>
                                        <asp:Parameter Name="CourseId" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="CourseId" Type="String" />
                                        <asp:Parameter Name="DepartmentId" Type="String" />
                                        <asp:Parameter Name="DepartmentName" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="DepartmentId" Type="String" />
                                        <asp:Parameter Name="DepartmentName" Type="String" />
                                        <asp:Parameter Name="CourseId" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource></center>
                            </td>
                        </tr>
                    </table>
        </ContentTemplate>
       
        </asp:UpdatePanel>
    </div>
    
</asp:Content>

