<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="HMSW.usersignup" %>
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

    <section class="breadcrumbs-section">
        <div class="container p-1">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Homepage.aspx">Home</a></li>
                        <li class="breadcrumb-item active">User SignUp</li>
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
                                    <img src="images/user.png" width="100"/>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Sign Up</h4>
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
                            <div class="col-md-6">
                               <%--<label>Full Name</label>--%>
                                  <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Full Name !" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                             <div class="col-md-6">
                                <%--<label>Age</label>--%>
                                  <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Date" Text="Date Of Birth" ToolTip="Date Of Birth (dd-mm-yyyy)"></asp:TextBox>
                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Date Of Birth !" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col-md-6">
                               <%--<label>Gender</label>--%>
                                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="Select Gender" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Select Gender !" InitialValue="-1" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            
                             <div class="col-md-6">
                                <%--<label>Blood Group</label>--%>
                                  <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                    <asp:ListItem Text="Select Blood Group" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="A+" Value="A+"></asp:ListItem>
                                    <asp:ListItem Text="B+" Value="B+"></asp:ListItem>
                                    <asp:ListItem Text="O+" Value="O+"></asp:ListItem>
                                    <asp:ListItem Text="AB+" Value="AB+"></asp:ListItem>
                                    <asp:ListItem Text="A-" Value="A-"></asp:ListItem>
                                    <asp:ListItem Text="B-" Value="B-"></asp:ListItem>
                                    <asp:ListItem Text="O-" Value="O-"></asp:ListItem>
                                    <asp:ListItem Text="AB-" Value="AB-"></asp:ListItem>
                                </asp:DropDownList> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Select Blood Group !" InitialValue="-1" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        
                         <div class="row">
                             <div class="col-md-6">
                               <%--<label>Phone no</label>--%>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Phone no" TextMode="Phone"></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone no !" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[0-9]{10}" Display="Dynamic"></asp:RegularExpressionValidator>                                    
                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Phone no !" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>


                         <div class="row">

                             <div class="col">
                                <%--<label>Address</label>--%>
                                  <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Address !" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                            
                          <div class="row ">
                              <div class="col-md-6">
                                <%--<label>Email</label>--%>
                                  <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email !" ControlToValidate="TextBox8" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Display="Dynamic"></asp:RegularExpressionValidator>
                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter Your Email !" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                             <div class="col-md-6">
                                <%--<label>Password</label>--%>
                                  <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"  ControlToValidate="TextBox7" ForeColor="Red" ErrorMessage="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter Your Password !" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col">
                                
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary w-100" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                      <%--<input class="btn btn-primary w-100" id="Button1" type="button" value="Sign Up" />--%>
                                  </div>
                            </div>
                        </div>


                    </div>
                </div>

                <%--<a href="Homepage.aspx">&lt;&lt;Back to Home</a>--%>
                <%--<a href="Homepage.aspx" class="forgot-pass">Forgot Password</a>--%>


            </div>
        </div>
    </div>

</asp:Content>
