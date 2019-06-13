<br>
<br>
<?php 

    $tv="select id,ten,gia,hinhanh,thuoc_menu from sanpham where trangchu='co' order by sapxeptrangchu desc limit 0,15";
    $tv_1=mysqli_query($conn,$tv);
    echo "<table>";
    while($tv_2=mysqli_fetch_array($tv_1))
    {
        echo "<tr>";
            for($i=1;$i<=3;$i++)
            {
                echo "<td align='center' width='215px' valign='top' >";
                    if($tv_2!=false)
                    {
                       $link_anh="hinh_anh/sanpham/".$tv_2['hinhanh'];
						$link_chi_tiet="?thamso=chi_tiet_san_pham&id=".$tv_2['id'];
						$gia=$tv_2['gia'];
						$gia=number_format($gia,0,",",".");
						echo "<a href='$link_chi_tiet' >";
							echo "<img src='$link_anh' width='150px' >";
						echo "</a>";
						echo "<br>";
						echo "<br>";
						echo "<a href='$link_chi_tiet' >";
							echo $tv_2['ten'];
						echo "</a>";
						echo "<div style='margin-top:5px' >";                        
						echo $gia; echo " "; echo "vnđ";
						echo "</div>";
						echo "<br>";
                    }
                    else 
                    {
                        echo "&nbsp;";
                    }
                echo "</td>";
                if($i!=3)
                {
                    $tv_2=mysqli_fetch_array($tv_1);
                }
            }
        echo "</tr>";
    }
    echo "</table>";
?>