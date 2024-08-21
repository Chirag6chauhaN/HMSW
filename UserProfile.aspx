<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="HMSW.UserProfile" %>
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
                    <%--<h2>About Us</h2>--%>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Homepage.aspx">Home</a></li>
                        <li class="breadcrumb-item active">User Profile</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card my-2">
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
                                    <h4>Your Profile</h4>
                                    <span>Account Status -</span>
                                    <asp:Label ID="Label1" class="badge rounded-pill text-bg-info" runat="server" Text="Your Status"></asp:Label>
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
                              <div class="col-md-4">
                                <%--<label>Email</label>--%>
                                  <div class="form-group my-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Email" TextMode="Email" ReadOnly="true"></asp:TextBox>
                                  </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter Your Email !" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>

                             <div class="col-md-4">
                                <%--<label>Password</label>--%>
                                  <div class="form-group my-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Old Password" ReadOnly="true"></asp:TextBox>
                                  </div>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter Your Password !" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>

                               <div class="col-md-4">
                                <%--<label>Password</label>--%>
                                  <div class="form-group my-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="New Password"></asp:TextBox>
                                  </div>
                                      <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"  ControlToValidate="TextBox7" ForeColor="Red" ErrorMessage="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please Enter Your Password !" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>
                          </div>

                        <div class="row">
                            <div class="col mx-auto">
                                <center>
                                  <div class="form-group my-2">
                                      <div class="alert alert-danger" role="alert">
                                           Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number
                                      </div>
                                  </div>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col mx-auto">
                                <center>
                                  <div class="form-group my-2">
                                      <asp:Button class="btn btn-success w-75" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
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
                            <div class="col">
                                <center>
                                        <img src="images/Appointment.png"  width="100"/>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md">
                                <center>
                                        <h4>Your Booked Appointments</h4>
                                    <asp:Label ID="Label2" class="badge rounded-pill text-bg-warning" runat="server" Text="Booked Appointment Info"></asp:Label>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                           <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSWDBConnectionString2 %>" SelectCommand="SELECT appointment.id, appointment.userId, [user].fullName, appointment.treatment, appointment.date, appointment.time
FROM appointment
INNER JOIN [user] ON appointment.userId = [user].id
WHERE
	appointment.userId = 2;"></asp:SqlDataSource>--%>

                            <div class="table-responsive">
                                <div class="table-ap">
                                    <asp:GridView class="table-striped table-bordered table table-responsive-md" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound1">
                                    <%--<Columns>
                                        <asp:BoundField DataField="id" HeaderText="Appointment Id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                        <asp:BoundField DataField="userId" HeaderText="User Id" SortExpression="userId"></asp:BoundField>
                                        <asp:BoundField DataField="fullName" HeaderText="Full Name" SortExpression="fullName"></asp:BoundField>
                                        <asp:BoundField DataField="treatment" HeaderText="Treatment" SortExpression="treatment"></asp:BoundField>
                                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" DataFormatString="{0:d}"></asp:BoundField>
                                        <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" DataFormatString="{0:t}"></asp:BoundField>
                                    </Columns>--%>
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
