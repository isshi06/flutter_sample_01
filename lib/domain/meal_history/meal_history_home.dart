import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/service/meal_history.dart';

class MealHistoryHome extends ConsumerWidget {
  MealHistoryHome({Key? key}) : super(key: key);

  MealHistoryService mealHistory = MealHistoryService();
  List<DropdownMenuItem<int>> _items = List.empty();
  String _selectItem = 'A';
  // void setItems() {
  //   List<DropdownMenuItem<int>> _items = List.empty();
  //   _items
  //     ..add(const DropdownMenuItem(
  //       value: 1,
  //       child: Text('A', style: TextStyle(fontSize: 40.0),),
  //     ))
  //     ..add(const DropdownMenuItem(
  //       value: 2,
  //       child: Text('B', style: TextStyle(fontSize: 40.0),),
  //     ))
  //     ..add(const DropdownMenuItem(
  //       value: 3,
  //       child: Text('C', style: TextStyle(fontSize: 40.0),),
  //     ));
  // }


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _mealController = TextEditingController();
     var formvalue = ref.watch(mealProvider)['taste_type'];

    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'カツ丼・焼きそば',
              labelText: 'description',
            ),
            controller: _mealController,
          ),
          DropdownButton(
            // items: ref.read(dropdownProvider.notifier),
            items: ref.read(dropdownProvider).map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: _selectItem,
            // onChanged: (value) => ref.read(mealProvider.notifier).update(
            //     (value) => formvalue = value
            // ),
            onChanged: (value) => print(value),
          ),
          ElevatedButton(
            onPressed: () {
              mealHistory.postHistory(_mealController.text);
              ref.read(updateCountProvider.notifier).update(
                    (state) => state + 1,
                  );
            },
            child: const Text('記録 test(値固定)'),
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
                            Text(mealHistory['meal_histories'].toString()),
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
