$(function() {

  // フォーカスアウト
  $('#textBox-price').on('blur', function(){
    var num = $(this).val();
    num = num.replace(/(\d)(?=(\d\d\d)+$)/g, '$1,');
    $(this).val(num);
  });

  // フォーカス
  $('#textBox').on('focus', function(){
    var num = $(this).val();
    num = num.replace(/,/g, '');
    $(this).val(num);
  });

});
