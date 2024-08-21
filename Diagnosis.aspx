<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Diagnosis.aspx.cs" Inherits="HMSW.Diagnosis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .card{
            box-shadow: 4px 4px 4px 4px grey;
        }

        .form-control{
            box-shadow: 2px 2px grey;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <section class="breadcrumbs-section">
    <div class="container p-1">
      <div class="row">
        <div class="col-12">
          <%--<h2>About Us</h2>--%>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Homepage.aspx">Home</a></li>
            <li class="breadcrumb-item active">Diagnosis</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

    <br />
    <div class="container my-1">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Diagnosis</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img src="images/diagnosis.png"  width="100"/>
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
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                              <asp:ListItem Text="Patient Id" Value="-1"></asp:ListItem>

                                        </asp:DropDownList>
                                        <%--<asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Patient ID"></asp:TextBox>--%>
                                    </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Select Patient Id !" InitialValue="-1" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>

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
                                 <div class="form-group">
                                      <div class="input-group">
                                <%--<label>Treatment</label>--%>
                                     <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Symptoms"></asp:TextBox>
                                       </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Symptoms !" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                                  </div>
                            </div>

                             <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Diagnosis"></asp:TextBox>
                                    </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Diagnosis !" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                        </div>
                        
                          <div class="row">
                            <div class="col-md">
                               <%--<label>Date</label>--%>
                                  <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Medicines"></asp:TextBox>
                                  </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Medicines !" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                             <%--<div class="col-md-6">
                                <label>Time</label>
                                  <div class="form-group my-2">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Medicine Quantity" TextMode="Number"></asp:TextBox>
                                  </div>
                            </div>--%>
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

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md">
                                <center>
                                        <h4>Diagnosis</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <%--<asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:HMSWDBConnectionString3 %>" SelectCommand="SELECT * FROM [prescription]" ID="ctl02"></asp:SqlDataSource>--%>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSWDBConnectionString4 %>" SelectCommand="SELECT * FROM [diagnosis]"></asp:SqlDataSource>
                            <div class="table-responsive">
                                <div class="table-ap">
                                    <asp:GridView class="table-striped table-bordered table table-responsive-md" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                        <Columns>
                                        <asp:BoundField DataField="id" HeaderText="Diagnosis Id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                        <asp:BoundField DataField="patientId" HeaderText="Patient Id" SortExpression="patientId"></asp:BoundField>
                                        <asp:BoundField DataField="patientName" HeaderText="Patient Name" SortExpression="patientName"></asp:BoundField>
                                        <asp:BoundField DataField="symptoms" HeaderText="Symptoms" SortExpression="symptoms"></asp:BoundField>
                                        <asp:BoundField DataField="diagnosis" HeaderText="Diagnosis" SortExpression="diagnosis"></asp:BoundField>
                                        <asp:BoundField DataField="medicines" HeaderText="Medicines" SortExpression="medicines"></asp:BoundField>
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
