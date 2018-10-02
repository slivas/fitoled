<?php
/* Template Name: Main */
get_header(); ?>

<?php if (have_rows('gallery')): ?>
<section class="main__slider-top">
    <div class="main-slider__wrapper">
        <?php while (have_rows('gallery')):
            the_row();
            $m_img = get_sub_field('mainImage');
            $textTop = get_sub_field('textTop');
            $textBottom = get_sub_field('textBottom');
            ?>
            <div class="slide">
                <div class="description">
                    <div class="description-wrap">
                        <div class="slider-top__title-wrap">
                            <span class="slider-top__title"><?php echo $textTop; ?></span>
                        </div>
                        <p class="slider-top__content"><?php echo $textBottom; ?></p>
                        <span class="border-btn text-center popup-open">Заказать</span>
                    </div>
                </div>
                <img src="<?php echo $m_img['url']; ?>" alt="<?php echo $m_img['title']; ?>" />
            </div>
        <?php endwhile; ?>
    </div>
    <a href="#mainServices">
        <svg class="arrows">
            <path class="a1" d="M0 0 L30 32 L60 0"></path>
            <path class="a2" d="M0 20 L30 52 L60 20"></path>
            <path class="a3" d="M0 40 L30 72 L60 40"></path>
        </svg>
    </a>
</section>
<?php endif; ?>

<section id="mainServices" class="main__about container flex-container align-center">
    <?php
        $aboutTxt = get_field('about_lamps_txt');
        $aboutImg = get_field('about_lamps_img');
    ?>
    <div class="text">
        <span class="title">Несколько слов о фито лампах</span>
        <?php echo $aboutTxt;?>
    </div>
    <div class="img">
        <img src="<?php echo $aboutImg['url'];?>" alt="<?php echo $aboutImg['title']; ?>" />
    </div>
</section>
<section class="main__products container" id="catalog">
    <div class="flex-container justify-center">
        <span class="title green center">Мы предлагаем</span>
    </div>
    <div class="main__products-wrapper flex-container">
        <?php
            $lampImg = get_field('lamps_img');
            $lampsName = get_field('lamps_name');
        ?>
        <div class="img">
            <img src="<?php echo $lampImg['url']?>" alt="<?php $lampImg['title']?>">
        </div>
        <div class="about">
            <div class="name"><?php echo $lampsName?></div>
            <span class="title-small">Выберите мощность:</span>
            <div class="tabs">
                <ul class="tabs__nav flex-container">
                    <?php
                    $query = new WP_Query('cat=3&nopaging=1,orderby=date&order=ASC'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
                    if( $query->have_posts() ){
                        while( $query->have_posts() ){ $query->the_post();
                            ?>
                            <li class="tabs__item"><?php the_title();?></li>
                            <?php
                        }
                        wp_reset_postdata(); // сбрасываем переменную $post
                    }
                    ?>
                </ul>

                <?php
                $query = new WP_Query('cat=3&nopaging=1,orderby=date&order=ASC'); // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
                if( $query->have_posts() ){
                    while( $query->have_posts() ){ $query->the_post();
                        ?>
                        <div class="tabs__content"><?php the_content();?></div>
                        <?php
                    }
                    wp_reset_postdata(); // сбрасываем переменную $post
                }
                ?>
            </div>
        </div>
    </div>
</section>
<section class="main__contact-form">
    <div class="container flex-container" id="contacts">
        <div class="item">
            <div class="title">Свяжитесь с нами прямо сейчас</div>
            <p>Для того, чтобы узнать подробнее о grow лампах, заполните форму справа, и мы свяжемся с Вами в ближайшее время.</p>
        </div>
        <div class="item">
            <?php echo get_field('contact_form') ?>
        </div>
    </div>
</section>

<?php get_footer(); ?>
