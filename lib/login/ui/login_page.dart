import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/home_page.dart';
import 'package:flutter_sample_01/profile/model/login_user.dart';

// ログイン画面用Widget
class LoginPage extends ConsumerWidget {
  LoginPage({Key? key}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
  // メッセージ表示用
  String infoText = '';
  // 入力されたメールアドレス（ログイン）
  String loginUserEmail = 'sample@example.com';
  // 入力されたパスワード（ログイン）
  String loginUserPassword = 'password';

  LoginUser user = const LoginUser('メルアド(直書)', '仮');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localUser = ref.watch(userProvider.state);
    final userEmail = ref.watch(userEmailProvider.state);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // 中央寄せ
              children: <Widget>[
                // const SizedBox(height: 32),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'メールアドレス'),
                  onChanged: (String value) {
                    loginUserEmail = value;
                    // setState(() {
                    //   loginUserEmail = value;
                    // });
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'パスワード'),
                  obscureText: true,
                  onChanged: (String value) {
                    loginUserPassword = value;
                    // setState(() {
                    //   loginUserPassword = value;
                    // });
                  },
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      // メール/パスワードでログイン
                      final auth = FirebaseAuth.instance;
                      final result = await auth.signInWithEmailAndPassword(
                        email: loginUserEmail,
                        password: loginUserPassword,
                      );
                      // ログインに成功した場合
                      // TODO: ログインユーザーを保持する処理
                      final user = result.user!;
                      // var appUser = new LoginUser(user.email, '仮');
                      print('----------------------------');
                      localUser.update((user) => LoginUser(user.email, '仮'));
                      // if (user.email is String) {
                      //userEmail.update((user) => user.email);
                      // }
                      userEmail.state = user.email;
                      print(userEmail.state);
                      // ref.read(userProvider) = appUser;
                      print('login user email: ${user.email}');
                      await Navigator.of(context).pushReplacement<void, void>(
                        MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }),
                      );
                    } on Exception catch (e) {
                      // ログインに失敗した場合
                      infoText = 'ログインNG：${e.toString()}';
                      // setState(() {
                      //   infoText = 'ログインNG：${e.toString()}';
                      // });
                    }
                  },
                  child: const Text('ログイン'),
                ),
                const SizedBox(height: 8),
                Text(infoText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
