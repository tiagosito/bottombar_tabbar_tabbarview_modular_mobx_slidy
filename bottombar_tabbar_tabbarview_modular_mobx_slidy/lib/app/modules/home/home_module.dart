import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/home/home_content/home_content_controller.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeContentController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
