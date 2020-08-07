<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="first_sharp.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Music Application</title>
    <link href="style.css" rel="stylesheet" />
    <link href="favicon (1).ico" rel="icon" type="image/x-icon" />
   
 </head>

    <body>
        <div class=" signup">
            <img src ="images/sound-waves.png" alt="Alternate text" class="logo" />
            <h2> Sign Up here</h2>
             <form runat="server">
                
                <asp:TextBox ID="txfn" runat="server" CssClass="txtfname" placeholder ="First name" OnTextChanged="Unnamed1_TextChanged" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="val" runat="server" ErrorMessage="Enter First Name" ForeColor="Red" ClientIDMode="AutoID" ControlToValidate="txfn" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txln" runat="server" CssClass="txtlname" placeholder="Last Name" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="txln" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txem" CssClass="txtemail" placeholder="Email Address" TextMode="Email" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txem" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email Address " ControlToValidate="txem" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txps" runat="server" CssClass="txtpass" Textmode="Password" placeholder="Password" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txps" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txps" ErrorMessage="Min 8 characters, one UpperCase, one lowercase and one number" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txcps" runat="server" CssClass="txtpass" Textmode="Password" placeholder="Confirm Password" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Confirm Password" ControlToValidate="txcps" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txcps" ErrorMessage="Password does not match" ForeColor="Red"  ControlToCompare="txps"></asp:CompareValidator>
                <asp:Button Text="Sign Up" CssClass="btnsubmit" runat="server" OnClick="Sign_Up" />

                <asp:Button Text="LogIn" CssClass="btnsubmit" runat="server" OnClick="Unnamed7_Click" CausesValidation="false"/>


            </form>
        </div>
    </body>

 </html>