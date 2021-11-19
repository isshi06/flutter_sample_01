import 'package:flutter/material.dart';
import 'package:flutter_sample_01/next_page.dart';

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
      body: Center(
        // センターはレイアウトウィジェットです。それは一人っ子を取り、それを配置します親の真ん中で。
        child: ElevatedButton(
          child: const Text('次へ'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextPage('夏目漱石')),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // この末尾のコンマにより、ビルドメソッドの自動フォーマットがより適切になります。
    );
  }
}
