// Current SDK version: 3.22.1
import 'package:flutter/material.dart';

// column, row, SingleChildScrollView.
void main() {
  runApp(IntoApp());
}

class IntoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Home'),
      ),
      // multiple command shortcut[commend shift *]
      /*body: Column(
            //vertically arrange
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('hi Tanvir'),
              Text('i am a tanvir'),
              Text('i am 20'),
              ElevatedButton(onPressed: () {}, child: Text('pressed')),
              IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
            ],
          )*/
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          //horizaontally
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('RowInsideColumn'),
                Text('RowInsideColumn'),
                Text('RowInsideColumn'),
                Text('RowInsideColumn'),
                Text('RowInsideColumn'),
                Text('RowInsideColumn'),
                Text('RowInsideColumn'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('RowInsideColumn 2'),
                Text('RowInsideColumn 2'),
                Text('RowInsideColumn 2'),
                Text('RowInsideColumn 2'),
                Text('RowInsideColumn 2'),
                Text('RowInsideColumn 2'),
                Text('RowInsideColumn 2'),
                Text('RowInsideColumn 2'),
                Text('RowInsideColumn 2'),
              ],
            ),
            Row(
              children: [
                Text('Row 1 from column 2'),
                Text('Row 1 from column 2'),
                Text('Row 1 from column 2'),
                Text('Row 1 from column 2'),
                Text('Row 1 from column 2'),
                Text('Row 1 from column 2'),
                Text('Row 1 from column 2'),
                Text('Row 1 from column 2'),
                Text('Row 1 from column 2'),
              ],
            ),
            Column(
              children: [
                Text('column 3'),
                Text('column 3'),
                Text('column 3'),
                Text('column 3'),
                Text('column 3'),
                Text('column 3'),
                Text('column 3'),
                Text('column 3'),
                Text('column 3'),
                Text('column 3'),
                Text('column 3'),
              ],
            )
          ],
        ),
      ),
    );
  }
}