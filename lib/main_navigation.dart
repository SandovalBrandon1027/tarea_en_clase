import 'package:flutter/material.dart';
import 'main/main.dart' as main_app1;
import 'main2/main.dart' as main_app2;

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => main_app1.App(),
                ));
              },
              child: Text('Proyecto 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => main_app2.MyApp(),
                ));
              },
              child: Text('Proyecto 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // No action needed
              },
              child: Text('Proyecto 3'),
            ),
          ],
        ),
      ),
    );
  }
}
