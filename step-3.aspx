<%@ Page Title="Your background knowledge about us" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="step-3.aspx.cs" Inherits="Enterprise.step_3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Learning about us will help you stand better chances of being appointed"/>

     <script>
         'use strict'
         let ph 
         firebase.auth().onAuthStateChanged(function (user) {
             if (!user) {
                 location.replace('step-1.aspx')
             } else {
                 ph = user.uid
             }
         })

         function assessment(answers) {
             let pr = parseInt(answers.pricing.value)
             let sr = parseInt(answers.service.value)

             let grad = pr + sr
             if (grad < 3) {
                 swal('Your answers','You did not get the answers right try again or watch the video', 'error')
             }
             else {
                 let storebucket = firebase.firestore()
                 storebucket.collection('candidates_list')
                     .add({
                         "assessments": grad < 3 ? "failed" : "passed"
                     })
                     .then(() => {
                         swal('Your answers', 'Congratulations lets continue', 'success')
                         setTimeout(() => {
                             location.replace('step-4.aspx')
                         }, 5000)
                         
                     })
                     .catch((error) => {
                         console.log(error)
                     })
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
                 <h1 class="display-4 text-dark">Quick Assessment</h1>
                <h5>Answering these should be very easy for you</h5>
                 <div class="my-4">
                        <iframe width="100%" height="350"  class="border rounded shadow-lg" src="https://www.youtube.com/embed/nUsaztzPD4k?rel=0&version=3&autoplay=0&controls=1&&showinfo=0&loop=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      
                      <form action="javascript:assessment(this.customer)" name="customer" method="post">
                         

                          <h4 class="my-2">Are you currently studying?</h4>
                          <p>
                               <input type="radio" name="studying" value="Yes" required/> YES
                                <input type="radio" name="studying" value="No" required /> NO
                          </p>
                          <h4>What services do we offer to customers?</h4>
                          
                          <p>
<select name="service" class="form-control" required>
                              <option value="0">Website development</option>
                              <option value="1">Business development</option>
                              <option value="2">SEO, Content & Digital Marketing</option>
                          </select>
                          </p>
                        

                         <h4>What is the price for the large service plan on our website?</h4>
                          <p>
                                <select name="pricing" class="form-control" required>
                              <option value="0">R3000</option>
                              <option value="1">R9000</option>
                              <option value="2">R14000</option>
                          </select>
                          </p>
                        

                           
                          <p>
                              <input type="submit" name="name" value="Submit Answer" class="submit-test btn btn-success btn-lg btn-block" />
                    
                          </p>
                    </form>
                 
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
