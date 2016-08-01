<?php get_header(); ?>
<?php if (have_posts()): while (have_posts()): the_post(); ?>
				<div class="title">
					<H1><?php the_title(); ?></H1>
				</div>
			</div>
			<div class="header-img"
									style="background: url(<?php $thumb_id = get_post_thumbnail_id();
	  								$thumb_url = wp_get_attachment_image_src($thumb_id,'thumbnail-size', true);
									echo $thumb_url[0];
								?>) center; background-size: cover;">
			</div>
		</div>

<div class="section1 single-afisha">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 single-afisha-content">
				<div class="deteils">
					Дата: <strong>
							<?php echo get_post_meta($post->ID, 'date', true); ?>
						</strong><br>
					Начало: <strong>
							<?php echo get_post_meta($post->ID, 'time', true); ?>
						</strong>
				</div>		
				<?php the_content(); ?>									
			</div>
		</div>
	</div>
</div>


<?php endwhile; endif;?>
<?php get_footer(); ?>