// function previewFile() {
//   var preview = document.querySelector('.item_image');//どこでプレビューするか指定。'img[name="preview"]'などにすればimg複数あっても指定できます。
//   var file    = document.querySelector('input[type=file]').files[0];//'input[type=file]'で投稿されたファイル要素の0番目を参照します。input[type=file]にmutipleがなくてもこのコードになります。
//   var reader  = new FileReader();

//   reader.addEventListener("load", function () {
//     preview.src = reader.result;//めちゃめちゃ長い文字列が引き渡されます。ユーザーのファイルパスに紐付かない画像情報だと思います。
//   }, false);

//   if (file) {
//     reader.readAsDataURL(file);//ここでreaderのメソッドに引数としてfileを入れます。ここで、readerのaddEventListenerが発火します。
//   }
// }

$(document).ready(function () {
  $(".hidden").on('change', function(){
     var fileprop = $(this).prop('files')[0],
         find_img = $(this).parent().find('img'),
         filereader = new FileReader(),
         view_box = $(this).parent('.single-main__content__form__item__image');

    if(find_img.length){
       find_img.nextAll().remove();
       find_img.remove();
    }

    var img = '<div class="img_view"><img alt="" class="img"><p><a href="#" class="img_del">削除</a></p></div>';

    view_box.append(img);

    filereader.onload = function() {
      view_box.find('img').attr('src', filereader.result);
      console.log
      img_del(view_box);
    }
    filereader.readAsDataURL(fileprop);
  });

  function img_del(target){
    target.find("a.img_del").on('click',function(){
      var self = $(this),
          parentBox = self.parent().parent().parent();
      if(window.confirm('画像を削除します。\nよろしいですか？')){
        setTimeout(function(){
          parentBox.find('input[type=file]').val('');
          parentBox.find('.img_view').remove();
        } , 0);
      }
      return false;
    });
  }

});
