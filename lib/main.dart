import 'package:flutter/material.dart';
import 'package:flutter_sample_01/next_page.dart';
import 'package:flutter_sample_01/service/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
      const ProviderScope(
        child: MyApp(),
      ),
  );
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
      home: const ProviderPage(),
    );
  }
}

// Provider example.

// 1ずつ値を増加させるためのカウンターProvider
final counterProvider = StateProvider((ref) => 0);

// カウンターの値を2倍にした値を提供するProvider
final doubleCounterProvider = Provider((ref) {
  final count = ref.watch(counterProvider);
  return count * 2;
});

// Widget example.
class ProviderPage extends ConsumerWidget {
  const ProviderPage({Key? key}) : super(key: key);

  static const String title = 'ProviderPage';
  static const String routeName = 'provider-page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // doubleCounterProvider を読み取る。
    // counterProvider の状態が更新されると doubleCounterProvider も変更され、再構築される。
    final doubleCount = ref.watch(doubleCounterProvider);

    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '2倍されたカウント値：',
            style: Theme.of(context).textTheme.headline6,
          ),
          // doubleCounterProvider の値を表示
          Text(
            '$doubleCount',
            style: Theme.of(context).textTheme.headline1,
          ),
          ElevatedButton(
            // counterProvider の値を+1する。
            onPressed: () => ref.read(counterProvider.notifier).update(
                  (state) => state + 1,
            ),
            child: const Text('Increase Count'),
          ),
        ],
      ),
    );
  }
}