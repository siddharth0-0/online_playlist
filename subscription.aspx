<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="subscription.aspx.cs" Inherits="first_sharp.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
       body{
           background-image:url(images/bg.png);
           margin:0;
            padding:0;
            background-position:center;
            background-size:cover;
            background-repeat:no-repeat;
            background-attachment:fixed;
       }
        h1 {
             padding: 0;
            margin-top: 5%;
            margin-bottom: 5%;
            text-align: center;
            color: #49BBBA;
            font-weight:bold ;
            letter-spacing:2px;
        }
        .subs{
               position: absolute;
                top: 40%;
                left: 50%;
                transform: translate(-50%,-50%);
                width: 480px;
                height:420px;
                padding: 50px 40px;
                box-sizing: border-box;
                border:8px double;
                border-color:#49BBBA;
        }
        p{
                padding: 0;
                margin-top: 5%;
                margin-bottom: 5%;
                text-align: center;
                letter-spacing:3px;
                font-weight:bold;
               font-size:medium;
        }
        .subbtn{
            border: none;
            outline: none;
            height: 40px;
            width:200px;
            position:absolute;
            left:28%;
            font-size: 16px;
            background-color: #49BBBA;
            cursor: pointer;
            border-radius:50px;
            transition: .3s ease-in-out;
            
        }
    </style>
    <script type="text/javascript">
        function SetButton(btn) {
            if (btn.value == "Try It Now")
                btn.value = "Subscribed!!!";

            else {

                btn.value = "Try It Now";
            }
            return false;
        }
    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

 <div class="subs">
     <h1><em>Subscription</em></h1>
     <p>
         Grove Into Music<br /> <br />
         With Unlimited skips and No ad interruptions<br /><br />
         Try Premium for Free now by clicking Subscription button
     </p>

     <asp:Button  runat="server" CssClass="subbtn" Text="Try It Now" OnClientClick="return SetButton(this)" />

 </div>
</asp:Content>
