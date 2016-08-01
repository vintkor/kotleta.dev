<?php get_header(); ?>
<?php if ( have_posts() ) : query_posts('page_id=31'); while (have_posts()) : the_post(); ?>
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
 <? endwhile; endif; wp_reset_query();?>


	<div class="section1">
			<div class="container">
				<div class="row">
				<?php if (have_posts()): while (have_posts()): the_post(); ?>
					<div class="col-sm-12 col-md-6 afisha">
						<div class="afisha-wrapper">
							<span class="time">Дата: <strong>
								<?php echo get_post_meta($post->ID, 'date', true); ?>
							</strong> Начало: <strong>
								<?php echo get_post_meta($post->ID, 'time', true); ?>
							</strong></span>
							<h2><?php the_title(); ?></h2>
							<div class="afisha-list">
								<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"></a>
								<div class="border"></div>
								<?php the_post_thumbnail('afisha-thumb'); ?>
								<div class="afisha-short-content">
									<?php the_content(); ?>
								</div>
							</div>
						</div>
					</div>
				<?php endwhile; endif;?>
				<?php if ( have_posts() ) : query_posts('page_id=24'); while (have_posts()) : the_post(); ?>
				<div class="col-sm-12 description">
					<?php the_content(); ?>
				</div>
				<? endwhile; endif; wp_reset_query();?>									
				</div>
			</div>
		</div>

<?php get_footer(); ?>