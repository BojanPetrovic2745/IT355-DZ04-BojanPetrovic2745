<%@page import="paket.StockPriceGenerator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Stock Quote</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/foundation-sites@6.5.1/dist/css/foundation.min.css" integrity="sha256-1mcRjtAxlSjp6XJBgrBeeCORfBp/ppyX4tsvpQVCcpA= sha384-b5S5X654rX3Wo6z5/hnQ4GBmKuIJKMPwrJXn52ypjztlnDK2w9+9hSMBz/asy9Gw sha512-M1VveR2JGzpgWHb0elGqPTltHK3xbvu3Brgjfg4cg5ZNtyyApxw/45yHYsZ/rCVbfoO5MSZxB241wWq642jLtA==" crossorigin="anonymous">

        <!-- Compressed JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.0.1/js/vendor/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/foundation-sites@6.5.1/dist/js/foundation.min.js" integrity="sha256-WUKHnLrIrx8dew//IpSEmPN/NT3DGAEmIePQYIEJLLs= sha384-53StQWuVbn6figscdDC3xV00aYCPEz3srBdV/QGSXw3f19og3Tq2wTRe0vJqRTEO sha512-X9O+2f1ty1rzBJOC8AXBnuNUdyJg0m8xMKmbt9I3Vu/UOWmSg5zG+dtnje4wAZrKtkopz/PEDClHZ1LXx5IeOw==" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="styles/styles.css"/>
    </head>
    <body>
        <div class="grid-container">
            <div class="grid-x grid-padding-x">
                <div class="medium-6 cell">
                    <label class="label">
                        <jsp:useBean id="stock" class="paket.Stock" />
                        <jsp:setProperty property="*" name="stock" />
                        <%!StockPriceGenerator stockServer = new StockPriceGenerator();%>



                        Simbol: <%=stock.getSimbol()%> <br>

                        Cena: <%
                            String site = new String("/IT355-DZ04-02-BojanPetrovic2745/");
                            String cena = stockServer.getCena(stock.getSimbol(), stock.getKolicina());

                            if (cena.equals("Simbol nije korektan")) {
                                stockServer.getCena(stock.getSimbol(), stock.getKolicina());

                                response.setStatus(response.SC_MOVED_TEMPORARILY);
                                response.setHeader("Location", site);

                            } else {
                                out.print(stockServer.getCena(stock.getSimbol(),
                                        stock.getKolicina()));

                            }

                        %>
                        <br/>
                        Kolicina: <%=stock.getKolicina()%> <br/>
                        Cena jednog artikla je: <br/>
                        <% stock.setKolicina(1); 
                            out.print(stockServer.getCena(stock.getSimbol(),
                                    stock.getKolicina()));

                        %>


                    </label>
                </div>
            </div>
        </div>

    </body>


</html>