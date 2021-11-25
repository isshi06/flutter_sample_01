import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/service/api.dart';
import 'package:flutter_sample_01/service/zipcode.dart';

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


// Widget example.
class ProviderPage extends ConsumerWidget {
  const ProviderPage({Key? key}) : super(key: key);

  static const String title = 'ProviderPage';
  static const String routeName = 'provider-page';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _zipcodeController = TextEditingController();
    final api = ApiService();
    final zipSearchResult = ref.watch(searchResultProvider);

    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      // AsyncValue は `.when` を使ってハンドリングする
      body: Column(
        children: [
          Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: '検索する郵便番号',
                  labelText: '郵便番号',
                ),
                controller: _zipcodeController,
              ),
              ElevatedButton(
                onPressed: () => ref.read(zipcodeProvider.notifier).update(
                      (state) => _zipcodeController.text,
                    ),
                child: const Text('住所検索'),
              ),
              Wrap(
                children: [
                  ref.watch(searchResultProvider).when(
                        // 非同期処理中は `loading` で指定したWidgetが表示される
                        loading: () => const CircularProgressIndicator(),
                        // エラーが発生した場合に表示されるWidgetを指定
                        error: (error, stack) => Text('Error: $error'),
                        // 非同期処理が完了すると、取得した `config` が `data` で使用できる
                        data: (zipSearchResult) {
                          return RefreshIndicator(
                            onRefresh: () async => ref.refresh(searchResultProvider),
                            child: Column(
                              children: [
                                Text(zipSearchResult['results'].toString()),
                              ],
                            ),
                          );
                        },
                      ),
                ],
              ),
            ],
          ),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
