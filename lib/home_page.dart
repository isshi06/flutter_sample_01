import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/meal_history/ui/meal_history_home.dart';
import 'package:flutter_sample_01/profile/model/login_user.dart';
import 'package:flutter_sample_01/sidebar.dart';
import 'package:flutter_sample_01/zip_search/ui/search_by_zipcode.dart';
import 'package:page_transition/page_transition.dart';

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
                    const Text(
                      'My App',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${userEmail.state}',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text('アニメーションあり'),
                onTap: () {
                  Navigator.push<void>(
                    context,
                    PageTransition(
                      child: NextPage('aaa'),
                      type: PageTransitionType.leftToRight,
                      duration: const Duration(milliseconds: 100),
                    ),
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
