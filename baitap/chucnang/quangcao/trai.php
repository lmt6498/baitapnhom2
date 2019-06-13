<br>Quảng cáo <br><br>
<?php 
    $tv="select html from quangcao where vitri='trai' ";
    $tv_1=mysqli_query($conn,$tv);
    $tv_2=mysqli_fetch_array($tv_1);
    echo $tv_2['html'];
?>