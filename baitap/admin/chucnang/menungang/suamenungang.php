<?php 
    if(!isset($bien_bao_mat)){exit();}
?>
<?php 
    $id=$_GET['id'];
    $tv="select * from menu_ngang where id='$id' ";
    $tv_1=mysqli_query($conn,$tv);
    $tv_2=mysqli_fetch_array($tv_1);
    $ten=$tv_2['ten'];
    $loai_menu=$tv_2['loaimenu'];
    $noi_dung=$tv_2['noidung'];
    $link_dong="?thamso=quan_ly_menu_ngang&trang=".$_GET['trang'];
?>
<form action="" method="post">
    <table width="990px" >
        <tr>
            <td width="180px" ><b style="color:blue;font-size:20px" >Sửa menu ngang</b><br><br> </td>
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
            <td>Loại menu : </td>
            <td>
                <?php
                    $a_1="";
                    $a_2="";
                    if($loai_menu=="san_pham")
                    {
                        $a_2="selected";
                    }
                ?>
                <select name="loai_menu" style="margin-top:3px;margin-bottom:3px;" >
                    <option value="" <?php echo $a_1; ?> >Bình thường</option>
                    <option value="san_pham" <?php echo $a_2; ?> >Sản phẩm</option>
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
                <input type="submit" name="bieu_mau_sua_menu_ngang" value="Sửa menu" style="width:200px;height:50px;font-size:24px" >
            </td>
        </tr>
    </table>
</form>