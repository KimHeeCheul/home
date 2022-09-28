$(window).on("load", function () {
    var d = $("#status");
    var c = $("#preloader");
    var a = $("body");
    d.fadeOut();
    c.delay(0).fadeOut("fast");
    a.delay(0).css({overflow: "visible"});
    var e = document.getElementsByTagName("iframe");
    for (var b = 0; b < e.length; b++) {
        if (e[b].getAttribute("data-src")) {
            e[b].setAttribute("src", e[b].getAttribute("data-src"))
        }
    }
});
$(function () {
            var H = $(window).width();
        if (H > 1024) {
            var e = $(".dropdown");
            e.hover(function () {
                $(this).children(".dropdown-menu").fadeIn(300)
            }, function () {
                $(this).children(".dropdown-menu").fadeOut(300)
            })
        } else {
            var f = $(".navbar a.dropdown-toggle");
            f.on("click", function (L) {
                var I = $(this);
                var K = $(this).offsetParent(".dropdown-menu");
                var J = $(".nav li.open");
                $(this).parent("li").toggleClass("open");
                if (! K.parent().hasClass("nav")) {
                    I.next().css({
                        top: I[0].offsetTop,
                        left: K.outerWidth() - 4
                    })
                }
                J.not($(this).parents("li")).removeClass("open");
                return false
            })
        }
        var b = $("#nav-icon1");
        b.on("click", function () {
            $(this).toggleClass("open")
        });
        var F = $(".tabs .tab-links a, .tab-links-2 a, .tab-links-3 a");
        var o = $(".slick-multiItem");
        var p = $(".slick-multiItem2");
        F.on("click", function (J) {
            var I = $(this).attr("href");
            var K = $(".tabs " + I);
            K
                .show()
                .siblings()
                .hide();
            $(this)
                .parent("li")
                .addClass("active")
                .siblings()
                .removeClass("active");
            J.preventDefault();
            o.slick("setPosition");
            p.slick("setPosition")
        });
        function h(J) {
            var N = Date.parse(J) - Date.parse(new Date());
            var M = Math.floor((N / 1000) % 60);
            var L = Math.floor((N / 1000 / 60) % 60);
            var K = Math.floor((N / (1000 * 60 * 60)) % 24);
            var I = Math.floor(N / (1000 * 60 * 60 * 24));
            return {
                total: N,
                days: I,
                hours: K,
                minutes: L,
                seconds: M
            }
        }
        function j(M, K) {
            var I = document.getElementById(M);
            if (I != null) {
                    var J = I.querySelector(".days");
                    var L = I.querySelector(".hours");
                    var N = I.querySelector(".minutes");
                    var O = I.querySelector(".seconds");
                    var Q = function () {
                        var R = h(K);
                        J.innerHTML = R.days;
                        L.innerHTML = ("0" + R.hours).slice(-2);
                        N.innerHTML = ("0" + R.minutes).slice(-2);
                        O.innerHTML = ("0" + R.seconds).slice(-2);
                        if (R.total<= 0) { clearInterval(P) } }; Q(); var P = setInterval(Q, 1000) } } var d = new Date(Date.parse(new Date()) + 25 * 24 * 60 * 60 * 1000); j("clockdiv", d); var G = jQuery(".tweet"); jQuery(G).each(function(J, K) { var I = jQuery(this).attr("id"); twttr.widgets.createTweet(I, K, { conversation: "none", cards: "hidden", linkColor: "default", theme: "light" }) }); p.slick({ infinite: true, slidesToShow: 6, slidesToScroll: 6, arrows: false, dots: true, responsive: [{ breakpoint: 1200, settings: { slidesToShow: 3, slidesToScroll: 3, infinite: true, dots: true } }, { breakpoint: 768, settings: { slidesToShow: 3, slidesToScroll: 3 } }, { breakpoint: 480, settings: { slidesToShow: 1, slidesToScroll: 1 } }] }); o.slick({ infinite: true, slidesToShow: 4, slidesToScroll: 4, arrows: false, draggable: true, dots: true, responsive: [{ breakpoint: 1024, settings: { slidesToShow: 3, slidesToScroll: 3, infinite: true, dots: true } }, { breakpoint: 768, settings: { slidesToShow: 2, slidesToScroll: 2 } }, { breakpoint: 480, settings: { slidesToShow: 1, slidesToScroll: 1 } }] }); var q = $(".slick-multiItemSlider"); q.slick({ infinite: true, slidesToShow: 4, slidesToScroll: 4, arrows: false, draggable: true, autoplay: true, autoplaySpeed: 2000, dots: true, responsive: [{ breakpoint: 1024, settings: { slidesToShow: 3, slidesToScroll: 3, infinite: true, dots: true } }, { breakpoint: 768, settings: { slidesToShow: 2, slidesToScroll: 2 } }, { breakpoint: 480, settings: { slidesToShow: 1, slidesToScroll: 1 } }] }); var x = $(".slider-single-item"); x.slick({ infinite: true, slidesToShow: 1, slidesToScroll: 1, arrows: true, dots: true, draggable: true, responsive: [{ breakpoint: 1024, settings: { slidesToShow: 1, slidesToScroll: 1, infinite: true, dots: true, arrows: true } }, { breakpoint: 768, settings: { slidesToShow: 1, slidesToScroll: 1 } }, { breakpoint: 480, settings: { slidesToShow: 1, slidesToScroll: 1, arrows: false, } }] }); var y = $(".slick-tw"); y.slick({ infinite: true, slidesToShow: 1, slidesToScroll: 1, dots: true, draggable: true, arrows: false, responsive: [{ breakpoint: 1024, settings: { slidesToShow: 1, slidesToScroll: 1, infinite: true, dots: true, arrows: false } }, { breakpoint: 768, settings: { slidesToShow: 1, slidesToScroll: 1, } }, { breakpoint: 480, settings: { slidesToShow: 1, slidesToScroll: 1, arrows: false, } }] }); var z = $(".slider-for"); var B = $(".slider-nav"); z.slick({ slidesToShow: 1, slidesToScroll: 1, arrows: false, fade: true, asNavFor: ".slider-nav", }); B.slick({ slidesToShow: 5, slidesToScroll: 1, asNavFor: ".slider-for", dots: true, focusOnSelect: true, responsive: [{ breakpoint: 1024, settings: { slidesToShow: 3, slidesToScroll: 3, infinite: true, arrows: true } }, { breakpoint: 768, settings: { slidesToShow: 3, slidesToScroll: 3 } }, { breakpoint: 480, settings: { slidesToShow: 1, slidesToScroll: 1, arrows: true } }] }); var A = $(".slider-for-2"); var C = $(".slider-nav-2"); A.slick({ slidesToShow: 1, slidesToScroll: 1, arrows: false, fade: true, asNavFor: ".slider-nav-2", }); C.slick({ slidesToShow: 3, slidesToScroll: 1, asNavFor: ".slider-for-2", dots: false, arrows: true, focusOnSelect: true, vertical: true, }); var g = $(".fancybox-media"); g.fancybox({ openEffect: "float", closeEffect: "none", helpers: { media: {}, overlay: { locked: false } } }); g.attr("rel", "playlist").fancybox({ openEffect: "none", closeEffect: "none", prevEffect: "none", nextEffect: "none", helpers: { media: {} }, youtube: { autoplay: 1, hd: 1, wmode: "opaque", vq: "hd720" } }); var i = $(".img-lightbox"); i.fancybox({ helpers: { title: { type: "float" }, overlay: { locked: false } } }); i.fancybox({ afterShow: function() { var I = this.group.length, L, M; if (this.index == I - 1) { L = i.eq(0).attr("title"), M = i.eq(this.index - 1).attr("title") } else { if (this.index == 0) { L = i.eq(this.index + 1).attr("title"), M = i.eq(I - 1).attr("title") } else { L = i.eq(this.index + 1).attr("title"), M = i.eq(this.index - 1).attr("title") } } var J = $(".img-lightbox-next"); var K = $(".img-lightbox-prev"); J.attr("title", L); K.attr("title", M) } }); var l = $(".loginLink"); var w = $(".signupLink"); var k = $("#login-content"); var v = $("#signup-content"); var m = $(".login-wrapper"); var s = $(".overlay"); m.each(function() { $(this).wrap('<div class="overlay"></div>') }); l.on("click", function(I) { I.preventDefault(); k.parents(s).addClass("openform"); $(document).on("click", function(J) { var K = $(J.target); if ($(K).hasClass("overlay")) { $(K).find(k).each(function() { $(this).removeClass("openform") }); setTimeout(function() { $(K).removeClass("openform") }, 350) } }) }); w.on("click", function(I) { I.preventDefault(); v.parents(s).addClass("openform"); $(document).on("click", function(J) { var K = $(J.target); if ($(K).hasClass("overlay")) { $(K).find(v).each(function() { $(this).removeClass("openform") }); setTimeout(function() { $(K).removeClass("openform") }, 350) } }) }); var c = $(".close"); c.on("click", function(I) { I.preventDefault(); var J = $(".overlay"); J.removeClass("openform") }); var r = $(".ui.fluid.dropdown"); r.dropdown({ allowLabels: true }); r.dropdown({ "set selected": "Role1, Role2" }); $(window).scroll(function(I) { var K = $(window).scrollTop(), J = $("header"); if (K> 300) {
                            J.addClass("sticky")
                        } else {
                            J.removeClass("sticky")
                        }
                    }
                );
                var a = $("#back-to-top");
                a.on("click", function (I) {
                    I.preventDefault();
                    $("html,body").animate({
                        scrollTop: 0
                    }, 700)
                });
                var t = $("#discover-now");
                t.on("click", function (I) {
                    I.preventDefault();
                    $("html,body").animate({
                        scrollTop: $(document).height() - $(window).height()
                    }, 700)
                });
                if (H > 1200) {
                    var E = $(".sticky-sb");
                    var n = $(".main-content");
                    if (E.length > 0) {
                        var D = E.height(),
                            u = E.offset().top
                    }
                    $(window).scroll(function () {
                        if (E.length > 0) {
                            var I = $(window).scrollTop();
                            if (u < I) {
                                E.css("top", I - u + 80);
                                var J = E.offset().top + D,
                                    K = n.offset().top + n.height();
                                if (K < J) {
                                    var L = n.height() - D + 130;
                                    E.css("top", L)
                                }
                            } else {
                                E.css("top", "0")
                            }
                        }
                    });
                    $(window).resize(function () {
                        if (E.length > 0) {
                            D = E.height()
                        }
                    })
                }
            }
        );