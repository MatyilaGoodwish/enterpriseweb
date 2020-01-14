<%@ Page Title="Careers dashboard for members of enterprise websites" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Enterprise.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Dashboard, Career center for Registered applicants" />

    <script>
        firebase.auth().onAuthStateChanged(function (user) {
            if (!user) {
                location.replace('login.aspx');
            }
        })
        var dashboard = {
            signOut: function userSignOut() {
                firebase.auth().signOut()
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container my-4 card">
        <div class="row card-body">
            <div class="col-lg-3 col-md-4" id="dashboard_menu">
            </div>
            <div class="col-lg-9 col-md-9" id="dashboard_view">
				
				<ul class="nav">
					<li class="nav-item">
						<button class="nav-link btn-primary btn shadow-sm btn-block profile_btn" >Profile</button>
					</li>
				</ul>
				
                <h3><span id="personalizedMessage"></span></h3>
                     <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                    <ins class="adsbygoogle"
                        style="display: block; text-align: center;"
                        data-ad-layout="in-article"
                        data-full-width-responsive="true"
                        data-ad-format="fluid"
                        data-ad-client="ca-pub-5573581608002514"
                        data-ad-slot="9197799560"></ins>
                    <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                <script async src='https://cse.google.com/cse.js?cx=partner-pub-5573581608002514:3257196845'></script>
                <div class="gcse-searchbox-only"></div>
				
			 	<div class="row">
					<div id="contentPlaceholderDashboard"></div>
				</div>
			
            </div>
        </div>
    </div>
	
 
	<article>
		<section>
			<div class="container">
				<p>Update due this weekend between 9:10am (Saturday) to 14:00pm (Sunday)</p>	
			</div>
		</section>
	</article>

    <script type="text/x-handlebars" id="side-menu">
        <div class="card bg-secondary text-center m-auto text-white align-center">
            <div class="card-header">
                Active Account
                    </div>

            <div class="text-center m-auto">
                          <img src="{{user.photoURL}}" alt="{{user.displayName}} user profile photo" class="silos" />
            </div>
            <h4>{{user.displayName}}</h4>
            <p>
                Your application status: <span class="badge badge-info">{{profile.status}}</span> 
            </p>
            <div class="card-body">
                <div>
                    <button class="btn btn-block btn-danger btn-lg" onclick="dashboard.signOut()">Logout</button>
                </div>
            </div>
        </div>
    </script>


    <script>
        document.addEventListener("DOMContentLoaded", function (e) {
            var menuSource = Handlebars.compile(document.getElementById('side-menu').innerHTML)
            firebase.auth().onAuthStateChanged(function (user) {
                if (user) {
                    var menuHtmlCompiled = menuSource({
                        "profile": {
                            "status": "Contacting references"
                        },
						"props": {
							
						},
                        user
                    });
                    document.getElementById("dashboard_menu").innerHTML = menuHtmlCompiled;
                } else {
                    
                }
            })
        })
    </script>
</asp:Content>
