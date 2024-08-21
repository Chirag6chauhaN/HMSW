<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="HMSW.ResetPassword" %>
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

     <div class="container pb-2 my-5">
        <div class="row pb-3 my-3">
            <div class="col-md-4 mx-auto my-3">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col p-2">
                                <center>
                                    <h2 class="m-3">Reset Password</h2>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col my-4">

                               <%--<label>User Name</label>--%>
                                  <div class="form-group py-1 mt-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ForeColor="Red" ErrorMessage="Please enter your new password" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"  ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                  </div>

                                <div class="form-group py-1">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorRePass" runat="server" CssClass="text-danger" ErrorMessage="Confirm your new password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>--%>
                                    <asp:CompareValidator ID="CompareValidatorPass" runat="server" ForeColor="Red" ErrorMessage="Both password must be same !" ControlToValidate="TextBox1" ControlToCompare="TextBox2"></asp:CompareValidator>
                                </div>

                                  <div class="form-group">
                                      <asp:Button ID="btRecPass" class="btn btn-primary w-100" runat="server" Text="RESET" OnClick="btRecPass_Click" />

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
