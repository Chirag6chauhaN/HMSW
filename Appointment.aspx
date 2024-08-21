<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="HMSW.Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .btn{
            color: white;
        }

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
            <li class="breadcrumb-item active">Appointment</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

    <br />
    <div class="container mb-4">
        <div class="row">
            <div class="col-md-6 mx-auto ">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Book Appointment</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img src="images/Appointment.png"  width="100"/>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <%--<div class="row">
                             <div class="col-md-6">
                                <label>Appointment ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Appointment ID" Visible="False"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>User ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div>--%>

                        
                         <div class="row">
                             <%--<div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group p-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>--%>

                             <div class="col-md">
                                <%--<label>Treatment</label>--%>
                                  <asp:DropDownList CssClass="form-control pt-2" ID="DropDownList2" runat="server">
                                    <asp:ListItem Text="Select Your Health Issue" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="Accidents" Value="Accidents"></asp:ListItem>
                                    <asp:ListItem Text="AIDS/HIV" Value="AIDS/HIV"></asp:ListItem>
                                    <asp:ListItem Text="Allergies" Value="Allergies"></asp:ListItem>
                                    <asp:ListItem Text="Asthma" Value="Asthma"></asp:ListItem>
                                    <asp:ListItem Text="Blood Pressure" Value="Blood Pressure"></asp:ListItem>
                                    <asp:ListItem Text="Cancer" Value="Cancer"></asp:ListItem>
                                    <asp:ListItem Text="Cholesterol" Value="Cholesterol"></asp:ListItem>
                                    <asp:ListItem Text="Colds & Flu" Value="Colds & Flu"></asp:ListItem>
                                    <asp:ListItem Text="Covid 19" Value="Covid 19"></asp:ListItem>
                                    <asp:ListItem Text="Diabetes" Value="Diabetes"></asp:ListItem>
                                    <asp:ListItem Text="Headaches" Value="Headaches"></asp:ListItem>
                                    <asp:ListItem Text="Chickenpox" Value="Chickenpox"></asp:ListItem>
                                    <asp:ListItem Text="Heart Disease" Value="Heart Disease"></asp:ListItem>
                                    <asp:ListItem Text="Injury" Value="Injury"></asp:ListItem>
                                    <asp:ListItem Text="Mental Health" Value="Mental Health"></asp:ListItem>
                                    <asp:ListItem Text="Stroke" Value="Stroke"></asp:ListItem>
                                </asp:DropDownList> 
                            </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Select Your Health Issue !" InitialValue="-1" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        
                          <div class="row">
                            <div class="col-md-6">
                               <%--<label>Date</label>--%>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date" TextMode="Date" ToolTip="Appointment Date"></asp:TextBox>
                                    <%--<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Date" TextMode="Date" ToolTip="Appointment Date"></asp:TextBox>--%>
                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Date !" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                             <div class="col-md-6">
                                <%--<label>Time</label>--%>
                                  <div class="form-group">
                                    <%--<asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Time" TextMode="Time" ToolTip="Appointment Time"></asp:TextBox>--%>
                                       <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="Select Time" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="08:00 AM" Value="08:00 AM"></asp:ListItem>
                                    <asp:ListItem Text="09:00 AM" Value="09:00 AM"></asp:ListItem>
                                    <asp:ListItem Text="10:00 AM" Value="10:00 AM"></asp:ListItem>
                                    <asp:ListItem Text="11:00 AM" Value="11:00 AM"></asp:ListItem>
                                    <asp:ListItem Text="12:00 PM" Value="12:00 PM"></asp:ListItem>
                                    <asp:ListItem Text="01:00 PM" Value="01:00 PM"></asp:ListItem>
                                    <asp:ListItem Text="02:00 PM" Value="02:00 PM"></asp:ListItem>
                                    <asp:ListItem Text="04:00 PM" Value="04:00 PM"></asp:ListItem>
                                    <asp:ListItem Text="05:00 PM" Value="05:00 PM"></asp:ListItem>
                                    <asp:ListItem Text="06:00 PM" Value="06:00 PM"></asp:ListItem>
                                    <asp:ListItem Text="07:00 PM" Value="07:00 PM"></asp:ListItem>
                                    <asp:ListItem Text="08:00 PM" Value="08:00 PM"></asp:ListItem>
                                    <asp:ListItem Text="09:00 PM" Value="09:00 PM"></asp:ListItem>
                                </asp:DropDownList> 
                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Select Time !" InitialValue="-1" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Time !" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                      <%--  <br />--%>

                        <div class="row">
                            <div class="col-md btn-1 pb-2">
                                <asp:Button ID="Button2" class="btn btn-lg btn-success" runat="server" Text="Book" OnClick="Button2_Click" Width="100%"/>
                            </div>
                           <%--<div class="col-md-6 btn-1 pb-2">
                                <asp:Button ID="Button3" class="btn btn-lg btn-warning" runat="server" Text="Update" Width="100%"/>
                            </div>--%>
                           <%-- <div class="col-md-4 btn-1 pb-2">
                                <asp:Button ID="Button4" class="btn btn-lg btn-danger" runat="server" Text="Delete" Width="100%"/>
                            </div>--%>
                        </div>


                    </div>
                </div>

                <%--<a href="Homepage.aspx">&lt;&lt;Back to Home</a><br>--%>
                <br>
            </div>

           <%-- <div class="col-md-8">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md">
                                <center>
                                        <h4>Appointments</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSWDBConnectionString2 %>" SelectCommand="SELECT appointment.id, appointment.userId, [user].fullName, appointment.treatment, appointment.date, appointment.time
FROM appointment
INNER JOIN [user] ON appointment.userId = [user].id
WHERE
	appointment.userId = 2;"></asp:SqlDataSource>

                            <div class="table-responsive">
                                <div class="table-ap">
                                <asp:GridView class="table-striped table-bordered table table-responsive-md" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="Appointment Id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                        <asp:BoundField DataField="userId" HeaderText="User Id" SortExpression="userId"></asp:BoundField>
                                        <asp:BoundField DataField="fullName" HeaderText="Full Name" SortExpression="fullName"></asp:BoundField>
                                        <asp:BoundField DataField="treatment" HeaderText="Treatment" SortExpression="treatment"></asp:BoundField>
                                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" DataFormatString="{0:d}"></asp:BoundField>
                                        <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" DataFormatString="{0:t}"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>


            </div>--%>

        </div>
    </div>


</asp:Content>
