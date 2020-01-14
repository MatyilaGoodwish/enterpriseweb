<%@ Page Title="Welcome to the workplace programme for 2020" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="step-1.aspx.cs" Inherits="Enterprise.step_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Career development roles to help you get started with no experience needed "/>

    <script type="text/javascript">
        // FirebaseUI config.
        var uiConfig = {
            signInSuccessUrl: 'step-2.aspx',
            signInOptions: [
                firebase.auth.GoogleAuthProvider.PROVIDER_ID,
            ],
            // tosUrl and privacyPolicyUrl accept either url string or a callback
            // function.
            // Terms of service url/callback.
            tosUrl: 'privacy.aspx',
            // Privacy policy url/callback.
            privacyPolicyUrl: function () {
                window.location.assign('privacy.aspx');
            }
        };


    </script>

    <script>
        // Initialize the FirebaseUI Widget using Firebase.
        var ui = new firebaseui.auth.AuthUI(firebase.auth());
        // The start method will wait until the DOM is loaded.
        ui.start('#firebaseui-auth-container', uiConfig);
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <div class="container my-5 ">
        <div class="row">
            <div class="col-md-3">
                               <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle"
     style="display:block; text-align:center;"
     data-ad-layout="in-article"
     data-ad-format="fluid"
    data-full-width-responsive="true"
     data-ad-client="ca-pub-5573581608002514"
     data-ad-slot="9197799560"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
            </div>
            <div class="col-md-6">
                 <h1 class="display-4 text-center text-dark">Workplace Placement 2020</h1>
                <h2>Growing with people and changing lives.</h2>
                 <div class="my-4">
                     <p>
                         Welcome to the workplace programme for 2020 the initiative is to get 2020 total candidates with no experience or prior working experience in the workplace before 08th March 2010.
                     </p>
                      

                      <div id="firebaseui-auth-container"></div>
                 </div>
            </div>
            <div class="col-md-3">
                               <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle"
     style="display:block; text-align:center;"
     data-ad-layout="in-article"
     data-ad-format="fluid"
    data-full-width-responsive="true"
     data-ad-client="ca-pub-5573581608002514"
     data-ad-slot="9197799560"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
            </div>
        </div>
    </div>

    
</asp:Content>
