import 'package:flutter/material.dart';

void main() {
  runApp(IntoApp());
}

class IntoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Home'),
        ),
        body: Center(
          /*child: Icon(
            Icons.ad_units,
            size: 50,
            color: Colors.black,
          ),
          child:  Image.network('https://www.facebook.com/photo/?fbid=466931605945557&set=a.100972522541469',),
          child: Image.asset(
            'assets/images/nature.jpg',
            height: 400,
            width: 400,
            fit: BoxFit.cover,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.ac_unit),
          ),
           child: TextButton(
            onPressed: () {},
            child: Text('Text Button'),
          ),
           child: GestureDetector(
              onDoubleTap: (){},
              child: Image.asset(
                'assets/images/nature.jpg',
                height: 400,
                width: 400,
                fit: BoxFit.cover,
              ),
            ),
           */
          child: InkWell(
            onTap: (){
              print('Tap button');
            },
            child: Text('Hello',  style: TextStyle(fontSize: 22),),
          ),
        ),
      ),
    );
  }
}
