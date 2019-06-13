<?php 
    if(!isset($bien_bao_mat)){exit();}
?>
<?php 
    if(!isset($_GET['thamso'])){$thamso="";}else{$thamso=$_GET['thamso'];}
    
    switch($thamso)
    {
        case "menu_ngang":
            include("chucnang/menungang/lienketmenungang.php");
        break;
        case "them_menu_ngang":
            include("chucnang/menungang/themmenungang.php");
        break;
        case "quan_ly_menu_ngang":
            include("chucnang/menungang/quanlymenungang.php");
        break;
        case "sua_menu_ngang":
            include("chucnang/menungang/suamenungang.php");
        break;
        case "menu_doc":
            include("chucnang/menudoc/lienketmenudoc.php");
        break;
        case "them_menu_doc":
            include("chucnang/menudoc/themmenudoc.php");
        break;
        case "quan_ly_menu_doc":
            include("chucnang/menudoc/quanlymenudoc.php");
        break;
        case "sua_menu_doc":
            include("chucnang/menudoc/suamenudoc.php");
        break;
        case "san_pham":
            include("chucnang/sanpham/lienketsanpham.php");
        break;
        case "them_san_pham":
            include("chucnang/sanpham/themsanpham.php");
        break;
        case "quan_ly_san_pham":
            include("chucnang/sanpham/quanlysanpham.php");
        break;
        case "sua_san_pham":
            include("chucnang/sanpham/suasanpham.php");
        break;
        case "hoa_don":
            include("chucnang/hoadon/quanlyhoadon.php");
        break;
        case "xem_hoa_don":
            include("chucnang/hoadon/xemhoadon.php");
        break;
        case "san_pham_trang_chu":
            include("chucnang/sanphamtrangchu/sanphamtrangchu.php");
        break;
        case "san_pham_noi_bat":
            include("chucnang/sanphamnoibat/sanphamnoibat.php");
        break;
        case "slideshow":
            include("chucnang/slideshow/lienketslideshow.php");
        break;
        case "them_slideshow":
            include("chucnang/slideshow/themslideshow.php");
        break;
        case "quan_ly_slideshow":
            include("chucnang/slideshow/quanlyslideshow.php");
        break;
        case "sua_slideshow":
            include("chucnang/slideshow/suaslideshow.php");
        break;
        case "sua_banner":
            include("chucnang/banner/suabanner.php");
        break;
        case "sua_footer":
            include("chucnang/footer/suafooter.php");
        break;
        case "them_quang_cao_trai":
            include("chucnang/quangcaotrai/themquangcaotrai.php");
        break;
        case "quan_ly_quang_cao_trai":
            include("chucnang/quangcatrai/quanlyquangcaotrai.php");
        break;
        case "sua_quang_cao_trai":
            include("chucnang/quangcaotrai/suaquangcaotrai.php");
        break;
        case "them_quang_cao_phai":
            include("chucnang/quangcaophai/themquangcaophai.php");
        break;
        case "quanlyquangcaophai":
            include("chucnang/quangcaophai/quanlyquangcaophai.php");
        break;
        case "sua_quang_cao_phai":
            include("chucnang/quangcaophai/suaquangcaophai.php");
        break;
        case "sua_thong_tin_quan_tri":
            include("chucnang/quantri2/suathongtinquantri.php");
        break;
        default: 
            include("chucnang/quantri2/trangchu2.php");
    }
?>