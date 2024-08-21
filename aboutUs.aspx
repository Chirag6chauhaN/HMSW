<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutUs.aspx.cs" Inherits="HMSW.aboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .at{
            background-color:#dcdde1;
            color:black;
        }

        .abfooter{
            background-color:#1B1464;
            color:white;
        }

       
    </style>

    <%--<section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2>About Us</h2>
                </div>
            </div>
        </div>
    </section>--%>
    <section class="breadcrumbs-section">
    <div class="container p-1">
      <div class="row">
        <div class="col-12">
          <h2>About Us</h2>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Homepage.aspx">Home</a></li>
            <li class="breadcrumb-item active">About Us</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

            <br />

    <section class="at pt-4 pb-4">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-5">
                    <img src="images/medical-team.png" width="250"/>
                    <%--<img src="images/hospital.jpg" width="600"/>--%>
                </div>

                <div class="col-md-7">
                     <h3>One of the Top</h3>
                    <h4>State Hospitals</h4>
                    <h5>Proudly ranked among the nation's best in multiple adult specialties.</h5>
                </div>

            </div>
        </div>
    </section>


     <section class="p-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md text-center">
                    <p class="fs-5 lh-lg">Universal Health Services (UHS), one of the nation’s largest and most respected providers of hospital and healthcare services, has 400+ acute care hospitals, behavioral health facilities and ambulatory centers across the U.S., Puerto Rico and the U.K. As we continue to grow, we stay focused on making health a positive and local experience.</p>
                </div>
            </div>
        </div>
    </section>

    <%--our staff section--%>
    <section class="pt-3 pb-4">
      <div class="container">
          <div class="row mt-4">
            <div class="col text-center">
              <h3>
                Our awesome team
              </h3>
            </div>
          </div>
          <hr>
          <div class="row">
            <div class="col-md-4 text-center">
                <img class="img-fluid qualities-img p-4" src="images/team/doctor.png" width="220"/>
              <h5>
                Doctor (MD)
              </h5>
              <p>
                <i>- Jadav Chetna</i>
              </p>
    
            </div>
            <div class="col-md-4 text-center">
                <img class="img-fluid qualities-img p-4" src="images/team/doctor2.png" width="220"/>
              <h5>
                Pharmacists
              </h5>
              <p>
                <i>- Chauhan Krishna</i>
              </p>
    
            </div>
            <div class="col-md-4 text-center">
                <img class="img-fluid qualities-img p-4" src="images/team/doctor3.png" width="220"/>
                <h5>
                  Doctor (MBBS, MS)
                </h5>
                <p>
                  <i>- Chauhan Deep</i>
                </p>
            </div>
          </div>
    
          <div class="row mb-md-3">
            <div class="col-md-4 text-center">
                <img class="img-fluid qualities-img p-4" src="images/team/doctor5.png" width="220"/>
                <h5>
                  Medical Director
                </h5>
                <p>
                  <i>- Abhishek Sali</i>
                </p>
            </div>
            <div class="col-md-4 text-center">
                <img class="img-fluid qualities-img p-4" src="images/team/nurse.png" width="220"/>
                <h5>
                  Nurse
                </h5>
                <p>
                  <i>- Neha Agrawal</i>
                </p>
            </div>
            <div class="col-md-4 text-center">
                <img class="img-fluid qualities-img p-4" src="images/team/surgeon.png" width="220"/>
                <h5>
                  Surgeon
                </h5>
                <p>
                  <i>- Bhavik Vartak</i>
                </p>
            </div>
          </div>
          </div>
  </section>

    <footer class="bg-dark text-white pt-5 pb-4">
        
        <div class="container text-center text-md-start">

            <div class="row text-center text-md-start">

                <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Anjaneya Hospital</h5>
                    <p>Anjaneya Hospital providing patient treatment with specialized health science and auxiliary healthcare staff and medical equipment.</p>
                </div>

                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">

                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Services</h5>
                    <p>
                        <a href="Homepage.aspx" class="text-white" style="text-decoration: none;">24 x 7 Emergency</a>
                    </p>
                    <p>
                        <a href="userlogin.aspx" class="text-white" style="text-decoration: none;">Book Appointment</a>
                    </p>
                    <p>
                        <a href="userlogin.aspx" class="text-white" style="text-decoration: none;">View Prescription</a>
                    </p>
                    <p>
                        <a href="Homepage.aspx" class="text-white" style="text-decoration: none;">Best Care</a>
                    </p>

                </div>

                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">

                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Quick Links</h5>
                    <p>
                        <a href="Homepage.aspx" class="text-white" style="text-decoration: none;">Home</a>
                    </p>
                    <p>
                        <a href="aboutUs.aspx" class="text-white" style="text-decoration: none;">About Us</a>
                    </p>
                    <p>
                        <a href="userlogin.aspx" class="text-white" style="text-decoration: none;">User Login</a>
                    </p>
                    <p>
                        <a href="Dashboard.aspx" class="text-white" style="text-decoration: none;">Dashboard</a>
                    </p>

                </div>

                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">

                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Contact</h5>
                    <p>
                        <i class="fas fa-home mr-3"></i>&nbsp;&nbsp;&nbsp;2nd Floor, Above Bank of Baroda, Nr. Umiya Mata Temple, Purshottam Nagar Circle, Bopal,
Ahmedabad.
                    </p>
                    <p>
                        <i class="fas fa-envelope mr-3"></i>&nbsp;&nbsp;&nbsp;shivamhospital2017@gmail.com
                    </p>
                    <p>
                        <i class="fas fa-phone mr-3"></i>&nbsp;&nbsp;&nbsp;+91 8140286007
                    </p>
                    <p>
                        <i class="fas mr-3 fa-user-md"></i>&nbsp;&nbsp;&nbsp;Dr. Hariom Panjabi
                    </p>

                </div>

            </div>

        </div>

    </footer>

    
  


</asp:Content>