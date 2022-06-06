import 'package:flutter/material.dart';
import 'package:study_project/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = ['kboy 1', 'kboy 2', 'kboy 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Never understimate'),
        actions: [
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(100, (index) {
            return Column(
              children: [
                Expanded(
                  child: Image.network(
                      'https://www.peninsula.com/ja/-/media/images/tokyo/new/dining/the-lobby/general/ptk-the-lobby-1074.jpg?mw=987&hash=418B81B34D082416BEBCB7D9E61E4030335910D5'),
                ),
                Text('Penishura $index'),
              ],
            );
          }),
        ),
      ),
    );
  }
}
