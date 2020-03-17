<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>

        <meta name = "viewport" content = "width = device-width, initial-scale = 1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/foundation-sites@6.5.1/dist/css/foundation.min.css" integrity="sha256-1mcRjtAxlSjp6XJBgrBeeCORfBp/ppyX4tsvpQVCcpA= sha384-b5S5X654rX3Wo6z5/hnQ4GBmKuIJKMPwrJXn52ypjztlnDK2w9+9hSMBz/asy9Gw sha512-M1VveR2JGzpgWHb0elGqPTltHK3xbvu3Brgjfg4cg5ZNtyyApxw/45yHYsZ/rCVbfoO5MSZxB241wWq642jLtA==" crossorigin="anonymous">

        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.0.1/js/vendor/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/foundation-sites@6.5.1/dist/js/foundation.min.js" integrity="sha256-WUKHnLrIrx8dew//IpSEmPN/NT3DGAEmIePQYIEJLLs= sha384-53StQWuVbn6figscdDC3xV00aYCPEz3srBdV/QGSXw3f19og3Tq2wTRe0vJqRTEO sha512-X9O+2f1ty1rzBJOC8AXBnuNUdyJg0m8xMKmbt9I3Vu/UOWmSg5zG+dtnje4wAZrKtkopz/PEDClHZ1LXx5IeOw==" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="styles/styles.css"/>
    </head>
    <body>
        <form class="form" action="formaSaInformacijama.jsp" method="POST">
            <div class="grid-container">
                <div class="grid-x grid-padding-x">
                    <div class="medium-6 cell">
                        <label class="label">
                           IT355-DZ04-BojanPetrovic2745 <br/>
                            Unesite vaše ime: 
                            <input type="text" name="ime" >
                            FIT: 
                            <input type="checkbox" value="FIT" name="fit">
                            FDU:  
                            <input type="checkbox" value="FDU" name="fdu">
                            FM:  
                            <input type="checkbox" value="FM" name="fm">  <br/>
                            <input type="submit" class="button" value="Prosledi">
                           
                            <!-- potrebno je uraditi deploy
                                aplikacije kako bi 
                            radio drugi zadatak sa linka ispod, 
                            a na ovom portu je drugi zadatak kada 
                            se pokrene preko prvog
                            
                            urađen je i clean za oba zadatka
                            
                            -->
                            <a class="button" 
                               href="http://localhost:23306/IT355-DZ04-02-BojanPetrovic2745/" > Zadatak 2 </a>
                        </label>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
