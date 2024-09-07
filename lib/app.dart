import 'package:flutter/material.dart';
import 'package:ostad_flutter_live_class/pages/product_list_screen.dart';

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey.shade300,
        ),
        scaffoldBackgroundColor: Colors.grey.shade300
      ),
      debugShowCheckedModeBanner: false,
      home: const ProductListScreen(),
    );
  }
}
