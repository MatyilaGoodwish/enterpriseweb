<%@ Page Title="Login to Enterprise websites" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Enterprise.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
         var uiConfig = {
             signInSuccessUrl: 'dashboard.aspx',
             signInOptions: [
                 firebase.auth.GoogleAuthProvider.PROVIDER_ID,
             ],
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
                 <h1 class="display-4 text-center text-dark">Workplace SignIn</h1>
                 <div class="my-4">
                     <p>
                            Login using your Gmail Account to track your application status 
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
