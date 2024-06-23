<%@ Page Title="Add Course Detail" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCourseMaster.aspx.cs" Inherits="_Default" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
        <table border="5" class="style1">
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td colspan="3">
                                <center>
                                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                    </asp:ToolkitScriptManager>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Course Master"></asp:Label>
                                    &nbsp;</center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="CourseId"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="courseid" runat="server" Text="lable"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Qulification Id"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlqulificationid" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="QulificationId" 
                                    DataValueField="QulificationId" ondatabound="ddlqulificationid_DataBound" 
                                    Width="224px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                    SelectCommand="SELECT [QulificationId] FROM [QulificationDetails]">
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="ddlqulificationid" 
                                    ErrorMessage="Please select  Qulification Id" InitialValue="Select " 
                                    Display="None"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="CourseName"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtcoursename" runat="server" Width="233px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtcoursename" ErrorMessage="Please enter Course Name" 
                                    Display="None"></asp:RequiredFieldValidator>
                                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" 
                                    onclick="Button1_Click" Text="Insert" style="height: 26px" />
                            </td>
                            <td>
                                <asp:Label ID="Message" runat="server" Text="Message"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <center>
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                        DataKeyNames="CourseId" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                                        GridLines="None" PageSize="5">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                                ShowSelectButton="True" />
                                            <asp:BoundField DataField="CourseId" HeaderText="CourseId" ReadOnly="True" 
                                                SortExpression="CourseId" />
                                            <asp:BoundField DataField="CourseName" HeaderText="CourseName" 
                                                SortExpression="CourseName" />
                                            <asp:BoundField DataField="QulificationId" HeaderText="QulificationId" 
                                                SortExpression="QulificationId" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" 
                                        DeleteCommand="DELETE FROM [CourseDetails] WHERE [CourseId] = @CourseId" 
                                        InsertCommand="INSERT INTO [CourseDetails] ([CourseId], [CourseName], [QulificationId]) VALUES (@CourseId, @CourseName, @QulificationId)" 
                                        SelectCommand="SELECT * FROM [CourseDetails]" 
                                        UpdateCommand="UPDATE [CourseDetails] SET [CourseName] = @CourseName, [QulificationId] = @QulificationId WHERE [CourseId] = @CourseId">
                                        <DeleteParameters>
                                            <asp:Parameter Name="CourseId" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="CourseId" Type="String" />
                                            <asp:Parameter Name="CourseName" Type="String" />
                                            <asp:Parameter Name="QulificationId" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="CourseName" Type="String" />
                                            <asp:Parameter Name="QulificationId" Type="String" />
                                            <asp:Parameter Name="CourseId" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </center>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </ContentTemplate>
            </asp:UpdatePanel>
    </div>
</asp:Content>

