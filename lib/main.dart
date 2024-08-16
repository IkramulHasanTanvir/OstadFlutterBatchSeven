import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQuery
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    print('width ${mediaQueryData.size.width}');
    print('height ${mediaQueryData.size.height}');
    print('aspect ${mediaQueryData.size.aspectRatio}');
    print('flipped ${mediaQueryData.size.flipped.height}');

    print('display ${mediaQueryData.devicePixelRatio}');

    if (mediaQueryData.size.width < 640) {
      print('this is a Phone');
    } else if (mediaQueryData.size.width > 640 &&
        mediaQueryData.size.width < 1008) {
      print('this is a table');
    } else {
      print('Laptop');
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        backgroundColor: Colors.blue,
      ),
      // body: OrientationBuilder(builder: (context, Orientation orientation) {
      //   print(orientation);
      //   if (orientation == Orientation.portrait) {
      //     return Column(
      //       children: [
      //         Wrap(
      //           alignment: WrapAlignment.center,
      //           crossAxisAlignment: WrapCrossAlignment.center,
      //           // runAlignment: WrapAlignment.center,
      //           spacing: 16,
      //           children: [
      //             Text('hy brother whats up?'),
      //             Text('hy brother'),
      //             Text('hy brother '),
      //             Text('hy brother whats up?'),
      //           ],
      //         ),
      //         Text(orientation.name),
      //       ],
      //     );
      //   } else {
      //     return Center(
      //       child: Text('too big screen '),
      //     );
      //   }
      // }),
      body: LayoutBuilder(
        builder: (context, BoxConstraints constraints) {
          if (constraints.maxWidth < 640) {
            return Text('this a phone');
          } else if (constraints.maxWidth > 640 &&
              constraints.maxWidth < 1008) {
            return Text('this is a table');
          } else {
            return Text('this is a laptop');
          }
        },
      ),
    );
  }
}
