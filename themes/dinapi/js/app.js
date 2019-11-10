///////////////////////////
//Codigo VUE
///////////////////////////
$(document).ready(function() {
  $.ajaxSetup({
    headers: {
      "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content")
    }
  });

  var app = new Vue({
    el: "#app",
    data: {
      sending: false,
      heights: [
        { section: "head", length: 0 },
        { section: "eje", length: 0 },
        { section: "us", length: 0 },
        { section: "noticias", length: 0 },
        { section: "enlaces", length: 0 }
      ],
      n: 5,
      section: "head",
      enabled: true,
      height: 0,
      width: 0,
      firstScroll: true,
      responsive: 767,
      heightsDivs: ["", "", "", "", ""],
      marginTops: [
        { id: "main-image", extra: "menu", pos: 0, resp: "" },
        { id: "main-message", extra: "menu", pos: 0, resp: "" }
      ]
    },
    created() {
      var self = this;
      $(window).resize(function() {
        self.firstScroll = true;
        self.setSizes();
      });
      $(window).scroll(function() {
        if (self.enabled) {
          var pos = $(this).scrollTop();
          self.asignSection(pos);
        }
      });
    },
    mounted() {
      this.initialize();
    },
    updated() {
      this.updatePositions();
    },
    methods: {
      asignSection: function(pos) {
        for (i = this.n - 1; i > -1; i--) {
          if (this.heights[i].length < pos) {
            this.section = this.heights[i].section;
            i = -1;
          }
        }
      },
      setSizes: function() {
        this.height = $(window).height();
        this.width = $(window).width();

        for (i = 0; i < this.marginTops.length; i++) {
          this.marginTops[i].resp = this.marginTop(
            this.marginTops[i].id,
            this.marginTops[i].extra,
            this.marginTops[i].pos
          );
        }
        this.updatePositions();
      },
      anime: function() {
        anime({
          targets: "#btn-more",
          translateY: "50vh",
          duration: 300,
          loop: 1,
          direction: "alternate",
          easing: "easeInCubic"
        });
      },
      marginTop: function(id, extra = null, pos = -1) {
        var r = "";
        if (this.width > this.responsive) {
          var more = 0;
          var obj = $("#" + id);
          if (extra) {
            //suma que se realiza solo en la primera pantalla
            more = $("#" + extra).height();
          }
          var sum = obj.height() / 2 + more;
          var resp = this.height / 2 - sum;

          if (resp >= 0) {
            if (pos != -1) {
              if (pos != 0) {
                this.heightsDivs[pos] = "height:" + this.height + "px;";
              } else {
                if (this.imagenOverflow()) {
                  this.heightsDivs[pos] = "height:auto !important";
                } else {
                  this.heightsDivs[pos] = "height:" + this.height + "px;";
                }
              }
            }
            r = "margin-top:" + resp + "px !important";
          } else if (pos != -1) {
            this.heightsDivs[pos] = "height:auto !important";
          }
          return r;
        }
      },
      heightLS: function(fromId, toId, mode = 0) {
        var resp = 0;
        if (mode == 0) {
          resp = this.heights[toId].length - $("#" + fromId).position().top;
        } else {
          resp = $("#" + toId).offset().top - $("#" + fromId).offset().top;
        }
        return resp > 0 ? resp : 0;
      },
      updatePositions: function() {
        if ($(".noticias").length) {
          for (i = 0; i < this.heights.length; i++) {
            this.heights[i].length = $(
              "#" + this.heights[i].section
            ).position().top;
          }
        }
      },
      imagenOverflow: function() {
        var target = $("#main-image");
        var resp = false;
        const pos = target.height() + target.offset().top;
        if (pos > this.height) {
          resp = true;
        }
        return resp;
      },
      initialize: function() {
        this.setSizes();
      }
    }
  });

  //Permite mover entre las pantallas
  $(function() {
    $(".navigate").click(function() {
      app.enabled = false;
      if (
        location.pathname.replace(/^\//, "") ==
          this.pathname.replace(/^\//, "") &&
        location.hostname == this.hostname
      ) {
        var $target = $(this.hash);
        $target =
          ($target.length && $target) || $("[name=" + this.hash.slice(1) + "]");

        if ($target.length) {
          var targetOffset = $target.offset().top + 1;

          $("html,body").animate({ scrollTop: targetOffset }, 1500);
          app.enabled = true;

          return false;
        }
      }
    });
  });

  $(window).on("load", function() {
    app.initialize();
  });
  $(".loaddepend").each(function(index) {
    $(this).on("load", function() {
      app.initialize();
    });
  });
});

///////////////////////////
//Codigo VUE
///////////////////////////

///////////////////////////
//Carousel
///////////////////////////
$(document).ready(function() {
  $(".owl-carousel").owlCarousel({
    loop: true,
    margin: 10,
    responsiveClass: true,
    autoplay: true,
    dotsEach: true,
    items: 4,
    responsive:{
      0:{
          items:2
        },
          600:{
              items:3
          },
          1000:{
              items:4
          }
    }
  });

  $(".owl-carousel-banners").owlCarousel({
    loop: true,
    margin: 10,
    responsiveClass: true,
    autoplay: true,
    dotsEach: true,
    items: 3,
    responsive:{
      0:{
              items:2
          },
          600:{
              items:3
          },
          1000:{
              items:3
          }
    }
  });
});

///////////////////////////
//Carousel
///////////////////////////
