<%@ Page Title="Becoming part of the global hire solution" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="step-2.aspx.cs" Inherits="Enterprise.step_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Global hire solution is sponsoring many graduates with Job Placements"/>
    <script>
        const fb = firebase
        fb.auth().onAuthStateChanged(checkUserState.bind(this))

        function checkUserState(user) {
            if (!user) {
                location.replace('step-1.aspx')
            } else {
                location.replace('step-3.aspx')
            }
        }
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
            <div class="col-md-6">
                 <h1 class="display-4 text-center text-dark">My Contact Information</h1>
                 <div class="my-4 text-center">
                     Verified : <span class="p-1 phone-verified text-white bg-success"></span>
                     <p>
                        Let us know how to contact you when you are selected for the program.
                     </p>
                      
                     <form action="javascript:student(this.learner)" name="learner" method="post">
                         <p>
                             Email address
                              <input type="email" name="email" value="" class="form-control" placeholder="email addresss" required/>
                         </p>
                          <p>
                              First Name
                              <input type="text" name="firstname" value="" class="form-control" placeholder="first name" required/>
                         </p>

                          <p>
                              Last Name
                              <input type="text" name="lastname" value="" class="form-control" placeholder="last name" required/>
                         </p>
                        
                        

                         <input type="submit" name="name" value="Update & Continue" class="btn btn-success btn-lg btn-block" />
                     </form>
                 </div>

                <h4>Accurate Information</h4>
                <p>
                    Ensure your information is accurate when completing any online application,
                    this helps our systems match your fullnames with your qualifications,
                    make sure all the information is correct before sending any CV to us,
                    all CV's should have relevant qualifications, employers only the recent or
                    current old information is not relevant for us hence training is provided,
                    all CV's should not have too much graphics, keep black and white text only
                    if you feel that your CV is fine, you may continue otherwise update it to
                    meet our standards or your application won't even be considered
                </p>

                <h4>Why your CV is ignored?</h4>
                Here are <a href="https://www.inc.com/brian-de-haaff/3-reasons-your-resume-is-being-ignored.html">reasons why your CV may be ignored</a>,
                follow these guides and send it a professional CV to us,
                to help us improve recruitment process by making it faster,
                assist us to hire more people with the right skills,
                clarify your CV improving your chances of getting a job,
                prevent your application from being rejected, when you do get rejected you will also know why so you could have room for improvement

                 <iframe width="100%" height="480" src="https://www.youtube.com/embed/58u6w9wk2Io" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="col-md-3">
                               <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle"
     style="display:block; text-align:center;"
     data-ad-layout="in-article"
    data-full-width-responsive="true"
     data-ad-format="fluid"
     data-ad-client="ca-pub-5573581608002514"
     data-ad-slot="9197799560"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
            </div>
        </div>
    </div>

    <script>
        (function () {
            const pv = document.querySelector(".phone-verified")
            const fbv = firebase.auth()

            
            fbv.onAuthStateChanged((user) => {
                pv.innerHTML = ""
                if (user) {
                    pv.innerHTML =  user.phoneNumber
                }
            })
            
        }())
    </script>

</asp:Content>
