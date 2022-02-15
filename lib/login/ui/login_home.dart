import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/login/ui/register_page.dart';
import 'login_page.dart';

// ログイン画面 親
class LoginHome extends ConsumerWidget {
  LoginHome({Key? key}) : super(key: key);

  static const String title = 'ログイン';
  static const String routeName = 'provider-page';
  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'ログイン'),
    const Tab(text: '新規登録'),
    // const Tab(text: 'プロフィール'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: [
            LoginPage(),
            RegisterPage(),
          ],
        ),
      ),
    );
  }
}
