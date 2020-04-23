import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/profile/profile_controller.dart';
import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/profile/profile_module.dart';

void main() {
  initModule(ProfileModule());
  ProfileController profile;

  setUp(() {
    profile = ProfileModule.to.get<ProfileController>();
  });

  group('ProfileController Test', () {
    test("First Test", () {
      expect(profile, isInstanceOf<ProfileController>());
    });

    test("Set Value", () {
      expect(profile.value, equals(0));
      profile.increment();
      expect(profile.value, equals(1));
    });
  });
}
