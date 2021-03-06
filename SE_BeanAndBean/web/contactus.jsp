<%-- 
    Document   : contactus
    Created on : 02 24, 22, 7:10:28 PM
    Author     : Marylaine Lumacad
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Contact Us | Bean & Bean</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="shortcut icon" type="image/png" href="Images/logo-black.png"/>
        <link rel="stylesheet" href="CSS/contactus.css?<?php echo time(); ?>">
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
            
        User u = (User) session.getAttribute("user");
        if (u != null) {
            if(u.getRole().equalsIgnoreCase("admin")){
                response.sendRedirect("admin.jsp");
                return;
            }
        }
        %>
    </head>
    <body class="d-flex flex-column min-vh-100" style="background-image: url('Images/newBG.png');">
        <!-- HEADER -->
        <%@include file="header.jsp" %>

        <div class="container">
            <main>
                <div class="row g-5" style="margin-top: 50px;">
                    <div class="col-md-6 col-lg-6" style="margin-top: 75px;">
                        <h2>GET IN TOUCH!</h2>
                        <hr class="my-4">
                        <form method="post" action="Email">
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Name</label>
                                <input type="text" name="name" class="form-control" id="name" placeholder="Your name">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                                <input type="email" name="email" class="form-control" id="exampleFormControlInput1" placeholder="Your email">
                            </div>
                            <div class="mb-3">
                                <label for="message" class="form-label">Message</label>
                                <textarea name="message" class="form-control" id="message" rows="3" placeholder="Your message"></textarea>
                            </div>
                            <button class=" btn btn-outline-secondary btn-lg" type="submit">Send</button>
                        </form>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.8583146067535!2d121.06152661415166!3d14.55009378221479!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c88eeab5cd07%3A0x66ba5671ce7dcf72!2s11%20J.P.%20Rizal%20Ext%2C%20Makati%2C%201217%20Metro%20Manila!5e0!3m2!1sen!2sph!4v1645670681559!5m2!1sen!2sph" width="550" height="450" style="border:0; margin-top: 50px;" allowfullscreen="" loading="lazy"></iframe>
                    </div>
                </div>
            </main>
            <div class="row align-items-center" style="text-align: center; margin-top: 25px;">
                <hr class="my-4">
                <div class="col">
                    <h5 class="justify-content-between align-items-center"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                        <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
                        </svg> Email</h5>
                    <p>beanandbean.business@gmail.com</p></li>
                </div>
                <div class="col">
                    <h5 class="justify-content-between align-items-center"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
                        <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                        </svg> Phone</h5>
                    <p>0995 968 9316</p></li>
                </div>
                <div class="col">
                    <h5 class="justify-content-between align-items-center"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                        <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                        <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                        </svg> Address</h5>
                    <p>11 J.P. Rizal Ext., Comembo, Makati, Philippines</p></li>  
                </div>
            </div>  
        </div>
        <br>
        <!-- Footer -->
        <%@include file="footer.jsp" %>
        <!-- Footer -->
    </body>
</html>
