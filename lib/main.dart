// Current SDK version: 3.22.1
import 'package:flutter/material.dart';

//SizeBox, ListView, ListView.builder, GridView.builder,
// divider, listTile, ListView.separated
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

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> friendList = ['Sakib', 'Rakib', 'Sowrove', 'Salim'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Home'),
      ),
      /*body: ListView(
        //scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text('size box 1'),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text('size box 2'),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text('size box 3'),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text('size box 4'),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text('size box 1'),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text('size box 2'),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text('size box 3'),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text('size box 4'),
            ),
          ),
        ],
      ), */
      /*body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 100,
            height: 100,
            child: Center(
              child: Text(index.toString()),
            ),
          );
        },
      ),
       */
      /*body: ListView.builder(
        itemCount: friendList.length,
        //scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Text(friendList[index]);
        },
      ), */
      /* body: ListView.separated(
        itemCount: friendList.length,
        //scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Text(friendList[index]);
        },
        separatorBuilder: (context, index){
          return Divider(
            height: 40,
            color: Colors.red,
            thickness: 2,
            indent: 16,
            endIndent: 16,
          );
         // return Text('this is $index separator');
        },
      ), */
      /*body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 10,
            childAspectRatio: 2,
          ),
          itemCount: friendList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text(index.toString()),
                Text(friendList[index]),
              ],
            );
          }) */
      body: ListView.separated(
        itemCount: friendList.length,
        //scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.grey.shade50,
            title: Text(friendList[index]),
            subtitle: Text('school friend'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle,
                  color: Colors.amber,
                  size: 18,
                ),
                Text('add about'),
              ],
            ),
            leading: Text(
              (index + 1).toString(),
            ),
            titleTextStyle: TextStyle(fontSize: 22, color: Colors.amber),
            onTap: () {
              print('$index tap');
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 4,
            color: Colors.grey.shade200,
            thickness: 2,
            indent: 16,
            endIndent: 16,
          );
        },
      ),
    );
  }
}
