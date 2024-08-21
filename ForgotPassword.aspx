<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="HMSW.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
         .card{
            box-shadow: 4px 4px 4px 4px grey;
        }

        .form-control{
            box-shadow: 2px 2px grey;
        }
    </style>



    <div class="container">
        <div class="row  pb-4 my-3">
            <div class="col-md-4 mx-auto my-3">

                <div class="card my-5">
                    <div class="card-body">

                        <div class="row">
                            <div class="col p-2">
                                <center>
                                    <h2 class="m-3">Enter Email to Reset Your Password</h2>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col my-4">

                               <%--<label>User Name</label>--%>
                                  <div class="form-group py-2 mt-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                  </div>

                                  <div class="form-group py-2">
                                      <asp:Button ID="Button1" class="btn btn-primary w-100" runat="server" Text="SEND" value="send" OnClick="Button1_Click" />
                                      <%--<input class="btn btn-primary w-100" id="Button1" type="button" value="Login" />--%>
                                  </div>

                              
                            </div>
                        </div>

                    </div>
                </div>

                <%--<a href="Homepage.aspx">&lt;&lt;Back to Home</a>--%>
                


            </div>
        </div>
    </div>

</asp:Content>
