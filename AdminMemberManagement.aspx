<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagement.aspx.cs" Inherits="HMSW.AdminMemberManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
    </script>
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
                        <li class="breadcrumb-item active">Admin Member Management</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <div class="container-fluid">
        <div class="row pb-2">

            <div class="col-md-5">

                <div class="card my-2">
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
                                    <h4>Member Details</h4>
                                    <%--<span>Account Status -</span>
                                    <asp:Label ID="Label1" class="badge rounded-pill text-bg-info" runat="server" Text="Your Status"></asp:Label>--%>
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
                                <div class="form-group my-2">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Member ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                                    </div>
                                </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Full Name !" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>

                            <div class="col-md-6">
                                <%--<label>Full Name</label>--%>
                                <div class="form-group my-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name" ReadOnly="true"></asp:TextBox>
                                </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Full Name !" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>

                        </div>


                        <div class="row">

                            <div class="col-md-6">
                                <%--<label>Age</label>--%>
                                <div class="form-group my-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date Of Birth" ToolTip="Date Of Birth (dd-mm-yyyy)" ReadOnly="true"></asp:TextBox>
                                </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Date Of Birth !" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>

                           <div class="col-md-6">
                                <%--<label>Address</label>--%>
                                <div class="form-group my-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Gender" ReadOnly="true"></asp:TextBox>
                                </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Address !" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>

                        <div class="row">
                           <div class="col-md-6">
                                <%--<label>Address</label>--%>
                                <div class="form-group my-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Blood Group" TextMode="SingleLine" ReadOnly="true"></asp:TextBox>
                                </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Address !" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>

                            <div class="col-md-6">
                                <%--<label>Phone no</label>--%>
                                <div class="form-group my-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Phone no" TextMode="Phone" ReadOnly="true"></asp:TextBox>
                                </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Phone no !" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>


                        <div class="row">

                            <div class="col">
                                <%--<label>Address</label>--%>
                                <div class="form-group my-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Address" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
                                </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Address !" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <%--<label>Address</label>--%>
                               <div class="form-group my-2">
                                     <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="Select Role" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="admin" Value="admin"></asp:ListItem>
                                    <asp:ListItem Text="doctor" Value="doctor"></asp:ListItem>
                                    <asp:ListItem Text="user" Value="user"></asp:ListItem>
                                    <asp:ListItem Text="user, admin" Value="user, admin"></asp:ListItem>
                                    <asp:ListItem Text="user, doctor" Value="user, doctor"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Select Role !" InitialValue="-1" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Address !" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>

                             <div class="col-md-6">
                                <%--<label>Address</label>--%>
                                <div class="form-group my-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Email" ReadOnly="true" TextMode="Email"></asp:TextBox>
                                </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Address !" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md">
                                <%--<label>Address</label>--%>
                                <div class="form-group my-2">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Account Status" ReadOnly="true"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success mx-1 rounded-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning mx-1 rounded-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger mx-1 rounded-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Address !" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md">
                                <center>
                                    <div class="form-group my-2">
                                        <asp:Button class="btn btn-danger w-100" ID="Button3" runat="server" Text="Delete User Permanently" OnClick="Button3_Click" />
                                    </div>
                                </center>
                            </div>
                        </div>


                    </div>
                </div>

                <%--<a href="Homepage.aspx">&lt;&lt;Back to Home</a>--%>

            </div>

            <div class="col-md-7">
                 <div class="card my-2">
                    <div class="card-body">

                        <div class="row">
                            <div class="col-md">
                                <center>
                                        <h4>Members List</h4>
                                    <%--<asp:Label ID="Label2" class="badge rounded-pill text-bg-warning" runat="server" Text="Booked Appointment Info"></asp:Label>--%>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="table-responsive">
                                <div class="table-ap">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSWDBConnectionString3 %>" SelectCommand="SELECT * FROM [user]"></asp:SqlDataSource>
                                    <asp:GridView class="table table-striped table-bordered table-responsive-md" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                            <asp:BoundField DataField="fullName" HeaderText="Name" SortExpression="fullName"></asp:BoundField>
                                            <asp:BoundField DataField="accountStatus" HeaderText="Account Status" SortExpression="accountStatus"></asp:BoundField>
                                            <asp:BoundField DataField="permission" HeaderText="Permission" SortExpression="permission"></asp:BoundField>
                                            <asp:BoundField DataField="phoneNo" HeaderText="Phone No" SortExpression="phoneNo"></asp:BoundField>
                                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"></asp:BoundField>
                                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address"></asp:BoundField>
                                        </Columns>

                                    </asp:GridView>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
