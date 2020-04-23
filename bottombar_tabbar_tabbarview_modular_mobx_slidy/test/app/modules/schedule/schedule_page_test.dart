import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/schedule/schedule_page.dart';

main() {
  testWidgets('SchedulePage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(SchedulePage(title: 'Schedule')));
    final titleFinder = find.text('Schedule');
    expect(titleFinder, findsOneWidget);
  });
}
