<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Parties.aspx.cs" Inherits="ParchiSystem.Parties" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="PartyNameID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                PartyNameID:
                <asp:Label ID="PartyNameIDLabel1" runat="server" Text='<%# Eval("PartyNameID") %>' />
                <br />
                PartyName:
                <asp:TextBox ID="PartyNameTextBox" runat="server" Text='<%# Bind("PartyName") %>' />
                <br />
                Phone:
                <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
<%--                <div class="form-group">
                    <label>PartyID</label>
                    <asp:TextBox CssClass="form-control" ID="PartyNameIDTextBox" runat="server" Text='<%# Bind("PartyNameID") %>' />
                </div>--%>
                <div class="form-group">
                    <label>Party Name</label>
                    <asp:TextBox CssClass="form-control" ID="PartyNameTextBox" runat="server" Text='<%# Bind("PartyName") %>' />
                </div>
                <div class="form-group">
                    <label>Phone</label>
                    <asp:TextBox CssClass="form-control" ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                </div>
                <div class="form-group">
                    <label>Address</label>
                    <asp:TextBox CssClass="form-control" ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                </div>
                <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                PartyNameID:
                <asp:Label ID="PartyNameIDLabel" runat="server" Text='<%# Eval("PartyNameID") %>' />
                <br />
                PartyName:
                <asp:Label ID="PartyNameLabel" runat="server" Text='<%# Bind("PartyName") %>' />
                <br />
                Phone:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnectionString %>" DeleteCommand="DELETE FROM [tbl_Party] WHERE [PartyNameID] = ?" InsertCommand="INSERT INTO [tbl_Party] ([PartyName], [Phone], [Address]) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:DbConnectionString.ProviderName %>" SelectCommand="SELECT [PartyNameID], [PartyName], [Phone], [Address] FROM [tbl_Party]" UpdateCommand="UPDATE [tbl_Party] SET [PartyName] = ?, [Phone] = ?, [Address] = ? WHERE [PartyNameID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="PartyNameID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PartyName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PartyName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="PartyNameID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div>

        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-condensed table-hover" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EmptyDataTemplate>
                No Parties Yet.
            </EmptyDataTemplate>
        </asp:GridView>

    </div>
</asp:Content>
