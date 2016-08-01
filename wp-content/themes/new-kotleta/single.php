<?php
  $post = $wp_query->post;
 
  if (in_category('afisha')) {
      include(TEMPLATEPATH.'/single-afisha.php');
  } else {
      include(TEMPLATEPATH.'/single-default.php');
  }
?>