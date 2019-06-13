<?php
    session_start();
    $bien_bao_mat="co";
    include("../connect.php");   
    include("chucnang/quantri2/xacdinhdangnhap.php");
	include("chucnang/quantri2/function.php");
if(isset($xac_dinh_dang_nhap))
{
    if($xac_dinh_dang_nhap=="co")
   {
         include("chucnang/quantri2/xulypostget.php");
    }    
}
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Quản trị</title>
		<script src='phanbotro/tinymce/js/tinymce/tinymce.min.js'></script>
		<link href="giaodien.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <?php 
            if(!isset($xac_dinh_dang_nhap))
            {
                include("chucnang/quantri2/dangnhap.php");
            }
            else 
            {
                if($xac_dinh_dang_nhap=="co")
                {
                    include("chucnang/quantri2/trangchu.php");
                }
            }
        ?>
    </body>
</html>