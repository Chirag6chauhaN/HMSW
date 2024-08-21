<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="HMSW.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/customstylesheet.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE>


    <style>

        .card{
            box-shadow: 4px 4px 4px 4px grey;
        }

        .val-box{
            display: flex;
            justify-content: flex-start;
            align-items: center;
            color: white;
        }

        .val-box i{
            font-size: 25px;
            width:60px;
            height: 60px;
            line-height: 60px;
            border-radius: 50%;
            text-align: center;
            margin-right: 15px;
        }

         .st{
            background-color: chartreuse;
        }

         .nd{
             background-color: red;
         }

         .rd{
             background-color: indigo;
         }

         .th{
             background-color: goldenrod;
         }

        .val-box h3{
            color: black;
        }

        .val-box span{
            font-size: 15px;
            color: darkslategrey;
        }

        /*.charts{
            display: grid;
            grid-template-columns: 2fr 1fr;
            grid-gap: 20px;
            width: 100%;
            padding: 20px;
            padding-top: 0;
        }*/

        .chart{
            background: #fff;
            
            border-radius: 10px;
            box-shadow:  4px 4px 4px 4px grey;
            width: 96%;
            margin-bottom: 15px;
            margin-left:30px;
           
            
        }

        .chart2{
            background: #fff;
             margin-left:2px;
            border-radius: 10px;
            box-shadow:  4px 4px 4px 4px grey;
            width: 95%;
            margin-bottom: 15px;
            
        }

        .chart h2{
            margin-bottom: 15px;
            font-size: 20px;
            color: #666;
            text-align:center;
        }
        
        .chart2 h2{
            margin-bottom: 15px;
            font-size: 20px;
            color: #666;
            text-align:center;
        }

       

    </style>

    <section class="breadcrumbs-section">
    <div class="container p-1">
      <div class="row">
        <div class="col-12">
          <h2>Dashboard</h2>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Homepage.aspx">Home</a></li>
            <li class="breadcrumb-item active">Dashboard</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

    <div class="row m-4">
        <div class="col-sm-6 col-lg-3 p-2">
            <div class="card p-2">
                <div class="card-body val-box">
                    <%--<div class="d-flex">--%>
                        <i class="fas fa-hand-holding-medical st"></i>
                        <div class="ms-3">
                            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
                            <br />
                            <%--<h3>5</h3>--%>
                            <span>Patients</span>
                        </div>
                    <%--</div>--%>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-lg-3 p-2">
            <div class="card p-2">
                <div class="card-body val-box">
                    <%--<div class="d-flex">--%>
                        <i class="fa-sharp fa-solid fa-stethoscope nd"></i>
                        <div class="ms-3">
                            <%--<h3>2</h3>--%>
                            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Font-Bold="True">3</asp:Label>
                            <br />
                            <span>Doctors</span>
                        </div>
                    <%--</div>--%>
                </div>
            </div>
        </div>

         <div class="col-sm-6 col-lg-3 p-2">
            <div class="card p-2">
                <div class="card-body val-box">
                    <%--<div class="d-flex">--%>
                        <i class="fa-solid fa-users rd"></i>
                        <div class="ms-3">
                            <%--<h3>6</h3>--%>
                            <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
                            <br />
                            <span>Registered User</span>
                        </div>
                    <%--</div>--%>
                </div>
            </div>
        </div>

         <div class="col-sm-6 col-lg-3 p-2">
            <div class="card p-2">
                <div class="card-body val-box">
                    <%--<div class="d-flex">--%>
                        <i class="fa-solid fa-calendar-check th"></i>
                        <div class="ms-3">
                            <%--<h3>5</h3>--%>
                            <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
                            <br />
                            <span>Appointment</span>
                        </div>
                    <%--</div>--%>
                </div>
            </div>
        </div>

    </div>

    <%-----charts-----%>
    
    <div class="charts  row">

       
            <div class="col-md-6">
          <div class="chart">
            <h2>Patient Statistic</h2>
            <canvas id="lineChart"></canvas>
          </div>
           </div>
    


    <%--<div class="row">--%>
            <div class="col-md-6">
          <div class="chart2" id="doughnut-chart">
            <h2>Revenue</h2>
            <canvas id="doughnut"></canvas>
          </div>
          </div>
        <%--</div>--%>
        
</div>


    <%-----this is chart.js-----%>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.2.1/dist/chart.umd.min.js"></script>

    <%-----this is chart1 file-----%>
    <script src="Bootstrap/js/chart.js"></script>
    
    <%-----this is chart2 file-----%>
    <script src="Bootstrap/js/chart2.js"></script>


</asp:Content>
