<?php

require "login/dbconf.php";
$dbconn = mysqli_connect( $host, $username, $password, $db_name);

function clean($str){
    global $dbconn;
    $str = trim($str);
    $str = stripslashes($str);
    $str = htmlentities($str, ENT_QUOTES);
    $str = mysqli_real_escape_string($dbconn, $str);
    return $str;
}

if (isset ( $_GET['user'])){
    $thisUser = clean($_GET['user']);
} else {
    $thisUser = 'admin';
}

if (isset ($_POST['action'])){
    $content = mysqli_real_escape_string($dbconn, $_POST['content']);
    $sql1 = "UPDATE `members` SET `content`='".$content."' WHERE `username`='".$thisUser."'";
    $query1 = mysqli_query( $dbconn, $sql1);
}

?>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>KEditor - Kademi Content Editor</title>
        <link rel="stylesheet" type="text/css" href="plugins/bootstrap-3.4.1/css/bootstrap.min.css" data-type="keditor-style" />
        <link rel="stylesheet" type="text/css" href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" data-type="keditor-style" />
        <!-- Start of KEditor styles -->
        <link rel="stylesheet" type="text/css" href="dist/css/keditor.css" data-type="keditor-style" />
        <link rel="stylesheet" type="text/css" href="dist/css/keditor-components.css" data-type="keditor-style" />
        <!-- End of KEditor styles -->
        <link rel="stylesheet" type="text/css" href="plugins/code-prettify/src/prettify.css" />
        <link rel="stylesheet" type="text/css" href="css/examples.css" />
    </head>
    
    <body>

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Technical Test</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="login.php" id="save">Login</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login/signup.php" >Sign Up</a></li>
            </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
        </nav>
    
        <div data-keditor="html">
            <div class="container">

            <?php
            
                $sql2 = "SELECT `content` FROM `members` WHERE `username`='".$thisUser."'";
                $query2 = mysqli_query( $dbconn, $sql2);
                $row = mysqli_fetch_assoc($query2);

                echo $row['content'];
            
            ?>

            </div>
        </div>

        
        <script type="text/javascript" src="plugins/jquery-1.11.3/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="plugins/bootstrap-3.4.1/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="plugins/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
        <script type="text/javascript" src="plugins/ckeditor-4.11.4/ckeditor.js"></script>
        <script type="text/javascript" src="plugins/formBuilder-2.5.3/form-builder.min.js"></script>
        <script type="text/javascript" src="plugins/formBuilder-2.5.3/form-render.min.js"></script>
        <!-- Start of KEditor scripts -->
        <script type="text/javascript" src="dist/js/keditor.js"></script>
        <script type="text/javascript" src="dist/js/keditor-components.js"></script>
        <!-- End of KEditor scripts -->
        <script type="text/javascript" src="plugins/code-prettify/src/prettify.js"></script>
        <script type="text/javascript" src="plugins/js-beautify-1.7.5/js/lib/beautify.js"></script>
        <script type="text/javascript" src="plugins/js-beautify-1.7.5/js/lib/beautify-html.js"></script>
        <script type="text/javascript" src="js/examples.js"></script>
        <script type="text/javascript" data-keditor="script">
            $(function () {
                // $('#content-area').keditor();
                // $("#save").click(function(){

                //     $.ajax({
                //     type: "post",
                //     data: { action: "send-content", content: $("#content-area").keditor("getContent") },
                //     success: function (data) {
                //         //console.log(data);
                //         alert("saved");
                //     },
                //     error: function (data) {
                //         //console.log(data);
                //     },
                //     });

                //     //console.log($('#content-area').keditor('getContent'));
                // });

            });
        </script>
    </body>
</html>
