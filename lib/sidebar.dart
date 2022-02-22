import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample_01/meal_history/ui/meal_history_home.dart';
import 'package:flutter_sample_01/profile/model/login_user.dart';
import 'package:flutter_sample_01/zip_search/ui/search_by_zipcode.dart';
import 'package:page_transition/page_transition.dart';

import 'login/ui/login_home.dart';
import 'next_page.dart';

class SideBar extends StatefulWidget {
  SideBar({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: Curves.elasticIn,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: const [
                Text(
                  'My App',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                Text(
                  // '${userEmail.state}',
                  'aaa',
                  style: TextStyle(
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
                  duration: Duration(milliseconds: 100),
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
    );
  }
}
