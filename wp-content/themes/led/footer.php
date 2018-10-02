<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
?>

<div class="overlay"></div>
<div class="popup" id="callback">
    <a class="close">&times;</a>
    <div class="flex-container justify-center">
        <span class="title center">Сделать заказ</span>
    </div>
    <?php echo get_field('contact_form') ?>
</div>

<?php wp_footer(); ?>
</body>
</html>
