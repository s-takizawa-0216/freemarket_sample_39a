window.addEventListener('load', function(){

        var menuBtn = $(".left__list__category"),
        menuContent = $(".left__list__category__pulldown__name");
        menuBtn.mouseover(function(){
        menuContent.show();
        });

        menuBtn.mouseout(function(){
        menuContent.hide();
        });

        menuContent.mouseover(function(){
        $(this).find('ul').show();
        });

        menuContent.mouseout(function(){
        $(this).find('ul').hide();
        });

        var menuBtn2 = $(".left__list__brand"),
        menuContent2 = $(".left__list__brand__pulldown__name");
        menuBtn2.mouseover(function(){
        menuContent2.show();
        });

        menuBtn2.mouseout(function(){
        menuContent2.hide();
        });


      }, false);
