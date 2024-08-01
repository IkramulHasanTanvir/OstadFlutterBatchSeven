// Current SDK version: 3.22.1
import 'package:flutter/material.dart';

// TextField

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
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
            color: Colors.pink,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            )),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.pink),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.red, width: 2)),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.green,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.yellow,
              width: 2,
            ),
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
            color: Colors.pink,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            )),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.pink),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 0.5,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 0.5,
              color: Colors.pink,
            ),
          ),
        ),
      ),
      themeMode: ThemeMode.system,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _descriptionTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                enabled: true,
                decoration: InputDecoration(
                  label: Text('Name'),
                  hintText: 'Enter Your Name',
                  icon: Icon(Icons.add),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon:
                      TextButton(onPressed: () {}, child: Text('Search')),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                textAlign: TextAlign.start,
                controller: _descriptionTEController,
                enabled: true,
                maxLines: 5,
                maxLength: 200,
                onTap: () {
                  print('Print TextField');
                },
                onChanged: (String value) {
                  print(value);
                },
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  label: Text('Description'),
                  hintText: 'Enter Your Description',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                enabled: true,
                onChanged: (String value) {
                  print(value);
                },
                obscureText: true,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  label: Text('Password'),
                  hintText: 'Enter Your Password',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {
                  _descriptionTEController.clear();
                },
                child: Text('Clear Description'),
              ),
              SizedBox(height: 16),
              TextField(),
              SizedBox(height: 16),
              TextField(),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
    );
  }
}
