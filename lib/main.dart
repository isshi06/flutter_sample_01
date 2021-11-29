import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/domain/meal_history/meal_history_home.dart';
import 'package:flutter_sample_01/domain/zipcode/search_by_zipcode.dart';

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
      home: DefaultTabController(
        length: 2,
        child: HomePage(),
      ),
    );
  }
}


// Widget example.
class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  static const String title = 'ProviderPage';
  static const String routeName = 'provider-page';
  final List<Tab> myTabs = <Tab>[
    const Tab(text: '郵便番号検索'),
    const Tab(text: '食事日記'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(title),
          bottom: TabBar(
            tabs: myTabs,
          ),
      ),
      body: TabBarView(
        children: [
          SearchByZipcode(),
          MealHistoryHome(),
        ],
      ),
    );
  }
}
