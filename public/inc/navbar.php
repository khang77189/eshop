<nav class="navbar navbar-expand-lg">
    <div class="navbar-collapse">
        <div class="nav-inner">
            <ul class="nav main-menu menu navbar-nav">
                <li class="<?php if($page == "HOME") { echo "active";}?>"><a href="index.html">Trang chủ</a></li>
                <li  class="<?php if($page == "SHOP") { echo "active";}?>"><a href="shop-grid.html">Tất cả sản phẩm</a></li>
                <li  class="<?php if($page == "ORD") { echo "active";}?>"><a href="order.html">Đơn hàng</a></li>
                <li  class="<?php if($page == "CART") { echo "active";}?>"><a href="#">Cửa hàng<i class="ti-angle-down"></i><span class="new">New</span></a>
                    <ul class="dropdown">

                        <li><a href="cart.html">Giỏ hàng</a></li>
                        <li><a href="checkout.html">Thanh toán</a></li>
                    </ul>
                </li>
                <li  class="<?php if($page == "BLOG") { echo "active";}?>"><a href="blog.html">Blog</a>

                </li>
                <li  class="<?php if($page == "CONTACT") { echo "active";}?>"><a href="contact.html">Liên hệ</a></li>
            </ul>
        </div>
    </div>
</nav>