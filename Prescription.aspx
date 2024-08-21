<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Prescription.aspx.cs" Inherits="HMSW.Prescription" %>
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
            <li class="breadcrumb-item active">Prescription</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

    <br />
    <div class="container">
        <div class="row pb-2">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Prescription</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img src="images/prescription.png"  width="100"/>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                             <div class="col-md-6">
                               <%--<label>Appointment ID</label>--%>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                              <asp:ListItem Text="Patient Id" Value="-1"></asp:ListItem>

                                        </asp:DropDownList>
                                        <%--<asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Patient ID"></asp:TextBox>--%>
                                    </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select Patient Id !" InitialValue="-1" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <%--<label>User ID</label>--%>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Patient Name" Enabled="False"></asp:TextBox>
                                        <%--<asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />--%>
                                    </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Select Patient Id !" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                        </div>

                        
                         <div class="row">

                             <div class="col-md-6">
                                <%--<label>Treatment</label>--%>
                                  <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                    <asp:ListItem Text="Select Treatment" Value="-1"></asp:ListItem>
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
                                    <asp:ListItem Text="Probiotics" Value="Probiotics"></asp:ListItem>
                                    <asp:ListItem Text="Stroke" Value="Stroke"></asp:ListItem>
                                </asp:DropDownList> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Select Treatment !" InitialValue="-1" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>

                             <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Treatment Cost" TextMode="Number"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Cost !" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                        </div>
                        
                          <div class="row">
                            <div class="col-md-6">
                               <%--<label>Date</label>--%>
                                  <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Medicines"></asp:TextBox>
                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Medicines !" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                             <div class="col-md-6">
                                <%--<label>Time</label>--%>
                                  <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Medicine Quantity" TextMode="Number"></asp:TextBox>
                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Quantity !" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                   

                        <div class="row">
                            <div class="col-md-6 btn-1 pb-2">
                                <asp:Button ID="Button2" class="btn btn-lg btn-success" runat="server" Text="Add" Width="100%" OnClick="Button2_Click" />
                            </div>
                           <div class="col-md-6 btn-1 pb-2">
                               <asp:Button ID="Button3" class="btn btn-lg btn-warning" runat="server" Text="Update" Width="100%" OnClick="Button3_Click" />
                            </div>
                           <%-- <div class="col-md-4 btn-1 pb-2">
                                <asp:Button ID="Button4" class="btn btn-lg btn-danger" runat="server" Text="Delete" Width="100%"/>
                            </div>--%>
                        </div>


                    </div>
                </div>

                <%--<a href="Homepage.aspx">&lt;&lt;Back to Home</a><br>--%>
                <br>
            </div>

            <div class="col-md-7">

                <div class="card mx-2">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md">
                                <center>
                                        <h4>Prescriptions</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:HMSWDBConnectionString3 %>" SelectCommand="SELECT * FROM [prescription]" ID="ctl02"></asp:SqlDataSource>
                            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSWDBConnectionString2 %>" SelectCommand="SELECT appointment.id, appointment.userId, [user].fullName, appointment.treatment, appointment.date, appointment.time
FROM appointment
INNER JOIN [user] ON appointment.userId = [user].id
WHERE
	appointment.userId = 2;"></asp:SqlDataSource>--%>

                            <div class="table-responsive">
                                <div class="table-ap">
                                    <asp:GridView class="table-striped table-bordered table table-responsive-md" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ctl02">
                                        <Columns>
                                        <asp:BoundField DataField="id" HeaderText="Prescription Id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                        <asp:BoundField DataField="patientId" HeaderText="Patient Id" SortExpression="patientId"></asp:BoundField>
                                        <asp:BoundField DataField="patientName" HeaderText="Patient Name" SortExpression="patientName"></asp:BoundField>
                                        <asp:BoundField DataField="treatment" HeaderText="Treatment" SortExpression="treatment"></asp:BoundField>
                                        <asp:BoundField DataField="treatmentCost" HeaderText="Treatment Cost" SortExpression="treatmentCost"></asp:BoundField>
                                        <asp:BoundField DataField="medicines" HeaderText="Medicines" SortExpression="medicines"></asp:BoundField>
                                        <asp:BoundField DataField="medicinesQty" HeaderText="Medicines Quantity" SortExpression="medicinesQty"></asp:BoundField>
                                        
                                    </Columns>
                               </asp:GridView>

                                <%--<asp:GridView class="table-striped table-bordered table table-responsive-md" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="Appointment Id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                        <asp:BoundField DataField="userId" HeaderText="User Id" SortExpression="userId"></asp:BoundField>
                                        <asp:BoundField DataField="fullName" HeaderText="Full Name" SortExpression="fullName"></asp:BoundField>
                                        <asp:BoundField DataField="treatment" HeaderText="Treatment" SortExpression="treatment"></asp:BoundField>
                                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" DataFormatString="{0:d}"></asp:BoundField>
                                        <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" DataFormatString="{0:t}"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>--%>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>


</asp:Content>
