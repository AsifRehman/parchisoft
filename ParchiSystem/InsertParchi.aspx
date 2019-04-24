<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertParchi.aspx.cs" Inherits="ParchiSystem.InsertParchi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:FormView CssClass="form" ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="368px">
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
                <div class="form-group">
                    <label>VocNo</label>
                    <asp:TextBox CssClass="form-control form-control-sm" ID="VocNoTextBox" runat="server" Text='<%# Bind("VocNo") %>' />
                </div>
                <div class="form-group">
                    <label>Date</label>
                    <asp:TextBox CssClass="form-control form-control-sm" ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                </div>
                <div class="form-group">
                    <label>Due Date</label>
                    <asp:TextBox CssClass="form-control form-control-sm" ID="DueDateTextBox" runat="server" Text='<%# Bind("DueDate") %>' />
                </div>
                <div class="form-group">
                    <label>PartyID</label>
                    <asp:DropDownList CssClass="form-control form-control-sm" ID="DropDownList1" runat="server" SelectedValue='<%# Bind("PartyID") %>' DataSourceID="SqlDataSource1" DataTextField="Expr1" DataValueField="PartyNameID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnectionString %>" ProviderName="<%$ ConnectionStrings:DbConnectionString.ProviderName %>" SelectCommand="SELECT PartyNameID, PartyName + '-' + CAST(PartyNameID AS varchar(30)) AS Expr1 FROM tbl_Party ORDER BY PartyName"></asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label>Amount</label>
                    <asp:TextBox CssClass="form-control form-control-sm" ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                </div>
                <div class="form-group">
                    <label>Contact</label>
                    <asp:TextBox CssClass="form-control form-control-sm" ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                </div>
                <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                Contact:
                <asp:Label ID="ContactLabel" runat="server" Text='<%# Bind("Contact") %>' />
                <br />
                IsCancel:
                <asp:CheckBox ID="IsCancelCheckBox" runat="server" Checked='<%# Bind("IsCancel") %>' Enabled="false" />
                <br />
                CancelDate:
                <asp:Label ID="CancelDateLabel" runat="server" Text='<%# Bind("CancelDate") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnectionString %>" DeleteCommand="DELETE FROM [Parchi] WHERE [ID] = ?" InsertCommand="INSERT INTO [Parchi] ([VocNo], [Date], [DueDate], [PartyID], [Amount], [Contact]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:DbConnectionString.ProviderName %>" SelectCommand="SELECT TOP 20 ID, VocNo, Date, DueDate, PartyID, Amount, Contact, IsCancel, CancelDate FROM Parchi ORDER BY VocNo DESC" UpdateCommand="UPDATE [Parchi] SET [VocNo] = ?, [Date] = ?, [DueDate] = ?, [PartyID] = ?, [Amount] = ?, [Contact] = ?, isCancel = ?, CancelDate = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="VocNo" Type="Int32" />
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="DueDate" Type="DateTime" />
                <asp:Parameter Name="PartyID" Type="Int32" />
                <asp:Parameter Name="Amount" Type="Int32" />
                <asp:Parameter Name="Contact" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="VocNo" Type="Int32" />
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="DueDate" Type="DateTime" />
                <asp:Parameter Name="PartyID" Type="Int32" />
                <asp:Parameter Name="Amount" Type="Int32" />
                <asp:Parameter Name="Contact" Type="String" />
                <asp:Parameter Name="IsCancel" Type="Boolean" />
                <asp:Parameter Name="CancelDate" Type="DateTime" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div style="padding-top: 5px">
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-condensed table-hover" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="VocNo" HeaderText="VocNo" SortExpression="VocNo" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />
                <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" DataFormatString="{0:d}" />
                <asp:BoundField DataField="PartyID" HeaderText="PartyID" SortExpression="PartyID" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:CheckBoxField DataField="IsCancel" HeaderText="IsCancel" SortExpression="IsCancel" />
                <asp:BoundField DataField="CancelDate" HeaderText="CancelDate" SortExpression="CancelDate" DataFormatString="{0:d}" />
            </Columns>
            <EmptyDataTemplate>
                No Parchi(s) Yet.
            </EmptyDataTemplate>
        </asp:GridView>

    </div>
</asp:Content>
