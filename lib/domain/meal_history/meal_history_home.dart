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
    print('-- widget MealHistoryHome build --');

    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: '説明',
              labelText: 'description',
            ),
            controller: _mealController,
          ),
          DropdownButton(
            items: ref
                .read(dropdownProvider)
                .map<DropdownMenuItem<String>>((value) {
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
              ref.read(updateCountProvider.notifier).update(
                    (state) => state + 1,
                  );
            },
            child: const Text('記録'),
          ),
          ElevatedButton(
            onPressed: () => ref.read(updateCountProvider.notifier).update(
                  (state) => state + 1,
                ),
            child: const Text('更新'),
          ),
          Wrap(
            children: [
              ref.watch(mealHistoryProvider).when(
                    // 非同期処理中は `loading` で指定したWidgetが表示される
                    loading: () => const CircularProgressIndicator(),
                    // エラーが発生した場合に表示されるWidgetを指定
                    error: (error, stack) => Text('Error: $error'),
                    // 非同期処理が完了すると、取得した `config` が `data` で使用できる
                    data: (mealHistory) {
                      return RefreshIndicator(
                        onRefresh: () async => ref.refresh(mealHistoryProvider),
                        child: Column(
                          children: [
                            // Text(mealHistory.toString()),
                            // 仮
                            Text('aaa'),
                          ],
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
