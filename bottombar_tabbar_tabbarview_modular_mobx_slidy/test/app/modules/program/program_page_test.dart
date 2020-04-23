import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/program/program_page.dart';

main() {
  testWidgets('ProgramPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ProgramPage(title: 'Program')));
    final titleFinder = find.text('Program');
    expect(titleFinder, findsOneWidget);
  });
}
