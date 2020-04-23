import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bottombar_tabbar_tabbarview_modular_mobx_slid/app/modules/home/home_content/home_content_page.dart';

main() {
  testWidgets('HomeContentPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(HomeContentPage(title: 'HomeContent')));
    final titleFinder = find.text('HomeContent');
    expect(titleFinder, findsOneWidget);
  });
}
