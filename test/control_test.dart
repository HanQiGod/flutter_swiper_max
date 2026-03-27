import 'package:flutter/material.dart';
import 'package:flutter_swiper_max/flutter_swiper_max.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Control horizontal', (WidgetTester tester) async {
    SwiperController controller = new SwiperController();

    SwiperPluginConfig config = new SwiperPluginConfig(
        activeIndex: 0,
        controller: controller,
        itemCount: 10,
        loop: true,
        scrollDirection: Axis.horizontal);

    Key key = new UniqueKey();
    await tester.pumpWidget(new MaterialApp(
      home: new Scaffold(body: new Builder(builder: (BuildContext context) {
        return new SwiperControl(key: key).build(context, config);
      })),
    ));

    expect(find.byKey(key), findsOneWidget);

    await tester.tap(find.byType(GestureDetector).first);
  });

  testWidgets('Control vertical', (WidgetTester tester) async {
    SwiperController controller = new SwiperController();

    SwiperPluginConfig config = new SwiperPluginConfig(
        activeIndex: 0,
        controller: controller,
        itemCount: 10,
        loop: true,
        scrollDirection: Axis.vertical);

    Key key = new UniqueKey();
    await tester.pumpWidget(new MaterialApp(
      home: new Scaffold(body: new Builder(builder: (BuildContext context) {
        return new SwiperControl(
                key: key, color: Colors.white, disableColor: Colors.black87)
            .build(context, config);
      })),
    ));

    expect(find.byKey(key), findsOneWidget);

    await tester.tap(find.byType(GestureDetector).first);
  });
}
