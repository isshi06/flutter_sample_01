import 'package:flutter/material.dart';
import 'package:flutter_sample_01/next_page.dart';
import 'package:flutter_sample_01/service/api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // このウィジェットは、アプリケーションのホームページです。ステートフル、つまり
  // 影響を与えるフィールドを含むStateオブジェクト（以下に定義）があること
  // それがどのように見えるか。

  // このクラスは、状態の構成です。それは値を保持します（これでは
  // 親（この場合はアプリウィジェット）によって提供されたタイトル）と
  // stateのビルドメソッドで使用されます。ウィジェットサブクラスのフィールドは次のとおりです。
  // 常に「最終」とマークされます。

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String dropdownValue = 'One';
  ApiService api = ApiService();

  void _incrementCounter() {
    setState(() {
      // このsetStateの呼び出しは、Flutterフレームワークに何かが持っていることを伝えます
      // この状態で変更されたため、以下のビルドメソッドが再実行されます
      // 表示に更新された値を反映できるようにします。変更した場合
      // setState（）を呼び出さずに_counterを実行すると、ビルドメソッドは
      // 再度呼び出されたため、何も起こらなかったようです。
      _counter++;
    });
  }

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // このメソッドは、たとえば完了したように、setStateが呼び出されるたびに再実行されます。
    // 上記の_incrementCounterメソッドによって。
    return Scaffold(
      appBar: AppBar(
        // ここでは、によって作成されたMyHomePageオブジェクトから値を取得します
        // App.buildメソッドを使用し、それを使用してアプリバーのタイトルを設定します。
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: '名前',
              ),
              onChanged: (text) {
                print('First text field: $text');
              },
              controller: myController,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: '趣味',
              ),
            ),
            ElevatedButton(
              child: const Text('新規登録'),
              onPressed: () {
                // TODO: 新規登録
              },
            ),
            ElevatedButton(
              onPressed: api.zipApi,
              child: const Text('郵便番号API'),
            ),
            // ElevatedButton(
            //   onPressed: _zipApiPageChange,
            //   child: const Text('郵便番号API画面遷移有り'),
            // ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => NextPage('夏目漱石'),
                  ),
                );
              },
              child: const Text('画面遷移'),
            ),
            ElevatedButton(
              onPressed: api.localAPITest,
              child: const Text('ローカルAPIテスト'),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ), // この末尾のコンマにより、ビルドメソッドの自動フォーマットがより適切になります。
    );
  }
}
