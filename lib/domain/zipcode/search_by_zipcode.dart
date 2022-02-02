import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/entity/zip_api_result.dart';
import 'package:flutter_sample_01/service/zipcode.dart';

class SearchByZipcode extends ConsumerWidget {
  SearchByZipcode({Key? key}) : super(key: key);
  final _zipcodeController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: ListView(
        padding: const EdgeInsets.all(30),
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
                      loading: () => const Center(child: CircularProgressIndicator()),
                      // エラーが発生した場合に表示されるWidgetを指定
                      error: (error, stack) => Text('Error: $error'),
                      // 非同期処理が完了すると、取得した `config` が `data` で使用できる
                      data: (ZipApiResult zipApiResult) {
                        return RefreshIndicator(
                          onRefresh: () async => ref.refresh(searchResultProvider),
                          child: Center(
                            child: Column(
                              children: [
                                if (zipApiResult.results == null) const Text('検索結果がありません'),
                                if (zipApiResult.results != null)
                                  ListTile(
                                    leading: const Text('都道府県コード'),
                                    title: Text(zipApiResult.results![0].prefcode.toString()),
                                  ),
                                if (zipApiResult.results != null)
                                  ListTile(
                                    leading: const Text('都道府県名'),
                                    title: Text(zipApiResult.results![0].address1.toString()),
                                  ),
                                if (zipApiResult.results != null)
                                  ListTile(
                                    leading: const Text('都道府県名カナ'),
                                    title: Text(zipApiResult.results![0].kana1.toString()),
                                  ),
                                if (zipApiResult.results != null)
                                  ListTile(
                                    leading: const Text('住所2'),
                                    title: Text(zipApiResult.results![0].address2.toString()),
                                  ),
                                if (zipApiResult.results != null)
                                  ListTile(
                                    leading: const Text('住所2カナ'),
                                    title: Text(zipApiResult.results![0].kana2.toString()),
                                  ),
                                if (zipApiResult.results != null)
                                  ListTile(
                                    leading: const Text('住所3'),
                                    title: Text(zipApiResult.results![0].address3.toString()),
                                  ),
                                if (zipApiResult.results != null)
                                  ListTile(
                                    leading: const Text('住所3カナ'),
                                    title: Text(zipApiResult.results![0].kana3.toString()),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
              ],
            ),
        ],
      ),
    );
  }
}
