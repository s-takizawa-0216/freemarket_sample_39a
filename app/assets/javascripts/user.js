$(document).on('turbolinks:load', function() {

  // ①タブをクリックしたら発動
  $('.tab li').click(function() {

    // ②クリックされたタブの順番を変数に格納
    var index = $('.tab li').index(this);

    // ③クリック済みタブのデザインを設定したcssのクラスを一旦削除
    $('.tab li').removeClass('active');

    // ④クリックされたタブにクリック済みデザインを適用する
    $(this).addClass('active');

    // ⑤コンテンツを一旦非表示にし、クリックされた順番のコンテンツのみを表示
    $('.area ul').removeClass('show').eq(index).addClass('show');

  });


  //取引中と過去の取引のタブの切り替え
  $(function() {

    // ①タブをクリックしたら発動
    $('.tab-2 li').click(function() {

      // ②クリックされたタブの順番を変数に格納
      var index = $('.tab-2 li').index(this);

      // ③クリック済みタブのデザインを設定したcssのクラスを一旦削除
      $('.tab-2 li').removeClass('active-2');

      // ④クリックされたタブにクリック済みデザインを適用する
      $(this).addClass('active-2');

      // ⑤コンテンツを一旦非表示にし、クリックされた順番のコンテンツのみを表示
      $('.area-2 ul').removeClass('show-2').eq(index).addClass('show-2');

    });
  });
});
