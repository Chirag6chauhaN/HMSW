<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HospitalSchedule.aspx.cs" Inherits="HMSW.HospitalSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        
       
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <h4>Select Time Slotes</h4>
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
                            <div class="col">
                                <center>
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control my-2">
                                        <asp:ListItem Text="Select Slote" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="Slote 1" Value="Slote 1"></asp:ListItem>
                                    <asp:ListItem Text="Slote 2" Value="Slote 2"></asp:ListItem>
                                    <asp:ListItem Text="Slote 3" Value="Slote 3"></asp:ListItem>
                                    </asp:DropDownList>
                                </center>
                            </div>
                        </div>

                        

                    </div>
                </div>
            </div>
            
            <div class="col-md-9">
                <div class="card">
                    <div class="card-body">
                <div class="row">
                            <div class="col-md">
                                
                                <asp:Panel ID="Panel1" runat="server" CssClass="form-group my-2">

                                </asp:Panel>  
                               
                            </div>
                        </div>
                    </div>
                    </div>

            </div>
        </div>
    </div>

</asp:Content>
