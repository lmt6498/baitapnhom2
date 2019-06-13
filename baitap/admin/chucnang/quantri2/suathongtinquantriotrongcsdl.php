<?php 
    if(!isset($bien_bao_mat)){exit();}
?>
<?php 
    $tv="select * from admin where id='1' ";
    $tv_1=mysqli_query($conn,$tv);
    $tv_2=mysqli_fetch_array($tv_1);
    $ky_danh=$_POST['ky_danh'];
    $mat_khau=$tv_2['pass'];

    $mat_khau_tu_form=trim($_POST['mat_khau']);
    if($mat_khau_tu_form!="khong_doi")
    {
        $mat_khau=md5($mat_khau_tu_form);
        $mat_khau=md5($mat_khau);
    }

    $tv="
    UPDATE admin SET 
    user = '$ky_danh',
    pass = '$mat_khau' 
    WHERE id =1;
    ";
    mysqli_query($conn,$tv);
    
    $_SESSION['ky_danh']=$ky_danh;
    $_SESSION['mat_khau']=$mat_khau;
    
    thong_bao_html("Đã cập nhật lại thông tin quản trị");            
    
?>