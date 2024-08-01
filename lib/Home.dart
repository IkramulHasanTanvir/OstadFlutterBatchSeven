import 'package:flutter/material.dart';

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
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  _descriptionTEController.clear();
                },
                child: Text(
                  'Clear Description',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.pink,
                    letterSpacing: 0.9,
                  ),
                ),
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