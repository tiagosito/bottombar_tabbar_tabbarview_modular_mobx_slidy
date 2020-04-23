import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/course/course_module.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/home/home_content/home_content_page.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/home/home_controller.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/profile/profile_module.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/schedule/schedule_module.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/settings/settings_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Tab/Bottom-Bar with Modular and MobX"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  List widgetOptins = [
    HomeContentPage(),
    CourseModule(),
    ScheduleModule(),
    ProfileModule(),
    SettingsModule(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Observer(
        builder: (_) {
          return widgetOptins.elementAt(controller.currentIndex);
        },
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget bottomNavigationBar() {
    return Observer(builder: (_) {
      return BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.currentIndex,
        onTap: (index) {
          print(index);
          controller.updateCurrentIndex(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.local_library), title: Text('Course')),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), title: Text('Shedule')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings')),
        ],
      );
    });
  }
}
