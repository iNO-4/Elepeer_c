// $(function () {
//   // メソッドの定義
//   var methods = {
//     email: function (value, element) { // メールアドレスの正規表現
//       return this.optional(element) || /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/i.test(value);
//     },
//     password: function (value, element) { // パスワードの正規表現
//       return this.optional(element) || /^(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}$/i.test(value);
//     },
//   }
//   // メソッドの追加
//   $.each(methods, function (key) {
//     $.validator.addMethod(key, this);
//   });
//   // バリデーションの実行
//   $("#signup-form").validate({
//     // ルール設定
//     rules: {
//       "user[name]": {
//         required: true // ニックネームの入力有無チェック
//       },
//       "user[email]": {
//         required: true, // メールアドレスの入力有無チェック
//         email: true // メールアドレスの正規表現チェック
//       },
//       "user[password]": {
//         required: true, // パスワードの入力有無チェック
//         password: true // メールアドレスの正規表現チェック
//       },
//     },
//     // エラーメッセージの定義
//     messages: {
//       "user[name]": {
//         required: "ニックネームを入力してください"
//       },
//       "user[email]": {
//         required: "メールアドレスを入力してください",
//         email: "フォーマットが不適切です"
//       },
//       "user[password]": {
//         required: "パスワードを入力してください",
//         password: "英字と数字両方を含むパスワードを入力してください"
//       },
//     },
//     errorClass: "invalid", // バリデーションNGの場合に追加するクラス名の指定
//     errorElement: "p", // エラーメッセージの要素種類の指定
//     validClass: "valid", // バリデーションOKの場合に追加するクラス名の指定
//     }
//   });
//   // 入力欄をフォーカスアウトしたときにバリデーションを実行
//   $("#name, #email, #password").blur(function () {
//     $(this).valid();
//   });
// });

$(function(){
  //フォーム指定
  $('sign_up_field').validate({

    //検証ルール設定
    rules: {
      //ここに検証ルールを設定
      "new_customer[last_name]": {
        required: true
      }
    },

    //エラーメッセージ設定
    messages: {
      //ここにエラーメッセージを設定
      last_name: {
        required: '入力必須です'
      }
    },

    //エラーメッセージ出力箇所設定
    errorPlacement: function(error, element){
      //ここにエラーメッセージの出力箇所を設定
      error.insertAfter(element);
    },
    debug: true
  });
});
