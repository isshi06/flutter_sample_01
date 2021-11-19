import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // 「フラッターラン」でアプリケーションを実行してみてください。が表示されます
        // アプリケーションには青いツールバーがあります。次に、アプリを終了せずに、試してみてください
        // 以下のprimarySwatchをColors.greenに変更してから、
        // 「ホットリロード」（「フラッターラン」を実行したコンソールで「r」を押します。
        // または、Flutter IDEで「ホットリロード」への変更を保存するだけです）。
        // カウンターがゼロにリセットされなかったことに注意してください。アプリケーション
        // 再起動されません。
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
    //
    // Flutterフレームワークは、ビルドメソッドを再実行するように最適化されています
    // 高速なので、更新が必要なものはすべて再構築できます
    // ウィジェットのインスタンスを個別に変更する必要はありません。
    return Scaffold(
      appBar: AppBar(
        // ここでは、によって作成されたMyHomePageオブジェクトから値を取得します
        // App.buildメソッドを使用し、それを使用してアプリバーのタイトルを設定します。
        title: Text(widget.title),
      ),
      body: Center(
        // センターはレイアウトウィジェットです。それは一人っ子を取り、それを配置します親の真ん中で。
        child: Column(
          //
          // 列はレイアウトウィジェットでもあります。それは子供たちのリストを取り、
          // それらを垂直に配置します。デフォルトでは、サイズに合わせてサイズが調整されます
          //
          // 「デバッグペインティング」を呼び出します（コンソールで「p」を押して、
          // AndroidのFlutterInspectorからの「デバッグペイントの切り替え」アクション
          // Studio、またはVisual Studio Codeの「ToggleDebugPaint」コマンド）
          // 各ウィジェットのワイヤーフレームを確認します。
          //
          // 列には、それ自体のサイズとサイズを制御するためのさまざまなプロパティがあります。
          // 子をどのように配置するか。ここでは、mainAxisAlignmentを使用して
          // 子供を垂直に中央に配置します。ここでの主軸は垂直です
          // 列が垂直であるため、軸（交差軸は水平）。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
