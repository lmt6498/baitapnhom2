<?php 
		session_start();
    include("connect.php");
	include("chucnang/ham/function.php");
	if(isset($_POST['thong_tin_khach_hang']))
{
    include("chucnang/giohang/thuchienmuahang.php");
}
if(isset($_POST['cap_nhat_gio_hang']))
{
    include("chucnang/giohang/capnhatgiohang.php");
    trang_truoc();
}
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Web bán hàng</title>
		<link href="dd.css" type="text/css" rel="stylesheet">
    </head>
    <body>
		<center>
       <table width="990px">
    <tr>
        <td colspan="3"><?php include("chucnang/banner/banner.php"); ?></td>
    </tr>
    <tr>
        <td colspan="3">
			<?php 
    include("chucnang/menungang/menu_ngang.php");
?>
		</td>
    </tr>
    <tr>
        <td width="170px" valign="top">
			<?php 
    include("chucnang/menudoc/menu_doc.php");
	include("chucnang/sanpham/spmoi.php");
	include("chucnang/quangcao/trai.php");
?>
		</td>
        <td width="650px">
			<?php 
    include("chucnang/dieuhuong.php");
			?>
		</td>
        <td width="170px"><?php 
    include("chucnang/timkiem/vungtimkiem.php");
	include("chucnang/giohang/vunggiohang.php");
	include("chucnang/sanpham/noibat.php");
	include("chucnang/quangcao/phai.php");
?></td>
    </tr>
    <tr>
        <td colspan="3"><?php include("chucnang/footer/footer.php"); ?></td>
    </tr>
</table>
		</center>
    </body>
</html>