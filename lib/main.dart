import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/meal_history/ui/meal_history_home.dart';
import 'package:flutter_sample_01/zip_search/ui/search_by_zipcode.dart';
import 'login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
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
        home: LoginPage());
  }
}

// Widget example.
// class HomePage extends ConsumerWidget {
//   HomePage({Key? key}) : super(key: key);

//   static const String title = 'ProviderPage';
//   static const String routeName = 'provider-page';
//   final List<Tab> myTabs = <Tab>[
//     const Tab(text: '郵便番号検索'),
//     const Tab(text: '食事日記'),
//     const Tab(text: 'プロフィール'),
//   ];

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(title),
//         bottom: TabBar(
//           tabs: myTabs,
//         ),
//       ),
//       body: TabBarView(
//         controller: TabController(length: 3, vsync: HomePage),
//         children: [
//           SearchByZipcode(),
//           MealHistoryHome(),
//           LoginPage(),
//         ],
//       ),
//     );
//   }
// }
