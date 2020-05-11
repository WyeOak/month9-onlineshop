<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Product type</title>
        <style>
            a{text-decoration: none; color: black}
        </style>
    </head>
    <body>
        <h1 style="" Product type</h1>

        <div class="card-group">
            <#list ProductTypes as a>
                    <div class="card" >
                        <a href="#">
                            <img class="card-img-top" style="width: 100px; height: 100px" src="images/ProductType/${a.icon}" alt="${a.icon}">
                            <div class="card-body">
                                <h5 class="card-title">${a.name}</h5>
                            </div>
                        </a>
                    </div>
            </#list>
        </div>

        ///////////////////////////
        <div class="card-group">
            <#list ProductTypes as card>
            <div class="card">
                <a href="#">
                    <img class="card-img-top" style="width: 100px; height: 100px" src="images/ProductType/${card.icon}" alt="${card.icon}">
                    <div class="card-body">
                        <h5 class="card-title">${card.name}</h5>
                    </div>
                </a>
            </div>
            </#list>

        </div>


    </body>
</html>
