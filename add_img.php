<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Add img</title>
  </head>
  <body>
    <h3>Add image</h3>
    <form method="POST">
      <input type="url" name="link" id="link" />
      <input type="submit" value="OK" />
    </form>
    <?php
      $con = mysqli_connect('localhost', 'root', '', 'test');
      if(!($con))
        die();
      if(isset($_POST['link'])){
        $cmd = "INSERT INTO images(link) VALUES ('".$_POST['link']."')";
        $query = mysqli_query($con, $cmd);
        if ($query)
          print "<img src='".$_POST['link']."' width='200px'>";
        else
          print "failed";
      }
    ?>
  </body>
</html>
