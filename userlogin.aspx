<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="HMSW.userlogin" %>

<%--New assembly added for access page cotrol from child page--%>
<%--<%@ MasterType VirtualPath="~/Site1.Master" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <style>
        .forgot-pass {
            /*using absulut we can modify element position as per need*/
            position: sticky;
            right: 33px;
            top: 81%;
            left: 45%;
        }

        .card {
            box-shadow: 4px 4px 4px 4px grey;
        }

        .form-control {
            box-shadow: 2px 2px grey;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="breadcrumbs-section">
        <div class="container p-1">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Homepage.aspx">Home</a></li>
                        <li class="breadcrumb-item active">User Login</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <div class="container">
        <div class="row pb-4">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/user.png" width="100" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <%--<label>User Name</label>--%>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Email !" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <%--<label>Password</label>--%>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Password !" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <%--<label>User Name</label>--%>
                                <div class="form-group">
                                     <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="Select Role" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="admin" Value="admin"></asp:ListItem>
                                    <asp:ListItem Text="doctor" Value="doctor"></asp:ListItem>
                                    <asp:ListItem Text="user" Value="user"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Select Role !" InitialValue="-1" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group py-2">
                                    <asp:Button ID="Button1" class="btn btn-primary w-100" runat="server" Text="Login" value="Login" OnClick="Button1_Click" />
                                    <%--<input class="btn btn-primary w-100" id="Button1" type="button" value="Login" />--%>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group py-2">
                                    <asp:Button ID="Button2" class="btn btn-info w-100" runat="server" Text="Registar" value="Registar" OnClick="Button2_Click" />
                                    <%--<input class="btn btn-info w-100" id="Button2" type="button" value="Registar" />--%>
                                </div>
                            </div>
                        </div>

                        <a href="ForgotPassword.aspx" class="forgot-pass py-2 text-decoration-none">Forgot Password ?</a>



                    </div>
                </div>

                <%--<a href="Homepage.aspx">&lt;&lt;Back to Home</a>--%>
            </div>
        </div>
    </div>

</asp:Content>
