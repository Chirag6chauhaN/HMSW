<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewAppointmentList.aspx.cs" Inherits="HMSW.ViewAppointmentList" %>

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
                        <li class="breadcrumb-item active">View Appointment</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

                         <div class="container">
                          <div class="row">
                            <div class="col mx-auto">
                                <center>
                                  <div class="form-group my-2">
                                      <div class="alert alert-danger" role="alert">
                                           Click On Appointment Id To Get Ascending And Descending Order List
                                      </div>
                                  </div>
                                </center>
                            </div>
                        </div>
                     </div>


    <div class="container my-4 pb-5">
        <div class="row">

            <div class="col-md-12">

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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSWDBConnectionString2 %>" SelectCommand="SELECT appointment.id, appointment.userId, [user].fullName, appointment.helthIssue, appointment.date, appointment.time
FROM appointment
INNER JOIN [user] ON appointment.userId = [user].id;"></asp:SqlDataSource>

                            <div class="table-responsive">
                                <div class="table-ap">
                                    <asp:GridView class="table-striped table-bordered table table-responsive-md" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowSorting="True">
                                        <Columns>
                                             <asp:BoundField DataField="id" HeaderText="Appointment Id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                            <asp:BoundField DataField="userId" HeaderText="User Id" SortExpression="userId"></asp:BoundField>
                                            <asp:BoundField DataField="fullName" HeaderText="Full Name" SortExpression="fullName"></asp:BoundField>
                                            <asp:BoundField DataField="helthIssue" HeaderText="Health Issue" SortExpression="treatment"></asp:BoundField>
                                            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" DataFormatString="{0:d}"></asp:BoundField>
                                            <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" DataFormatString="{0:t}"></asp:BoundField>
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
