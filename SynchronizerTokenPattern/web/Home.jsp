<%-- 
    Document   : Home
    Created on : Sep 6, 2018, 10:24:06 PM
    Author     : yapilk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $.ajax({
                    type: "GET",
                    url: "http://localhost:8080/SynchronizerTokenPattern/CSRFTokenController",
                    dataType: "json",
                    cache: false,
                    crossDomain: true,
                    processData: true,

                    success: function (data) {
                        $("#csrfToken").val(data['csrf']);
                    },

                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert("Error");
                    }
                });
            });
        </script>

        <style>
            body, h1{font-family: "Montserrat", sans-serif}
            #main {margin-left: 120px}
        </style>
    </head>
    <body class="w3-black">
        <form method="POST" action="HomeController">
            <input type="hidden" id="csrfToken" name="csrfToken"/>

            <div class="w3-padding-large" id="main">

                <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
                    <h1 class="w3-jumbo"><span class="w3-hide-small">Catherine</span> Palace</h1>
                </header>

                <div class="w3-content w3-justify w3-text-grey w3-padding-64" id="about">
                    <img src="Catherine_Palace.jpg" width="1000" height="600">
                    <p>The stunning structure that stands in Tsarskoye Selo, also known as Pushkin, today isn’t the original Catherine Palace that was built in 1717 by Catherine of Russia. A later empress had that summer residence of Russian tsars demolished in 1752 and replaced with a gold-plated stunner. Completed four years later, the new Catherine Palace featured 220 pounds of gold covering the exterior and statues on the roof, making it a shining example of Rococo architecture. Catherine the Great later ruled from amidst this opulence. The Germans destroyed Catherine Palace in World War II, but enough records existed to restore it to its former glory.
                    </p>

                    <input type="submit" class="w3-button w3-light-grey w3-padding-large w3-section" value="Read More"/>
                </div>
            </div>

        </form>

    </body>
</html>
