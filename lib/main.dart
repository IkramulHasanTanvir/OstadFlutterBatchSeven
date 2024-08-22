import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).width);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      // body: SizedBox(
      //   width: MediaQuery.of(context).size.width,
      //   child: Column(
      //     children: [
      //       Flexible(child: Container(
      //         color: Colors.blue,
      //         width: 100,
      //       ),),
      //       Flexible(child: Container(
      //         color: Colors.green,
      //         width: 200,
      //       ),),
      //       Flexible(child: Container(
      //         color: Colors.red,
      //         width: 200,
      //       ),),
      //       Flexible(child: Container(
      //         color: Colors.orange,
      //         width: 200,
      //         height: 100,
      //       ),),
      //       Flexible(child: Container(
      //         color: Colors.pink,
      //         width: 200,
      //       ),),
      //       AspectRatio(
      //         aspectRatio: 16 / 9,
      //         child: Container(
      //         color: Colors.deepPurple,
      //       ),),
      //       LayoutBuilder(builder: (context, constraints){
      //         return Text(constraints.maxWidth.toString());
      //       }),
      //
      //     ],
      //   ),
      // ),
      body: LayoutBuilder(builder: (context, constraints) {
        return Text(constraints.maxWidth.toString());
      }),
    );
  }
}
