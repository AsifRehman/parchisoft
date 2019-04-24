<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="ParchiSystem.Payments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="559px">
        <InsertItemTemplate>
            <div class="form-group">
                <label>ParchiNo:</label>
                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" Width="352px" DataSourceID="SqlDataSource1" DataTextField="Remarks" DataValueField="ParchiNo" SelectedValue='<%# Bind("ParchiNo") %>'></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnectionString %>" ProviderName="<%$ ConnectionStrings:DbConnectionString.ProviderName %>" SelectCommand="SELECT *, cast(ParchiNo as varchar(20)) + '--' + cast(Bal as varchar(30)) as Remarks FROM [ParchiPending] WHERE ([Bal] &lt;&gt; ?)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="Bal" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="form-group">
                <label>Description:</label>
                <asp:TextBox CssClass="form-control" ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            </div>
            <div class="form-group">
                <label>Amount:</label>
                <asp:TextBox CssClass="form-control" ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
            </div>
            <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnectionString %>" DeleteCommand="DELETE FROM [ParchiPayments] WHERE [ID] = ?" InsertCommand="INSERT INTO [ParchiPayments] ([ParchiNo], [Description], [Amount]) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:DbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [ParchiPayments]" UpdateCommand="UPDATE [ParchiPayments] SET [ParchiNo] = ?, [Description] = ?, [Amount] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ParchiNo" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ParchiNo" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
