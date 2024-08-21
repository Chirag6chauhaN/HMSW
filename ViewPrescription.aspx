<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewPrescription.aspx.cs" Inherits="HMSW.ViewPrescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .tittle {
            font-family: 'Satisfy';
            display: inline;
            font-weight: 700;
            font-size: 25px;
        }
    </style>

    <script>
        function printPage() {
            window.print();
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="breadcrumbs-section">
        <div class="container p-1">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Homepage.aspx">Home</a></li>
                        <li class="breadcrumb-item active">ViewPrescription</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <asp:Panel ID="Panel1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md">
                <div class="card">
                    <div class="card-header p-4">
                        <center>
                            <h2 class="tittle">Anjaneya Hospital</h2>
                        </center>
                    </div>

                    <div class="card-body my-2">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8">

                                    <p>
                                        <i class="fas fa-home mr-3"></i>&nbsp;&nbsp;&nbsp;2nd Floor, Above Bank of Baroda, Purshottam Nagar Circle, Bopal, Ahmedabad.
                                    </p>
                                    <p>
                                        <i class="fas fa-envelope mr-3"></i>&nbsp;&nbsp;&nbsp;shivamhospital2017@gmail.com
                                    </p>
                                    <p>
                                        <i class="fas fa-phone mr-3"></i>&nbsp;&nbsp;&nbsp;+91 8140286007
                                    </p>
                                </div>

                                <div class="col-md-4">
                                    <p>
                                        <i class="fas mr-3 fa-user-md"></i>&nbsp;&nbsp;&nbsp;[Dr. Hariom Panjabi, MBBS, M.D]
                                    </p>
                                </div>
                            </div>
                            <hr />

                            <div class="row">
                                <div class="col-md-2">

                                </div>
                                <div class="col-md-10">
                                       <div class="my-3">
                                        <span>
                                            <strong>Name :</strong>
                                        </span>
                                        <asp:Label runat="server" Text="Label" ID="Label1"></asp:Label>
                                       </div>

                                    <div class="my-3">
                                        <span>
                                        <strong>Treatment :</strong>
                                    </span>
                                    <asp:Label runat="server" Text="Label" ID="Label2"></asp:Label>
                                    </div>
                                    
                                    <div class="my-3">
                                    <span>
                                        <strong>Treatment Cost :</strong>
                                    </span>
                                    <asp:Label runat="server" Text="Label" ID="Label3"></asp:Label>
                                        </div>

                                    <div class="my-3">
                                     <span>
                                        <strong>Medicines :</strong>
                                    </span>
                                    <asp:Label runat="server" Text="Label" ID="Label4"></asp:Label>
                                        </div>

                                    <div class="my-3">
                                     <span>
                                        <strong>Medicines Quantity :</strong>
                                    </span>
                                    <asp:Label runat="server" Text="Label" ID="Label5"></asp:Label>
                                        </div>
                                   </div>
                                </div>

                            <div class="card-footer">
                                <center>
                                    <strong>24x7 Multi Speciality Care</strong>
                                </center>
                            </div>

                            <%--<div>
                                <center>
                                    <hr />
                                    <span>
                                    <strong>24x7 Multi Speciality Care</strong>
                                    </span>
                                    <hr />
                                </center>
                            </div>--%>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        </asp:Panel>

    <div class="container">
         <div class="row">
            <div class="col-md">
                <div class="form-group py-2">
                    <center>
                        <asp:Button ID="Button2" class="btn btn-secondary my-3 w-25" runat="server" Text="Print" value="Registar" OnClientClick="return printPage();"/>
                        </center>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
