import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_01/zip_search/ui/search_by_zipcode.dart';
import 'package:flutter_sample_01/home_page.dart';

// TODO: サンプルコードコピペのため、実際に動く形に
// ログイン画面用Widget
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // メッセージ表示用
  String infoText = '';
  // 入力したメールアドレス・パスワード
  String email = '';
  String password = '';
  // 入力されたメールアドレス
  String newUserEmail = '';
  // 入力されたパスワード
  String newUserPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // メールアドレス入力
                TextFormField(
                  decoration: const InputDecoration(labelText: 'メールアドレス'),
                  onChanged: (String value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
                // パスワード入力
                TextFormField(
                  decoration: const InputDecoration(labelText: 'パスワード'),
                  obscureText: true,
                  onChanged: (String value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  // メッセージ表示
                  child: Text(infoText),
                ),
                SizedBox(
                  width: double.infinity,
                  // ユーザー登録ボタン
                  child: ElevatedButton(
                    child: const Text('ユーザー登録'),
                    onPressed: () async {
                      try {
                        // メール/パスワードでユーザー登録
                        final auth = FirebaseAuth.instance;
                        await auth.createUserWithEmailAndPassword(
                          email: email,
                          password: password,
                        );
                        // ユーザー登録に成功した場合
                        // ホーム画面に遷移＋ログイン画面を破棄
                        await Navigator.of(context).pushReplacement<void, void>(
                          MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }),
                        );
                      } on Exception catch (e) {
                        // ユーザー登録に失敗した場合
                        setState(() {
                          infoText = '登録に失敗しました：${e.toString()}';
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
