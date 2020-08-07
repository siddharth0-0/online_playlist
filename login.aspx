<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="first_sharp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Music Application</title>
    <link href="style.css" rel="stylesheet" />
    <link href="favicon (1).ico" rel="icon" type="image/x-icon" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            height: 30px;
            color: #fff;
            font-size: 16px;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: solid;
            border-bottom-color: inherit;
            border-bottom-width: 3px;
            margin-bottom: 42px;
            background-color: transparent;
        }
        .auto-style2 {
            width: 100%;
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            height: 30px;
            color: #fff;
            font-size: 16px;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom-style: solid;
            border-bottom-color: inherit;
            border-bottom-width: 3px;
            margin-bottom: 37px;
            background-color: transparent;
        }
    </style>
 </head>

    <body>
        <div class=" login">
            <img src ="images/sound-waves.png" alt="Alternate text" class="logo" />
            <h2> Login here</h2>
            <form runat="server">
                <asp:Label Text="Email" CssClass="lblemail" runat="server" />
                <asp:TextBox ID="tx1" runat="server" CssClass="auto-style2" TextMode="Email" placeholder ="Enter Email" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Email" ControlToValidate="tx1" ForeColor= "Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label Text="Password" CssClass="lblpass" runat ="server" />
                <asp:TextBox ID="tx2" runat="server" CssClass="auto-style1" TextMode="Password" placeholder="*********" />
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" BorderColor="White" ControlToValidate="tx2" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1"  runat="server" Text=" Email or Password incorrect" ForeColor="Red" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:Button Text="LogIn" CssClass="btnsubmit" runat="server" OnClick="Login" />

                <asp:Button Text="SignUp" CssClass="btnsubmit" runat="server" OnClick="Unnamed6_Click" CausesValidation="false" />

            </form>
        </div>
    </body>

 </html>