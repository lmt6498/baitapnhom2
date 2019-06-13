
<?php 
    if(!isset($bien_bao_mat)){exit();}
?>
<?php 
    $tv="select * from quangcao where vitri='trai' ";
    $tv_1=mysqli_query($conn,$tv);
    $tv_2=mysqli_fetch_array($tv_1);
    $noi_dung=$tv_2['html'];
?>
<form action="" method="post" enctype="multipart/form-data" >
    <table width="990px" >
        <tr>
            <td><b style="color:blue;font-size:20px" >Sửa quảng cáo trái</b></td>
        </tr>

        <tr>
            <td align="center" >
                <br>
                  <textarea id="noi_dung" name="noi_dung" cols="30" rows="20"><?php echo $noi_dung; ?></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <br>
                <input type="submit" name="bieu_mau_sua_quang_cao_trai" value="Sửa quảng cáo" style="width:200px;height:50px;font-size:24px" >
            </td>
        </tr>
    </table>
</form>