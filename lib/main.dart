import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          visualDensity: VisualDensity.comfortable,
          primarySwatch: Colors.green,
          primaryColor: Colors.amber,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              color: Colors.red,
            ),
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey,
          )),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is Text',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'This is Text',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'button',
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
