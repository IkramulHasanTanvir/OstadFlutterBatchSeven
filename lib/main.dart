// Current SDK version: 3.22.1
import 'package:flutter/material.dart';

// Container, dialog, bottom-sheet

void main() {
  runApp(IntoApp());
}

class IntoApp extends StatelessWidget {
  const IntoApp({super.key});

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              // color: Colors.green,
              //padding: EdgeInsets.all(20),
              // padding: EdgeInsets.symmetric(
              //   vertical: 8,
              //   horizontal: 4,
              // ),
              padding: EdgeInsets.only(
                bottom: 8,
              ),
              margin: EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.red,
                  width: 4,
                ),
                // borderRadius: BorderRadius.circular(16),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                // shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/shirt.jpg'),
                    fit: BoxFit.cover,
                    opacity: 4),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.red.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                  BoxShadow(
                    color: Colors.red.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 8,
                    offset: Offset(0, 6),
                  )
                ],
              ),
              child: Text(
                'selles man',
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
            ),
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Text('sounds'),
            ),
            ElevatedButton(
              onPressed: () {
                // showAboutDialog(
                //   context: context,
                //   applicationName: 'Sample',
                //   applicationVersion: '1.0.6',
                //   children: [
                //     Text('Sample')
                //   ],
                // );
                showDialog(
                    context: context,
                    barrierDismissible:false,
                    barrierColor: Colors.black38,
                    builder: (ctx) {
                      return AlertDialog(
                        title: Text('Our custom dialog'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sample Text'),
                            Text('Sample Text'),
                            Text('Sample Text'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Open'),
                          ),
                        ],
                        shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(8),
                          //borderRadius: BorderRadius.zero
                        ),

                      );
                    });
              },
              child: Text('Dialog'),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: (){
                showModalBottomSheet(
                  backgroundColor: Colors.black12,
                    barrierColor: Colors.black38,
                    enableDrag: false,
                    isDismissible: false,
                    context: context,
                    builder: (ctx){
                  return SizedBox(
                    height: 600,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text('Title'),
                        ),
                        Divider(),
                        Column(
                          children: [],
                        )
                      ],
                    ),
                  );
                });
              },
              child: Text('Show Bottom sheet'),
            ),

          ],
        ),
      ),
    );
  }
}
