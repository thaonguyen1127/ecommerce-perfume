<div>
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Core</div>
                    <a class="nav-link" href="index.php">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        Thống kê
                    </a>

                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseAdmin" aria-expanded="false" aria-controls="collapseAdmin">
                        <div class="sb-nav-link-icon"><i class="fas fa-user-alt"></i></div>
                        Tài khoản
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapseAdmin" aria-labelledby="headingO" data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="/ecommerce-perfume/admin/admin_list.php">Admins</a>
                        </nav>
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="/ecommerce-perfume/admin/user_list.php">Users</a>
                        </nav>
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="admin_register.php">Thêm mới</a>
                        </nav>
                    </div>

                    <div class="sb-sidenav-menu-heading">Quản lý sản phẩm</div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        Thương hiệu
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="/ecommerce-perfume/admin/category.php">Quản lý</a>
                        </nav>
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="/ecommerce-perfume/admin/category/saveOrUpdate.php">Thêm mới</a>
                        </nav>
                    </div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                        Sản phẩm
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                        <a class="nav-link" href="/ecommerce-perfume/admin/product.php" style="margin-left: 0">Quản lý</a>
                        <a class="nav-link" href="/ecommerce-perfume/admin/product/saveOrUpdate.php">Thêm mới</a>   
                    </div>
                    <!-- đơn hàng -->
                    <div class="sb-sidenav-menu-heading">Quản lý đơn hàng</div>
                        <a class="nav-link" href="/ecommerce-perfume/admin/order.php" style="margin-left: 0">Danh sách</a>
                    <div class="sb-sidenav-menu-heading">Liên lạc</div>
                        <a class="nav-link" href="/ecommerce-perfume/admin/admin_mess.php" style="margin-left: 0">Tin nhắn</a>
                    <!-- comment -->
                    <div class="sb-sidenav-menu-heading">Tin tức</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseBlog" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Tin tức
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseBlog" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="/ecommerce-perfume/admin/blog.php">Quản lí tin tức</a>
                                </nav>
                            </div>
                            <!-- endcomment -->
                </div>
                
            </div>
            <div class="sb-sidenav-footer">
                Nhóm 7
            </div>
        </nav>
    </div>
</div>