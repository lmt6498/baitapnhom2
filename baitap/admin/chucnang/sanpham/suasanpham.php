<?php 
    if(!isset($bien_bao_mat)){exit();}
?>
<?php 
    $id=$_GET['id'];
    $tv="select * from sanpham where id='$id' ";
    $tv_1=mysqli_query($conn,$tv);
    $tv_2=mysqli_fetch_array($tv_1);
    $ten=$tv_2['ten'];
    $gia=$tv_2['gia'];
    $trang_chu=$tv_2['trangchu'];
    $noi_bat=$tv_2['noibat'];
    $noi_dung=$tv_2['noidung'];
    $ten_anh=$tv_2['hinhanh'];
    $link_hinh="../hinh_anh/sanpham/".$tv_2['hinhanh'];
    $link_dong="?thamso=quan_ly_san_pham&id_menu=".$_GET['id_menu']."&trang=".$_GET['trang'];
?>
<form action="" method="post" enctype="multipart/form-data" >
    <table width="990px" >
        <tr>
            <td width="180px" ><b style="color:blue;font-size:20px" >Sửa sản phẩm</b><br><br> </td>
            <td width="810px" align="right" >
                <a href="<?php echo $link_dong; ?>" class="lk_a1" style="margin-right:30px" >Đóng</a>
            </td>
        </tr>
        <tr>
            <td >Tên : </td>
            <td >
                <input style="width:400px;margin-top:3px;margin-bottom:3px;" name="ten" value="<?php echo $ten; ?>" >
            </td>
        </tr>
        <tr>
            <td valign="top" >Hình ảnh : </td>
            <td >
                <img src='<?php echo $link_hinh; ?>' style='width:180px' > 
                <br><br>
                <input type="file" name="hinh_anh" >
                <input type="hidden" name="ten_anh" value="<?php echo $ten_anh; ?>" >
                <br><br>
                <a href="<?php echo $link_hinh; ?>" class="lk_a1" style="font-size:24px" target="_blank" >Xem ảnh đủ kích cỡ</a>
                <br><br>
            </td>
        </tr>
        <tr>
            <td >Giá : </td>
            <td >
                <input style="width:400px;margin-top:3px;margin-bottom:3px;" name="gia" value="<?php echo $gia; ?>" >
            </td>
        </tr>
        <tr>
            <td>Trang chủ : </td>
            <td>
                <?php
                    $a_1="";
                    $a_2="";
                    if($trang_chu=="co")
                    {
                        $a_2="selected";
                    }
                ?>
                <select name="trang_chu" style="margin-top:3px;margin-bottom:3px;" >
                    <option value="" <?php echo $a_1; ?> >Không</option>
                    <option value="co" <?php echo $a_2; ?> >Có</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Nổi bật : </td>
            <td>
                <?php
                    $a_1="";
                    $a_2="";
                    if($noi_bat=="co")
                    {
                        $a_2="selected";
                    }
                ?>
                <select name="noi_bat" style="margin-top:3px;margin-bottom:3px;" >
                    <option value="" <?php echo $a_1; ?> >Không</option>
                    <option value="co" <?php echo $a_2; ?> >Có</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Nội dung : </td>
            <td>
                  <textarea id="noi_dung" name="noi_dung" cols="30" rows="20"><?php echo $noi_dung; ?></textarea>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <br>
                <input type="submit" name="bieu_mau_sua_san_pham" value="Sửa sản phẩm" style="width:200px;height:50px;font-size:24px" >
            </td>
        </tr>
    </table>
</form>