<?php

include '../components/connect.php';
session_start();

if(isset($_SESSION['admin_id'])){
    $admin_id = $_SESSION['admin_id'];
} else {
    $admin_id = '';
}


if(isset($_POST['btnsubmit'])){

   $adname = $_POST['txtadname'];
   $pass = sha1($_POST['pass']);

   $select_ad = $conn->prepare("SELECT * FROM `tbl_admin` WHERE adname = ? and password = ?");
   $select_ad->execute([$adname,$pass]);
   $row = $select_ad->fetch(PDO::FETCH_ASSOC);

    if($select_ad->rowCount() > 0){
        $_SESSION['admin_id'] = $row['id'];
        header('location:index.php');
   }else{
      
         echo"
         <script type = 'text/javascript'>
            alert('confirm password not matched!');
         </script>";
      
   }

}


?>

<!DOCTYPE html>
<html lang="en">
    <head>
    <?php include ('../admin/component/admin_head.php'); ?>
    </head>
    <body class="sb-nav-fixed">
        <?php include ('../admin/component/admin_nav.php'); ?>
        <div id="layoutSidenav">
            <?php include ('../admin/component/admin_layout.php'); ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <div class="container form-text">
                            <div class="row">
                                <div class="col-sm-12">
                                    <h3 style="margin: auto; margin-top: 20px; text-align: center;">Đăng nhập</h3>
                                </div>
                                <div class="col-sm-12" style="display: flex; justify-content: center; align-items: center;">
                                    <!-- Form Thêm sản phẩm -->
                                    <form method="post" style="width: 500px; ">
                                        <!-- Tên sản phẩm -->
                                        <div class="form-group">
                                            <label for="txtadname">Tên tài khoán</label>
                                            <input class="form-control" id="txtadname" type="text" name="txtadname" required placeholder="enter your username" maxlength="20" pattern="[a-zA-Z0-9]+">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="pass">Mật khẩu</label>
                                            <input class="form-control" id="pass" type="password" name="pass" required placeholder="enter your password" maxlength="20"  class="box" oninput="this.value = this.value.replace(/\s/g, '')">
                                        </div>
                                        
                                        <button type="submit" class="btn btn-primary" name="btnsubmit">Đăng nhập</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <?php include ('../admin/component/admin_footer.php'); ?>
            </div>
        </div>
        <?php include ('../admin/component/admin_script.php'); ?>
    </body>
</html>
