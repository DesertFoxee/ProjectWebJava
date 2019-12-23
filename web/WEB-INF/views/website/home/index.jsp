<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:template-website title="Index">
    <jsp:attribute name="content">
        <div class="so-slider">
            <div class="container">
                <div id="so-slideshow" class="col-md-offset-3 col-md-12 col-xs-12 module sohomepage-slider ">
                    <div class="modcontent">
                        <div id="sohomepage-slider1">
                            <div class="so-homeslider sohomeslider-inner-1">
                                <div class="item ">
                                    <a href="#" title="Slider 1-1" target="_blank">
                                        <img class="responsive"
                                             src="<c:url value="/resources/images/common/slide/1-870x433.jpg" />"
                                             alt="Slider 1-1" />
                                    </a>
                                    <div class="sohomeslider-description">
                                        <div class="text pos-right text-sl11">
                                            <h3 class="tilte modtitle-sl11 ">Nikon D7100</h3>
                                            <p class="des des-sl11">Ultimate image quality. Create without
                                                limination
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item ">
                                    <a href="#" title="Slider 1-2" target="_blank">
                                        <img class="responsive"
                                             src="<c:url value="/resources/images/common/slide/1-870x433_1.jpg" />"
                                             alt="Slider 1-2" />
                                    </a>
                                    <div class="sohomeslider-description">
                                        <div class="text pos-right text-sl12">
                                            <h3 class="tilte modtitle-sl12">OUR NEW RANGE OF</h3>
                                            <h4 class="titleh4">TABLET</h4>
                                            <p class="des des-sl11">FOR LESS THAN $99.00</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item ">
                                    <a href="#" title="Slider 1-3" target="_blank">
                                        <img class="responsive"
                                             src="<c:url value="/resources/images/common/slide/1-870x433_2.jpg" />"
                                             alt="Slider 1-3" />
                                    </a>
                                    <div class="sohomeslider-description">
                                        <div class="text pos-left text-sl13">
                                            <h3 class="tilte modtitle-sl13">OUR NEW RANGE OF</h3>
                                            <h4 class="titleh4">IMACS</h4>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <script type="text/javascript">
                                $('body').addClass('common-home');
                                var owl = $(".sohomeslider-inner-1");
                                var total_item = 3;
                                function customCenter() {
                                    $(".owl2-item.active .item .sohomeslider-description .image ").addClass("img-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .tilte ").addClass("title-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text h4 ").addClass("h4-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .des").addClass("des-active");
                                }
                                function customPager() {
                                    $(".owl2-item.active .item .sohomeslider-description .image ").addClass("img-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .tilte ").addClass("title-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text h4 ").addClass("h4-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .des").addClass("des-active");
                                }

                                $(".sohomeslider-inner-1").owlCarousel2({
                                    animateOut: 'slideOutDown',
                                    animateIn: 'slideInDown',
                                    autoplay: false,
                                    autoplayTimeout: 5000,
                                    autoplaySpeed: 1000,
                                    smartSpeed: 500,
                                    autoplayHoverPause: true,
                                    startPosition: 0,
                                    mouseDrag: true,
                                    touchDrag: true,
                                    dots: true,
                                    autoWidth: false,
                                    dotClass: "owl2-dot",
                                    dotsClass: "owl2-dots",
                                    loop: true,
                                    navText: ["Next", "Prev"],
                                    navClass: ["owl2-prev", "owl2-next"],
                                    responsive: {
                                        0: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        480: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        768: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        992: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        1200: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        }
                                    },
                                    onInitialized: customPager,
                                    onTranslated: customCenter,
                                });
                            </script>
                        </div>
                    </div>

                    <div class="loader-mod-box"></div>
                </div>

            </div>
        </div>

        <c:set var="path_default" value="${path_default}" scope="request" />

        <div class="container">
            <div class="row">
                <jsp:include page="/WEB-INF/views/partialview/website/home/introduce.jsp"  flush="true"/>

                <c:set var="best_sale_shoes" value="${best_sale_shoes}" scope="request"/>
                <jsp:include page="/WEB-INF/views/partialview/website/home/bestsale.jsp"  flush="true"/>
            </div>
        </div>

        <c:set var="first_shoes_price" value="${adi_shoes_price}" scope="request" />
        <c:set var="first_shoes_sale" value="${adi_shoes_sale}" scope="request" />
        <jsp:include page="/WEB-INF/views/partialview/website/home/spotlight.jsp" flush="true">
            <jsp:param name="title" value="ADIDAS"/>
            <jsp:param name="position" value="1"/>
        </jsp:include>

        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                (function (element) {
                    var type_show = 'slider';
                    var rows = '1';
                    var $element = $(element),
                            $tab = $('.spcat-tab', $element),
                            $tab_label = $('.spcat-tab-label', $tab),
                            $tabs = $('.spcat-tabs', $element),
                            ajax_url = $tabs.parents('.spcat-tabs-container').attr('data-ajaxurl'),
                            effect = $tabs.parents('.spcat-tabs-container').attr('data-effect'),
                            delay = $tabs.parents('.spcat-tabs-container').attr('data-delay'),
                            duration = $tabs.parents('.spcat-tabs-container').attr('data-duration'),
                            rl_moduleid = $tabs.parents('.spcat-tabs-container').attr('data-modid'),
                            $items_content = $('.spcat-items', $element),
                            $items_inner = $('.spcat-items-inner', $items_content),
                            $items_first_active = $('.spcat-items-selected', $element),
                            $load_more = $('.spcat-loadmore', $element),
                            $btn_loadmore = $('.spcat-loadmore-btn', $load_more),
                            $select_box = $('.spcat-selectbox', $element),
                            $id_cate = $('.spcat-tab', $element).attr('data-id-cate'),
                            $tab_label_select = $('.spcat-tab-selected', $element),
                            setting = 'a:80:{s:6:"action";s:9:"save_edit";s:4:"name";s:27:"Electronics - Home Layout 1";s:18:"module_description";a:2:{i:1;a:1:{s:9:"head_name";s:11:"Electronics";}i:2;a:1:{s:9:"head_name";s:11:"Electronics";}}s:9:"head_name";s:11:"Electronics";s:17:"disp_title_module";s:1:"1";s:6:"status";s:1:"1";s:25:"advanced_mod_class_suffix";s:40:"cus-style-supper-cate  fa-empire #009688";s:16:"item_link_target";s:6:"_blank";s:8:"category";s:2:"17";s:14:"category_depth";s:1:"1";s:17:"field_product_tab";a:5:{i:0;s:7:"p_price";i:1;s:10:"p_quantity";i:2;s:6:"rating";i:3;s:12:"p_sort_order";i:4;s:5:"sales";}s:13:"field_preload";s:5:"sales";s:10:"limitation";s:1:"6";s:16:"product_ordering";s:4:"DESC";s:16:"category_column0";s:1:"4";s:16:"category_column1";s:1:"4";s:16:"category_column2";s:1:"3";s:16:"category_column3";s:1:"2";s:16:"category_column4";s:1:"1";s:24:"category_title_maxlength";s:2:"25";s:26:"display_title_sub_category";s:1:"1";s:22:"display_slide_category";s:1:"1";s:18:"show_category_type";s:1:"0";s:28:"sub_category_title_maxlength";s:2:"25";s:14:"category_width";s:3:"200";s:15:"category_height";s:3:"100";s:25:"category_placeholder_path";s:11:"nophoto.png";s:15:"product_column0";s:1:"4";s:15:"product_column1";s:1:"4";s:15:"product_column2";s:1:"3";s:15:"product_column3";s:1:"2";s:15:"product_column4";s:1:"1";s:9:"type_show";s:6:"slider";s:4:"rows";s:1:"1";s:21:"product_display_title";s:1:"1";s:23:"product_title_maxlength";s:2:"15";s:27:"product_display_description";s:1:"1";s:29:"product_description_maxlength";s:3:"200";s:21:"product_display_price";s:1:"1";s:27:"product_display_add_to_cart";s:1:"1";s:16:"display_wishlist";s:1:"1";s:15:"display_compare";s:1:"1";s:14:"display_rating";s:1:"1";s:12:"display_sale";s:1:"1";s:11:"display_new";s:1:"1";s:8:"date_day";s:1:"7";s:17:"product_image_num";s:1:"2";s:13:"product_image";s:1:"1";s:22:"product_get_image_data";s:1:"1";s:23:"product_get_image_image";s:1:"1";s:13:"product_width";s:3:"183";s:14:"product_height";s:3:"183";s:24:"product_placeholder_path";s:11:"nophoto.png";s:6:"effect";s:4:"none";s:16:"product_duration";s:3:"600";s:13:"product_delay";s:3:"300";s:18:"subcategory_center";s:1:"0";s:30:"subcategory_display_navigation";s:1:"1";s:24:"subcategory_display_loop";s:1:"1";s:24:"subcategory_margin_right";s:1:"5";s:19:"subcategory_slideby";s:1:"1";s:21:"subcategory_auto_play";s:1:"0";s:33:"subcategory_auto_interval_timeout";s:3:"300";s:28:"subcategory_auto_hover_pause";s:1:"1";s:27:"subcategory_auto_play_speed";s:3:"300";s:28:"subcategory_navigation_speed";s:4:"3000";s:26:"subcategory_start_position";s:1:"0";s:22:"subcategory_mouse_drag";s:1:"1";s:22:"subcategory_touch_drag";s:1:"1";s:16:"slider_auto_play";s:1:"1";s:25:"slider_display_navigation";s:1:"0";s:19:"slider_display_loop";s:1:"1";s:17:"slider_mouse_drag";s:1:"1";s:17:"slider_touch_drag";s:1:"1";s:23:"slider_auto_hover_pause";s:1:"1";s:28:"slider_auto_interval_timeout";s:4:"5000";s:22:"slider_auto_play_speed";s:4:"2000";s:8:"pre_text";s:170:"  &lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;   &lt;img src=&quot;image/catalog/banner/t22.jpg&quot; alt=&quot;banner&quot;&gt;            &lt;/a&gt;           ";s:9:"post_text";s:167:"   &lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;   &lt;img src=&quot;image/catalog/banner/s22.jpg&quot; alt=&quot;banner&quot;&gt;   &lt;/a&gt;                ";s:8:"moduleid";s:3:"154";}'
                    category_id = $('.sp-cat-title-parent', $element).attr('data-catids');


                    enableSelectBoxes();
                    function enableSelectBoxes() {
                        $tab_wrap = $('.spcat-tabs-wrap', $element);
                        $tab_label_select.html($('.spcat-tab', $element).filter('.tab-sel').children('.spcat-tab-label').html());
                        if ($(window).innerWidth() <= 479) {
                            $tab_wrap.addClass('spcat-selectbox');
                        } else {
                            $tab_wrap.removeClass('spcat-selectbox');
                        }
                    }

                    $('span.spcat-tab-selected, span.spcat-tab-arrow', $element).click(function () {
                        if ($('.spcat-tabs', $element).hasClass('spcat-open')) {
                            $('.spcat-tabs', $element).removeClass('spcat-open');
                        } else {
                            $('.spcat-tabs', $element).addClass('spcat-open');
                        }
                    });

                    $(window).resize(function () {
                        if ($(window).innerWidth() <= 479) {
                            $('.spcat-tabs-wrap', $element).addClass('spcat-selectbox');
                        } else {
                            $('.spcat-tabs-wrap', $element).removeClass('spcat-selectbox');
                        }
                    });

                    function showAnimateItems(el) {
                        var $_items = $('.new-spcat-item', el), nub = 0;
                        $('.spcat-loadmore-btn', el).fadeOut('fast');
                        $_items.each(function (i) {
                            nub++;
                            switch (effect) {
                                case 'none' :
                                    $(this).css({'opacity': '1', 'filter': 'alpha(opacity = 100)'});
                                    break;
                                default:
                                    animatesItems($(this), nub * delay, i, el);
                            }
                            if (i == $_items.length - 1) {
                                $('.spcat-loadmore-btn', el).fadeIn(delay);
                            }
                            $(this).removeClass('new-spcat-item');
                        });
                    }

                    function animatesItems($this, fdelay, i, el) {
                        var $_items = $('.spcat-item', el);
                        $this.attr("style",
                                "-webkit-animation:" + effect + " " + duration + "ms;"
                                + "-moz-animation:" + effect + " " + duration + "ms;"
                                + "-o-animation:" + effect + " " + duration + "ms;"
                                + "-moz-animation-delay:" + fdelay + "ms;"
                                + "-webkit-animation-delay:" + fdelay + "ms;"
                                + "-o-animation-delay:" + fdelay + "ms;"
                                + "animation-delay:" + fdelay + "ms;").delay(fdelay).animate({
                            opacity: 1,
                            filter: 'alpha(opacity = 100)'
                        }, {
                            delay: 100
                        });
                        if (i == ($_items.length - 1)) {
                            $(".spcat-items-inner").addClass("play");
                        }
                    }

                    showAnimateItems($items_first_active);
                    $tab.on('click.spcat-tab', function () {
                        var $this = $(this);
                        if ($this.hasClass('tab-sel'))
                            return false;
                        if ($this.parents('.spcat-tabs').hasClass('spcat-open')) {
                            $this.parents('.spcat-tabs').removeClass('spcat-open');
                        }
                        $tab.removeClass('tab-sel');
                        $this.addClass('tab-sel');
                        var items_active = $this.attr('data-active-content');

                        var _items_active = $(items_active, $element);
                        $items_content.removeClass('spcat-items-selected');
                        _items_active.addClass('spcat-items-selected');
                        $tab_label_select.html($tab.filter('.tab-sel').children('.spcat-tab-label').html());
                        var $loading = $('.spcat-loading', _items_active);
                        var loaded = _items_active.hasClass('spcat-items-loaded');
                        if (!loaded && !_items_active.hasClass('spcat-process')) {
                            _items_active.addClass('spcat-process');
                            var field_order = $this.attr('data-field_order');
                            $loading.show();
                            $.ajax({
                                type: 'POST',
                                url: ajax_url,
                                data: {
                                    spcat_module_id: rl_moduleid,
                                    is_ajax_super_category: 1,
                                    ajax_limit_start: 0,
                                    categoryid: category_id,
                                    fieldorder: field_order,
                                    setting: setting,
                                    ajax_reslisting_start: 0,
                                    lbmoduleid: '154'
                                },
                                success: function (data) {
                                    if (data.items_markup != '') {
                                        $('.spcat-items-inner', _items_active).html(data.items_markup);
                                        _items_active.addClass('spcat-items-loaded').removeClass('spcat-process');
                                        $loading.remove();
                                        showAnimateItems(_items_active);
                                        updateStatus(_items_active);
                                        $('.iframe-link').magnificPopup({
                                            type: 'iframe',
                                            fixedContentPos: false,
                                            fixedBgPos: true,
                                            overflowY: 'auto',
                                            closeBtnInside: true,
                                            preloader: false,
                                            midClick: true,
                                            removalDelay: 300,
                                            mainClass: 'my-mfp-zoom-in',
                                            callbacks: {
                                                markupParse: function (template, values, item) {
                                                    template.find('iframe').addClass('zoom-anim-dialog ');
                                                }
                                            }
                                        });
                                        $('[data-toggle=\'tooltip\']').tooltip({container: 'body'});
                                        if (type_show == 'slider' && rows != 1) {
                                            var $tag_id = $('#so_super_category_154'),
                                                    parent_active = $('.spcat-items-selected', $tag_id),
                                                    total_product = parent_active.data('total'),
                                                    tab_active = $('.ltabs-items-inner', parent_active),
                                                    nb_column0 = 4,
                                                    nb_column1 = 4,
                                                    nb_column2 = 3,
                                                    nb_column3 = 2,
                                                    nb_column4 = 1;
                                            tab_active.owlCarousel2({
                                                nav: false,
                                                dots: false,
                                                margin: 10,
                                                loop: true,
                                                autoplay: true,
                                                autoplayHoverPause: true,
                                                autoplayTimeout: 5000,
                                                autoplaySpeed: 2000,
                                                mouseDrag: true,
                                                touchDrag: true,
                                                navRewind: true,
                                                navText: ['', ''],
                                                responsive: {
                                                    0: {
                                                        items: nb_column4,
                                                        nav: (total_product / 1) >= nb_column4 ? true : false,
                                                    },
                                                    480: {
                                                        items: nb_column3,
                                                        nav: (total_product / 1) >= nb_column3 ? false : ((false) ? true : false),
                                                    },
                                                    768: {
                                                        items: nb_column2,
                                                        nav: (total_product / 1) >= nb_column2 ? false : ((false) ? true : false),
                                                    },
                                                    992: {
                                                        items: nb_column1,
                                                        nav: (total_product / 1) >= nb_column1 ? false : ((false) ? true : false),
                                                    },
                                                    1200: {
                                                        items: nb_column0,
                                                        nav: (total_product / 1) >= nb_column0 ? true : false,
                                                    },
                                                }
                                            });
                                        }
                                    }
                                },
                                dataType: 'json'
                            });

                        } else {
                            $('.spcat-item', $items_content).removeAttr('style').addClass('new-spcat-item').css('opacity', 0);
                            showAnimateItems(_items_active);
                        }
                    });

                    function updateStatus($el) {
                        $('.spcat-loadmore-btn', $el).removeClass('loading');
                        var countitem = $('.spcat-item', $el).length;
                        $('.spcat-image-loading', $el).css({display: 'none'});
                        $('.spcat-loadmore-btn', $el).parent().attr('data-rl_start', countitem);
                        var rl_total = $('.spcat-loadmore-btn', $el).parent().attr('data-rl_total');
                        var rl_load = $('.spcat-loadmore-btn', $el).parent().attr('data-rl_load');
                        var rl_allready = $('.spcat-loadmore-btn', $el).parent().attr('data-rl_allready');

                        if (countitem >= rl_total) {
                            $('.spcat-loadmore-btn', $el).addClass('loaded');
                            $('.spcat-image-loading', $el).css({display: 'none'});
                            $('.spcat-loadmore-btn', $el).attr('data-label', rl_allready);
                            $('.spcat-loadmore-btn', $el).removeClass('loading');
                        }
                    }

                    $btn_loadmore.on('click.loadmore', function () {
                        var $this = $(this);
                        if ($this.hasClass('loaded') || $this.hasClass('loading')) {
                            return false;
                        } else {
                            $this.addClass('loading');
                            $('.spcat-image-loading', $this).css({display: 'inline-block'});
                            var rl_start = $this.parent().attr('data-rl_start'),
                                    rl_moduleid = $this.parent().attr('data-modid'),
                                    rl_ajaxurl = $this.parent().attr('data-ajaxurl'),
                                    effect = $this.parent().attr('data-effect'),
                                    field_order = $this.parent().attr('data-field_order'),
                                    items_active = $this.parent().attr('data-active-content');
                            var _items_active = $(items_active, $element);
                            $.ajax({
                                type: 'POST',
                                url: rl_ajaxurl,
                                data: {
                                    spcat_module_id: rl_moduleid,
                                    is_ajax_super_category: 1,
                                    ajax_reslisting_start: rl_start,
                                    categoryid: category_id,
                                    fieldorder: field_order,
                                    setting: setting,
                                    load_more: 1,
                                    lbmoduleid: '154'
                                },
                                success: function (data) {
                                    if (data.items_markup != '') {
                                        $(data.items_markup).insertAfter($('.spcat-item', _items_active).nextAll().last());
                                        $('.spcat-image-loading', $this).css({display: 'none'});
                                        showAnimateItems(_items_active);
                                        updateStatus(_items_active);
                                    }
                                }, dataType: 'json'
                            });
                        }
                        return false;
                    });
                })('#so_super_category_154');
            });
        </script>

        <div class="so-spotlight2">
            <div class="container">
                <div class="row">
                    <div class="module so-latest-blog latest-blog col-md-4 col-sm-6 col-xs-12">
                        <h3 class="modtitle"><span>CẬP NHẬT</span></h3>
                        <div id="so_latest_blog_180_10303509171575512144"
                             class="so-blog-external button-type2 button-type2">
                            <div class="blog-external-simple">
                                <div class="media">
                                    <div class="item">
                                        <div class="media-body">

                                            <div class="media-date-added">28<br />
                                                <span>Mar</span></div>
                                            <div class="media-content">
                                                <h4 class="media-heading">
                                                    <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=simple_blog/article/view&amp;simple_blog_article_id=8"
                                                       title="Ac tincidunt Suspendisse malesuada" target="_blank">Ac
                                                        tincidunt Suspendisse malesuada</a>
                                                </h4>
                                                <div class="description">

                                                    Commodo laoreet semper tincidunt lorem Vestibulum nunc
                                                    at In
                                                    Curabitur magna.....
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item">
                                        <div class="media-body">

                                            <div class="media-date-added">01<br />
                                                <span>Sep</span></div>
                                            <div class="media-content">
                                                <h4 class="media-heading">
                                                    <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=simple_blog/article/view&amp;simple_blog_article_id=2"
                                                       title="Biten demonstraverunt lector legere legunt saepius"
                                                       target="_blank">Biten demonstraverunt lector legere
                                                        legunt
                                                        saepius</a>
                                                </h4>
                                                <div class="description">
                                                    Commodo laoreet semper tincidunt lorem Vestibulum nunc
                                                    at In
                                                    Curabitur magna. Eu.....
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="module so-latest-blog latest-blog col-md-4 col-sm-6 col-xs-12">
                        <h3 class="modtitle"><span>THÔNG TIN</span></h3>
                        <div id="so_latest_blog_180_10303509171575512144"
                             class="so-blog-external button-type2 button-type2">
                            <div class="blog-external-simple">
                                <div class="media">
                                    <div class="item">
                                        <div class="media-body">

                                            <div class="media-date-added">28<br />
                                                <span>Mar</span></div>
                                            <div class="media-content">
                                                <h4 class="media-heading">
                                                    <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=simple_blog/article/view&amp;simple_blog_article_id=8"
                                                       title="Ac tincidunt Suspendisse malesuada" target="_blank">Ac
                                                        tincidunt Suspendisse malesuada</a>
                                                </h4>
                                                <div class="description">

                                                    Commodo laoreet semper tincidunt lorem Vestibulum nunc
                                                    at In
                                                    Curabitur magna.....
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item">
                                        <div class="media-body">

                                            <div class="media-date-added">01<br />
                                                <span>Sep</span></div>
                                            <div class="media-content">
                                                <h4 class="media-heading">
                                                    <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=simple_blog/article/view&amp;simple_blog_article_id=2"
                                                       title="Biten demonstraverunt lector legere legunt saepius"
                                                       target="_blank">Biten demonstraverunt lector legere
                                                        legunt
                                                        saepius</a>
                                                </h4>
                                                <div class="description">
                                                    Commodo laoreet semper tincidunt lorem Vestibulum nunc
                                                    at In
                                                    Curabitur magna. Eu.....
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="module testimonial col-md-4 col-sm-12">
                        <div class="clients_say">
                            <div class="block-title">
                                <h3>Ý KIẾN KHÁCH HÀNG</h3>
                            </div>
                            <div class="owl-carousel slider-clients-say">
                                <div class="block_content">
                                    <div class="image"><img src="image/catalog/cms/clients_say.png" alt="">
                                    </div>
                                    <div class="block-info">
                                        <div class="text">"Aliquam1 ut tellus dignissim, cursus erat
                                            ultricies tellus
                                            cursus erat ultricies tellus.. Nulla tempus sollicitudin mauris
                                            cursus
                                            dictum. Commodo laoreet semper tincidunt lorem. Etiam id diam
                                            diam."</div>
                                        <div class="info">
                                            <div class="author">Aliquam Tellus</div>

                                        </div>
                                    </div>
                                </div>

                                <div class="block_content">
                                    <div class="image"><img src="image/catalog/cms/clients_say.png" alt="">
                                    </div>
                                    <div class="block-info">
                                        <div class="text">"Aliquam1 ut tellus dignissim, cursus erat
                                            ultricies tellus
                                            cursus erat ultricies tellus.. Nulla tempus sollicitudin mauris
                                            cursus
                                            dictum. Commodo laoreet semper tincidunt lorem. Etiam id diam
                                            diam."</div>
                                        <div class="info">
                                            <div class="author">Aliquam Tellus</div>
                                        </div>
                                    </div>
                                </div>

                                <div class="block_content">
                                    <div class="image"><img src="image/catalog/cms/clients_say.png" alt="">
                                    </div>
                                    <div class="block-info">
                                        <div class="text">"Aliquam1 ut tellus dignissim, cursus erat
                                            ultricies tellus
                                            cursus erat ultricies tellus.. Nulla tempus sollicitudin mauris
                                            cursus
                                            dictum. Commodo laoreet semper tincidunt lorem. Etiam id diam
                                            diam."</div>
                                        <div class="info">
                                            <div class="author">Aliquam Tellus</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</t:template-website>
