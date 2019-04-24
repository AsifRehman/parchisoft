<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ParchiSystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Parchi Management System</h1>
        <p class="lead">This Web Application provides features like add/edit new parchis, pay paments againgst parchis, pending Parchies,</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Insert New Parchi</h2>
            <p>
                Parchi Management system lets you insert new parchis.
            </p>
            <p>
                <a class="btn btn-default" href="InsertParchi">Add Parchi &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Pay Payments</h2>
            <p>
                Parchi Management System lets you pay payments against Parchis.
            </p>
            <p>
                <a class="btn btn-default" href="Payments">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
