import 'package:auth_test/pages/booking/home.dart';
import 'package:auth_test/pages/booking/settings.dart';
import 'package:auth_test/components/navigation.dart';
import 'package:auth_test/visual/colors.dart';
import 'package:flutter/cupertino.dart';

class AppRouter extends StatelessWidget {
  static final List<Widget Function(BuildContext)> tabs_logic = [
    (context) => HomePage(),
    (context) => SettingsPage(),
  ];

  static final List<BottomNavigationBarItem> tabs_visual = [
    NavigationComponents.customBottomNavigationBarItem(
      iconURI: 'assets/svg/home.svg',
      title: 'Home',
      activeColor: customColor.onPressed,
    ),
    NavigationComponents.customBottomNavigationBarItem(
      iconURI: 'assets/svg/settings.svg',
      title: 'Settings',
      activeColor: customColor.onPressed,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (BuildContext context, int index) {
        if (index < tabs_logic.length) {
          return CupertinoTabView(builder: tabs_logic[index]);
        }
        return null;
      },
      tabBar: CupertinoTabBar(
          //UGLY, fix
          inactiveColor: CupertinoColors.black,
          activeColor: customColor.onPressed,
          items: tabs_visual),
    );
  }
}
