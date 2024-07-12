import 'package:flutter/material.dart';
import 'dart:html' as html; // Importación de la clase html de Flutter

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Projects',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> projectUrls = [
    './main2.dart',
    'https://flutter.github.io/samples/#',
    'https://flutter.github.io/samples/#',
  ];

  void _launchURL(String url) {
    html.window.open(url, 'new_tab'); // Utilizando la clase html de Flutter para abrir la URL
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Projects'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _launchURL(projectUrls[0]);
              },
              child: Text('Proyecto 1'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _launchURL(projectUrls[1]);
              },
              child: Text('Proyecto 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _launchURL(projectUrls[2]);
              },
              child: Text('Proyecto 3'),
            ),
          ],
        ),
      ),
    );
  }
}
