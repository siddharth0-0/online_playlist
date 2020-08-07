<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="songs.aspx.cs" Inherits="first_sharp.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background-image: url(images/play_wall.png);
            margin: 0;
            padding: 0;
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .row {
            letter-spacing: 1px;
            color: #49BBBA;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container song-table">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [songs_master]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>

                <asp:TemplateField>
                    <HeaderTemplate>

                        <div class="container-fluid">

                            <div class="row justify-content-center">
                                <div class="col-lg-1">
                                    <asp:Label ID="Label_Id" runat="server" Text="Id"></asp:Label>
                                </div>
                                <div class="col-lg-2">
                                    <asp:Label ID="Label_Title" runat="server" Text="Title"></asp:Label>
                                </div>
                                <div class="col-lg-3">
                                    <asp:Label ID="Label_Artist" runat="server" Text="Artist"></asp:Label>
                                </div>
                                <div class="col-lg-3">
                                    <asp:Label ID="Label_Album" runat="server" Text="Album"></asp:Label>
                                </div>
                                <div class="col-lg-3">
                                    <asp:Label ID="Label_Link" runat="server" Text="Play On YouTube"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </HeaderTemplate>
                    <HeaderStyle />
                    <ItemTemplate>

                        <div class="container-fluid">

                            <div class="row ">
                                <div class="col-lg-1 align-self-center">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </div>
                                <div class="col-lg-2 align-self-center">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("song_title") %>'></asp:Label>
                                </div>
                                <div class="col-lg-3 align-self-center">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("artitst") %>'></asp:Label>
                                </div>
                                <div class="col-lg-3 align-self-center">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("album") %>'></asp:Label>
                                </div>
                                <div class="col-lg-3 align-self-center">
                                    <asp:HyperLink ID="HyperLink1" Target="_blank" runat="server" NavigateUrl='<%# Eval("song_link") %>'>
                                        <asp:Image ID="Image1" CssClass="img-fluid" runat="server" ImageUrl='<%# Eval("thumbnail_link") %>' />
                                    </asp:HyperLink>
                                </div>

                            </div>
                        </div>

                    </ItemTemplate>
                    <ItemStyle />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>




</asp:Content>
