<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test2.aspx.cs" Inherits="ParchiSystem.Test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                VocNo:
                <asp:TextBox ID="VocNoTextBox" runat="server" Text='<%# Bind("VocNo") %>' />
                <br />
                Date:
                <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                <br />
                DueDate:
                <asp:TextBox ID="DueDateTextBox" runat="server" Text='<%# Bind("DueDate") %>' />
                <br />
                PartyID:
                <asp:TextBox ID="PartyIDTextBox" runat="server" Text='<%# Bind("PartyID") %>' />
                <br />
                Amount:
                <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                <br />
                Contact:
                <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                <br />
                IsCancel:
                <asp:CheckBox ID="IsCancelCheckBox" runat="server" Checked='<%# Bind("IsCancel") %>' />
                <br />
                CancelDate:
                <asp:TextBox ID="CancelDateTextBox" runat="server" Text='<%# Bind("CancelDate") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                VocNo:
                <asp:TextBox ID="VocNoTextBox" runat="server" Text='<%# Bind("VocNo") %>' />
                <br />
                Date:
                <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                <br />
                DueDate:
                <asp:TextBox ID="DueDateTextBox" runat="server" Text='<%# Bind("DueDate") %>' />
                <br />
                PartyID:
                <asp:TextBox ID="PartyIDTextBox" runat="server" Text='<%# Bind("PartyID") %>' />
                <br />
                Amount:
                <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                <br />
                Contact:
                <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                <br />
                IsCancel:
                <asp:CheckBox ID="IsCancelCheckBox" runat="server" Checked='<%# Bind("IsCancel") %>' />
                <br />
                CancelDate:
                <asp:TextBox ID="CancelDateTextBox" runat="server" Text='<%# Bind("CancelDate") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                VocNo:
                <asp:Label ID="VocNoLabel" runat="server" Text='<%# Bind("VocNo") %>' />
                <br />
                Date:
                <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
                <br />
                DueDate:
                <asp:Label ID="DueDateLabel" runat="server" Text='<%# Bind("DueDate") %>' />
                <br />
                PartyID:
                <asp:Label ID="PartyIDLabel" runat="server" Text='<%# Bind("PartyID") %>' />
                <br />
                Amount:
                <asp:Label ID="AmountLabel" runat="server" Text='<%# Bind("Amount") %>' />
                <br />
                Contact:&nbsp;<asp:Label ID="ContactLabel" runat="server" Text='<%# Bind("Contact") %>' />
                <br />
                IsCancel:
                <asp:CheckBox ID="IsCancelCheckBox" runat="server" Checked='<%# Bind("IsCancel") %>' Enabled="false" />
                <br />
                CancelDate:
                <asp:Label ID="CancelDateLabel" runat="server" Text='<%# Bind("CancelDate") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parchi19ConnectionString %>" SelectCommand="SELECT * FROM [Parchi]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
