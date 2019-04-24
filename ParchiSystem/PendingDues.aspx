<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PendingDues.aspx.cs" Inherits="ParchiSystem.PendingDues" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%;">
        <tr>
            <td style="text-align: center; padding-bottom: 5px">Due Date From:
                <asp:TextBox ID="txtFrom" AutoCompleteType="Disabled" runat="server" CssClass="input-control"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFrom"></cc1:CalendarExtender>
                &nbsp;&nbsp; Due Date To:
                <asp:TextBox ID="txtTo" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtTo"></cc1:CalendarExtender>
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Load Data" />
            </td>
            <td style="text-align: center">&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover table-condensed" DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="VocNo" HeaderText="VocNo" SortExpression="VocNo" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:dd-MM-yyyy}" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" DataFormatString="{0:dd-MM-yyyy}" />
            <asp:BoundField DataField="PartyID" HeaderText="PartyID" SortExpression="PartyID" />
            <asp:BoundField DataField="PartyName" HeaderText="PartyName" SortExpression="PartyName" />
            <asp:BoundField DataField="Bal" HeaderText="Balance" SortExpression="Bal" DataFormatString="{0:0,000}" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
        </Columns>
        <EmptyDataTemplate>
            Select Date Range to Display Data
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnectionString %>" ProviderName="<%$ ConnectionStrings:DbConnectionString.ProviderName %>" SelectCommand="SELECT ParchiPending.ParchiNo AS VocNo, ParchiPending.Date, ParchiPending.DueDate, ParchiPending.PartyID, tbl_Party.PartyName, ParchiPending.Bal FROM tbl_Party INNER JOIN ParchiPending ON tbl_Party.PartyNameID = ParchiPending.PartyID WHERE (ParchiPending.DueDate BETWEEN ? AND ?) AND (ParchiPending.Bal &lt;&gt; 0)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtFrom" Name="?" PropertyName="Text" DefaultValue="01-01-2019" />
            <asp:ControlParameter ControlID="txtTo" Name="?" PropertyName="Text" DefaultValue="01-01-2020" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
