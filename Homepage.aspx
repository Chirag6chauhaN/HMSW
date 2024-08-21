<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="HMSW.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="images/banner.png" class="img-fluid" width="1800"/>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>Our Services</h2>
                    <p><b>Our 3 Primary Services</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img src="images/Appointment.png"  width="150"/>
                    <h4>Book Appointment</h4>
                    <p class="text-justify">Treatment at Anjaneya Hospital is a truly human experience. You're cared for as a person first.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <img src="images/prescription.png"  width="150"/>
                    <h4>View Prescription</h4>
                    <p class="text-justify">Your doctor writes an order in your medical record for your medicine.Staff in the hospital pharmacy reads and fills the prescription.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img src="images/customer-service.png" width="150"/>
                    <%--<img src="images/online-doctor.png"  width="150"/>--%>
                    <h4>24 x 7 Open</h4>
                    <p class="text-justify">Anjaneya Hospital has the best emergency services with expert doctors 24/7 to attend to any health issue you are facing.</p>
                    </center>
                </div>

            </div>



        </div>
    </section>

     <section>
         <img src="images/banner2.png" class="img-fluid" width="1800"/>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>Our Process</h2>
                    <p><b>Our 3 Simple Process</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img src="images/sign-up.png"  width="150"/>
                    <h4>Register</h4>
                    <p class="text-justify">The registration process is used by patients to register medical history through providing their personal information.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <%--<img src="images/online-payment.png"  width="150"/>--%>
                        <img src="images/insignia.png" width="150"/>
                    <h4>15 Years Experience</h4>
                    <p class="text-justify">Seasoned doctor with a demonstrated record of accomplishments in skilled patient evaluation, diagnostics and treatment planning to assist patients with controlling symptoms, improving health.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <img src="images/dashboard.png"  width="150"/>
                    <h4>Dashboard</h4>
                    <p class="text-justify">The dashboard proved its worth by helping the health system meet its goal of having zero events of preventable harm.</p>
                    </center>
                </div>

            </div>



        </div>
    </section>

</asp:Content>
