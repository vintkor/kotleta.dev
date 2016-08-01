</div>	
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12" style="color: white !important;">
					<?php echo 'В вашей корзине '.WC()->cart->get_cart_contents_count().' товар(ов) на сумму '; ?>
					<?php echo WC()->cart->get_cart_total(); ?>
				</div>
			</div>
		</div>		
	</div>	
</div>
	<?php wp_footer(); ?>
	<script src="<?php echo get_template_directory_uri(); ?>/app/js/libs.min.js"></script>
	<script src="<?php echo get_template_directory_uri(); ?>/app/js/main.js"></script>
</body>
</html>