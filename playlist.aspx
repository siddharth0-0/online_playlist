<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="playlist.aspx.cs" Inherits="first_sharp.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <style type="text/css">
        body {
            background-image: url("images/black-vinyl-player-145707.jpg");
            margin: 0;
            padding: 0;
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        h3 {
            padding: 0;
            margin-top: 5%;
            margin-bottom: 5%;
            text-align: center;
            color: #49BBBA;
            font-weight: bold;
            letter-spacing: 2px;
            letter-spacing:1px;
        }

        .btnsubmit {
            border: none;
            outline: none;
            height: 40px;
            width:125px;
            font-size: 16px;
            cursor: pointer;
            background-color:black;
            border-radius: 20px;
            transition: .3s ease-in-out;
            color: azure;
        }

        .btnsubmit:hover {
            background-color: #91DDDA;
            color: white;
        }
    </style>
    <div class="container-fluid ">


        <div class="container w-50 p-3">

            <div class="card text-center bg-dark text-white ">
                <div class="card-body">
                    <h3>Add Songs to your playlist</h3>
                    <div class="card-body">

                        <asp:DropDownList ID="AllSongs" runat="server" OnSelectedIndexChanged="AllSongs_SelectedIndexChanged" AutoPostBack="true" Font-Size="Large" BackColor="#262525" ForeColor="White"></asp:DropDownList>
                        <br />
                        <asp:TextBox ID="TextBoxID" runat="server" ReadOnly="true" Visible="False"></asp:TextBox>
                        <br />

                        <asp:Button ID="Button1" runat="server" CssClass="btnsubmit" Text="Add song" OnClick="Button1_Click1" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Song Added Successfully" CssClass="text-success" Visible="false"></asp:Label>


                        <br />
                        <br />


                        <asp:HyperLink ID="HyperLink1" Target="_blank" runat="server" ForeColor="#E8ECF2"> <img src="images/play-circle.svg" height="30" width="30" /> </asp:HyperLink>

                    </div>
                </div>
            </div>
        </div>






    </div>


</asp:Content>
