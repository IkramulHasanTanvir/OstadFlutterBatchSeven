// Current SDK version: 3.22.1
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter_live_class/home.dart';
import 'package:ostad_flutter_live_class/profile_page.dart';

// TextField

void main() {
  runApp(IntoApp());
}

class IntoApp extends StatelessWidget {
  const IntoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: true,
      home: ProfilePage(),
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   appBarTheme: AppBarTheme(
      //       color: Colors.pink,
      //       titleTextStyle: TextStyle(
      //         color: Colors.white,
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //         letterSpacing: 2.0,
      //       )),
      //   textButtonTheme: TextButtonThemeData(
      //     style: TextButton.styleFrom(foregroundColor: Colors.pink),
      //   ),
      //   inputDecorationTheme: InputDecorationTheme(
      //     border: OutlineInputBorder(
      //         borderRadius: BorderRadius.circular(8),
      //         borderSide: BorderSide(color: Colors.red, width: 2)),
      //     disabledBorder: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(8),
      //       borderSide: BorderSide(
      //         color: Colors.green,
      //         width: 2,
      //       ),
      //     ),
      //     focusedBorder: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(8),
      //       borderSide: BorderSide(
      //         color: Colors.yellow,
      //         width: 2,
      //       ),
      //     ),
      //   ),
      //   textTheme: TextTheme(
      //       titleLarge: TextStyle(
      //     fontSize: 20,
      //     fontWeight: FontWeight.bold,
      //   )),
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   appBarTheme: AppBarTheme(
      //       color: Colors.pink,
      //       titleTextStyle: TextStyle(
      //         color: Colors.white,
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //         letterSpacing: 2.0,
      //       )),
      //   textButtonTheme: TextButtonThemeData(
      //     style: TextButton.styleFrom(foregroundColor: Colors.pink),
      //   ),
      //   inputDecorationTheme: InputDecorationTheme(
      //     border: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(8),
      //       borderSide: BorderSide(
      //         width: 0.5,
      //       ),
      //     ),
      //     disabledBorder: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(8),
      //     ),
      //     focusedBorder: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(8),
      //       borderSide: BorderSide(
      //         width: 0.5,
      //         color: Colors.pink,
      //       ),
      //     ),
      //   ),
      // ),
      // themeMode: ThemeMode.system,
    );
  }
}