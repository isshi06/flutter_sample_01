import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/service/meal_history.dart';

class MealHistoryHome extends ConsumerWidget {
  MealHistoryHome({Key? key}) : super(key: key);

  MealHistoryService mealHistory = MealHistoryService();
  final _mealController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _selectItem = ref.watch(dropdownSelectedProvider);
    final _counter = ref.watch(updateCountProvider);
    // TODO: 表示するMealHistoryも状態として管理して、watchで更新検知できるように
    // 常に見るのではなく再描画するだけでもいいかもしれない
    print('-- widget MealHistoryHome build --');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: '説明',
              labelText: 'description',
            ),
            controller: _mealController,
          ),
          DropdownButton(
            items: ref.read(dropdownProvider).map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: _selectItem,
            onChanged: (String? value) {
              ref.read(dropdownSelectedProvider.notifier).update(
                    (state) => value!,
                  );
            },
          ),
          ElevatedButton(
            onPressed: () async {
              await mealHistory.postHistory(_mealController.text, _selectItem!);
              // 画面更新用処理
              print('-----------------------記録ボタン');
              ref.read(updateCountProvider.notifier).update(
                    (state) => state + 1,
                  );
              print(ref.read(updateCountProvider));
            },
            child: const Text('記録'),
          ),
          ElevatedButton(
            onPressed: () async {
              print('-----------------------更新ボタン');
              // _counter += 1;
              ref.read(updateCountProvider.notifier).update(
                    (state) => state + 1,
                  );
              print(ref.read(updateCountProvider));
            },
            child: const Text('更新'),
          ),
          Wrap(
            children: [
              ref.watch(mealHistoryProvider).when(
                    // 非同期処理中は `loading` で指定したWidgetが表示される
                    loading: () => const Center(child: CircularProgressIndicator()),
                    // エラーが発生した場合に表示されるWidgetを指定
                    error: (error, stack) => Text('Error: $error'),
                    // 非同期処理が完了すると、取得した `config` が `data` で使用できる
                    data: (mealHistoryResponse) {
                      return RefreshIndicator(
                        onRefresh: () async => ref.refresh(mealHistoryProvider),
                        child: ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            Text(mealHistoryResponse.meal_histories[0].toString()),
                            // if(mealHistoryResponse.meal_histories[0] == null) const Text('検索結果がありません'),
                            ListTile(
                              leading: const Text('系統'),
                              title: Text(mealHistoryResponse.meal_histories[0].mealTypeName),
                            ),
                            ListTile(
                              leading: const Text('詳細'),
                              title: Text(mealHistoryResponse.meal_histories[0].description),
                            ),
                            ListTile(
                              leading: const Text('リスト描画テスト'),
                              title: Text(mealHistoryResponse.meal_histories[0].mealTypeName),
                            ),
                            ListTile(
                              leading: const Text('描画テスト'),
                              title: Text(mealHistoryResponse.meal_histories[0].description),
                            ),
                            // 仮
                            // Text('aaa'),
                          ],
                        ),
                      );
                    },
                  ),
            ],
          ),
          // ),
          // Text('$_counter'),
        ],
      ),
    );
  }
}
