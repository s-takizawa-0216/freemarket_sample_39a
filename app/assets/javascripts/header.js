$(document).on('turbolinks:load', function() {

    $(function(){

        var menuBtn_category = $(".left__list__category"),
        menuContent_category = $(".left__list__category__pulldown__name");
        menuBtn_bland = $(".left__list__brand"),
        menuContent_bland = $(".left__list__brand__pulldown__name");

        menuBtn_category.mouseover(function(){
        menuContent_category.show();
        });

        menuBtn_category.mouseout(function(){
        menuContent_category.hide();
        });

        menuContent_category.mouseover(function(){
        $(this).find('ul').show();
        });

        menuContent_category.mouseout(function(){
        $(this).find('ul').hide();
        });

        menuBtn_bland.mouseover(function(){
        menuContent_bland.show();
        });

        menuBtn_bland.mouseout(function(){
        menuContent_bland.hide();
        });

        var rightBtn = $(".mypage"),
        rightContent = $(".header-mypage__box");

        rightBtn.mouseover(function(){
        rightContent.show();
        })

        rightContent.mouseout(function(){
        rightContent.hide();
        });

        $(".notice").mouseover(function(){
        $(".header-notice__box").show();
        });

        $(".notice").mouseout(function(){
        $(".header-notice__box").hide();
        });

    }, false);
})
