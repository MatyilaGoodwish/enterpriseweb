<%@ Page Title="Why do you think we should select you for the program" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="step-4.aspx.cs" Inherits="Enterprise.step_4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Tell us why you should be in the program next year"/>
    <script>
        const xfirebase = firebase

        xfirebase.auth().onAuthStateChanged(function (user) {
            if (!user) {
                location.replace("step-1.aspx")
            }

        })

     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-5">
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
            <div class="col-md-6 text-center">
                 <h1 class="display-4  text-dark">Finalize Application</h1>
                <h2>It's to time complete your application <span class="clientName"></span></h2>
                 <div class="my-3">
                          <iframe width="100%" height="480" src="https://www.youtube.com/embed/1mHjMNZZvFo?rel=0&version=3&autoplay=0&controls=1&&showinfo=0&loop=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="mv-left-2 rounded border shadow"></iframe>
    
                
                          <p> 
                              <a href="dashboard.aspx" class="btn btn-success btn-lg btn-block">Confirm</a>
                          </p>
                   
                     
                     <h4>Quick links to help you prepare for interview</h4>
                     <p>Here are a quick tips on how to prepare for your interview with us some topics,
                         we cover these topics on our interviews, watch the video to get more inside knowledge on what works best,
                         helping recruiters understand your CV keeping it very simple helps you with high visibility,
                         hightlight what you are good at <a target="_blank" href="https://mystudentvoices.com/importance-of-a-cover-letter-5c0dacbfea11" >Importance of a Cover Letter that you should know before applying</a>
                     </p>

                     <h4>What is a bad CV?</h4>
                     <p>
                         <span class="clientName"></span> do not send us a bad CV, not sure what that means? <a href="https://za.topcv.com/career-advice/ignore-bad-cv-advice" target="_blank">Bad CV advice you should avoid entirely</a>, we stress the need of sending good quality, readable and clear CV when applying for any position within our company,
                         not following the guidelines for a clean CV will get you rejected all the time, 
                         you want to improve your CV overtime as your skills will determine how your CV in particular should look like,
                         why waste time with a template when you can try a professional near you, have others read your CV to see if it makes sense before sending it to us.
                     </p>
                     <ul>
                         <li class="list-group-item"><a href="https://www.monster.co.uk/career-advice/article/cv-tips" target="_blank">CV Tips that work</a> learn how to improve your CV in the next 60 to 90 days before sending applications to employers</li>
                     </ul>

                     <iframe width="100%" height="501" src="https://www.youtube.com/embed/kBMJlFSRKb4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                 
                     
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


    <script>
        document.addEventListener('DOMContentLoaded', function () {
           var updateUserContext =  firebase.auth().onAuthStateChanged(function (user) {
                if (user) {
                    var client_name = document.querySelectorAll('.clientName')
                    for (name in client_name) {
                        client_name[name].innerHTML = user.displayName
                    }
                }
            })
        })
    </script>
</asp:Content>
