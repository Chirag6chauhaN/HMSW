<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OnlinePayment.aspx.cs" Inherits="HMSW.OnlinePayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .container{
            padding-left: 20%;
            padding-right:20%;
        }

        #paytm{
            height: 50px;
        }

         .card{
            box-shadow: 4px 4px 4px 2px grey;
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
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Homepage.aspx">Home</a></li>
            <li class="breadcrumb-item active">OnlinePayment</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
    <br />

    <div class="container my-3">
        <div class="row">
            <div class="col-md">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Payment Method</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="accordion">
                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <h2 class="my-2">
                                    <button id="paytm" class="btn btn-light collapsed rounded-3 border-bottom-custom w-100 form-control" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        <div class="d-flex align-items-center justify-content-between row">

                                            <%--<div class="col-md-6">
                                                <h6>Paytm</h6>
                                            </div>--%>
                                            <%--<span class="text-md-start">Paytm</span>--%>
                                            <%--<div class="text-md-end">
                                                <%--<img src="https://i.imgur.com/7kQEsHU.png" width="30">
                                                
                                            </div>--%>
                                            <span class="text-md-start"><img src="images/paytm.png" width="50"/></span>
                                        </div>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseTwo" class="collapse row" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                <div class="card-body col-md">
                                    <input type="text" class="form-control w-100" placeholder="Paytm Number">
                                </div>
                            </div>
                        </div>

                        <br />
                         <div class="card mb-2">
                            <div class="card-header p-0">
                                <h2 class="mb-0">
                                    <button class="btn btn-light collapsed btn-block text-left rounded-2 w-100" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <div class="d-flex align-items-center justify-content-between">

                                            <span>Credit card</span>
                                            <div class="icons">
                                                <img src="https://i.imgur.com/2ISgYja.png" width="30">
                                                <img src="https://i.imgur.com/W1vtnOV.png" width="30">
                                                <img src="https://i.imgur.com/35tC99g.png" width="30">
                                                <img src="https://i.imgur.com/2ISgYja.png" width="30">
                                            </div>

                                        </div>
                                    </button>
                                </h2>
                            </div>

                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body payment-card-body">

                                    <%--<span class="font-weight-normal card-text">Card Number</span>--%>
                                    <div class="input">

                                        <%--<i class="fa fa-credit-card"></i>--%>
                                        <input type="number" class="form-control my-2" placeholder="Card Number : 0000 0000 0000 0000">
                                    </div>

                                    <div class="row mt-3 mb-3">

                                        <div class="col-md-6">

                                            <%--<span class="font-weight-normal card-text">Expiry Date</span>--%>
                                            <div class="input">

                                                <%--<i class="fa fa-calendar"></i>--%>
                                                <input type="number" class="form-control my-2" placeholder="Expiry Date : MM/YY">
                                            </div>

                                        </div>


                                        <div class="col-md-6">

                                            <%--<span class="font-weight-normal card-text">CVC/CVV</span>--%>
                                            <div class="input">

                                                <%--<i class="fa fa-lock"></i>--%>
                                                <input type="number" class="form-control my-2" placeholder="CVC/CVV : 000">
                                            </div>

                                        </div>


                                    </div>

                                    <div class="row">
                                        <div class="col-md">
                                            <div class="input">

                                        <%--<i class="fa fa-credit-card"></i>--%>
                                        <input type="number" class="form-control my-2" placeholder="Amount">
                                    </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md">
                                            <asp:Button runat="server" Text="Pay Now" class="btn w-100 btn-warning my-3"/>
                                        </div>
                                    </div>

                                    <span class="text-muted certificate-text"><i class="fa fa-lock"></i>Your transaction is secured with ssl certificate</span>

                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

</asp:Content>
