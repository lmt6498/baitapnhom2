<?php 
    $id=$_GET['id'];
    $tv="select id,ten,gia,hinhanh,thuoc_menu from sanpham where thuoc_menu='$id' order by id desc ";
    $tv_1=mysqli_query($conn,$tv);
    while($tv_2=mysqli_fetch_array($tv_1))
    {
        echo $tv_2['ten'];echo "<br>";
        echo $tv_2['gia'];echo "<br>";
        echo $tv_2['hinhanh'];echo "<hr>"; 
    }
?>