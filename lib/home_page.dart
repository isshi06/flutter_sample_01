import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/meal_history/ui/meal_history_home.dart';
import 'package:flutter_sample_01/profile/model/login_user.dart';
import 'package:flutter_sample_01/zip_search/ui/search_by_zipcode.dart';

import 'login/ui/login_home.dart';
import 'next_page.dart';

// Widget example.
class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  static const String title = 'ログイン後';
  static const String routeName = 'provider-page';
  final List<Tab> myTabs = <Tab>[
    const Tab(text: '郵便番号検索'),
    const Tab(text: '食事日記'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var loginUser = ref.watch(userProvider.notifier);
    var userEmail = ref.watch(userEmailProvider.notifier);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Text(
                      'My App',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${userEmail.state}',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text('Home1'),
                onTap: () {
                  Navigator.of(context).push<void>(
                    MaterialPageRoute(builder: (context) {
                      return NextPage('こころ');
                    }),
                  );
                },
              ),
              ListTile(
                title: const Text('Home2'),
                onTap: () {
                  Navigator.of(context).push<void>(
                    MaterialPageRoute(builder: (context) {
                      return NextPage('銀河鉄道の夜');
                    }),
                  );
                },
              ),
              ListTile(
                title: const Text('ログアウト'),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacement<void, void>(
                    MaterialPageRoute(builder: (context) {
                      return LoginHome();
                    }),
                  );
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SearchByZipcode(),
            MealHistoryHome(),
          ],
        ),
      ),
    );
  }
}
