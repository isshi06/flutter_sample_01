import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/meal_history/ui/meal_history_home.dart';
import 'package:flutter_sample_01/zip_search/ui/search_by_zipcode.dart';
import 'login_page.dart';

// Widget example.
class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  static const String title = 'ProviderPage';
  static const String routeName = 'provider-page';
  final List<Tab> myTabs = <Tab>[
    const Tab(text: '郵便番号検索'),
    const Tab(text: '食事日記'),
    // const Tab(text: 'プロフィール'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(title),
            bottom: TabBar(
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            // controller: TabController(length: 3, vsync: this),
            children: [
              SearchByZipcode(),
              MealHistoryHome(),
              // LoginPage(),
            ],
          ),
        ),
      ),
    );
  }
}
