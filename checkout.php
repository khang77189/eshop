<?php require_once 'public/inc/header.php' ?>
<!-- Header Inner -->
<div class="header-inner">
	<div class="container">
		<div class="cat-nav-head">
			<div class="row">
				<div class="col-12">
					<div class="menu-area">
						<!-- Main Menu -->
						<?php require_once 'public/inc/navbar.php' ?>
						<!--/ End Main Menu -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--/ End Header Inner -->
</header>
<!--/ End Header -->

<!-- Breadcrumbs -->
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="bread-inner">
					<ul class="bread-list">
						<li><a href="index.html">Trang chủ<i class="ti-arrow-right"></i></a></li>
						<li class="active"><a href="checkout.html">Thanh toán</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Breadcrumbs -->

<!-- Start Checkout -->
<?php
if (isset($_SESSION['customer'])) {
	$id_customer = $_SESSION['customer']['id'];
	$name = $_SESSION['customer']['name'];
	$email = $_SESSION['customer']['email'];

?>
	<section class="shop checkout section" id="listCheck">
		<div class="wrapper" id="checkout">
		<script>
			function checkOut(id) {
				var phone = $("#number").val();
				var address = $("#address").val();
				var name = $("#name").val();
				var email = $("#email").val();
				$.ajax({
					type: "POST",
					url: 'addcheck.php',
					data: {
						id: id,
						name: name,
						email: email,
						address: address,
						phone: phone
					},
					success: function(data) {
						alert('Your order checkout successfull !');
						$("#listCheck").load("checkout.php #checkout");
					}
				});
			}
		</script>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-12">
					<div class="checkout-form">
						<h2>Thanh toán của bạn ở đây</h2>
						<p>Vui lòng đăng ký để thanh toán nhanh hơn</p>

						<form id="add_checkout" class="form" method="POST" action="javascript:void(0)">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-12">
									<div class="form-group">
										<label>Tên<span>*</span></label>
										<input type="text" id="name" name="name" value="<?php echo $name ?>" required="required">
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-12">
									<div class="form-group">
										<label>Email<span>*</span></label>
										<input type="email" id="email" name="email" value="<?php echo $email ?>" required="required">
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-12">
									<div class="form-group">
										<label>Số điện thoại<span></span></label>
										<input type="text" id="number" name="number">
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-12">
									<div class="form-group">
										<label>Địa chỉ<span></span></label>
										<input type="text" name="address" id="address">
									</div>
								</div>

							</div>
							<button type="submit" onclick="checkOut(<?php echo $id_customer ?>)" name="submit" class="btn btn-primary">Đặt hàng</button>
						</form>
						<!--/ End Form -->
					</div>
				</div>
			</div>
		</div>
		<br>
		<section class="shop-services section home">
			<div class="container">
				<div class="row">
					<div class="col-8">
						<!-- Shopping Summery -->
						<table class="table shopping-summery">
							<thead>
								<tr class="main-hading">
									<th>#</th>
									<th>Hình ảnh</th>
									<th>Tên</th>
									<th class="text-center">Đơn vị giá</th>
									<th class="text-center">Số lượng</th>
									<th class="text-center">Tổng</th>

								</tr>
							</thead>
							<tbody>
								<?php
								$stt = 0;
								$total = 0;
								$sum = 0;
								if (isset($_SESSION['cart'])) {
									foreach ($_SESSION['cart'] as $key => $value) {
										$total = $value['price'] * $value['num'];
										$sum += $total;
										$stt++;
								?>
										<tr>
											<td><?php echo $stt ?></td>
											<td class="image" data-title="No"><img src="admin/upload/<?php echo $value['image'] ?>" alt="#"></td>
											<td class="product-des" data-title="Description">
												<p class="product-name"><a href="#"><?php echo $value['name'] ?></a></p>

											</td>
											<td class="price" data-title="Price"><span><?php echo $value['price'] ?> VND</span></td>
											<td class="qty" data-title="Qty">
												<!-- Input Order -->
												<div class="input-group">

													<input type="text" value="<?php echo $value['num'] ?>">

												</div>
												<!--/ End Input Order -->
											</td>
											<td class="total-amount" data-title="Total"><span><?php echo $total ?>VND</span></td>

										</tr>
								<?php
									}
								}
								?>
								<tr>
									<td style="font-size: 20px;">Tổng giỏ hàng:</td>
									<td colspan="5" style="color:orange; font-size: 15px">$ <?php echo $sum ?></td>
								</tr>
						</table>
						<!--/ End Shopping Summery -->
					</div>

				</div>
			</div>
		</section>
		</div>
	</section>
	<!--/ End Checkout -->
<?php
} else {
	echo "<script>alert('You must login first to checkout!');</script>";
	echo '<script>window.location="login.php?action=checkout";</script>';
}
?>

<?php require_once 'public/inc/footer.php' ?>