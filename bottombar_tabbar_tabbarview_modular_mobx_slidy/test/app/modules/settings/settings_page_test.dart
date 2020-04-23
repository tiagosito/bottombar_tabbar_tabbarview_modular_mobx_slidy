import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/settings/settings_page.dart';

main() {
  testWidgets('SettingsPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(SettingsPage(title: 'Settings')));
    final titleFinder = find.text('Settings');
    expect(titleFinder, findsOneWidget);
  });
}
