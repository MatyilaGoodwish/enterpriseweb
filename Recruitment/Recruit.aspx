<%@ Page Title="eRecruitment Portal" Language="C#" MasterPageFile="~/Recruitment/careerportal.Master" AutoEventWireup="true" CodeBehind="Recruit.aspx.cs" Inherits="Enterprise.Recruitment.recruit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Career center at enterprise websites, apply for work from any of our partners"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#"><b class="logo-text">eRecruit</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a href="Recruit.aspx" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a href="small-business-website.aspx" class="nav-link">Services</a>
                </li>
            </ul>      
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-xs-12">
                <h1>eRecruitment Portal</h1>
                <h2>Making the hiring process easier</h2>
                <p class="lead">
                    Your door to a brighter future.
                </p>
            </div>
             <div class="col-lg-6 col-md-6 col-xs-12">
             </div>
        </div>
    </div>
</asp:Content>
