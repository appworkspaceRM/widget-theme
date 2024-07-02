# flutter_application_25

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Theme

theme atau tema dari sebuah aplikasi untuk membuat default sebuah theme dari aplikasi dengan cara menginisilisasi sebuah styling default dari sebuah theme atau tema berkumpul. pada theme flutter terdaat banyak properti yang bisa digunakan untuk styling.

- theme : memerlukan widget invisible Theme

didalam widget Theme banyak sekali properti yang harus di isi untuk menentukan tema yang akan digunakan,

- Brightness : memerlukan widger Brightness dengan enum digunakan untuk mengubah tema pencahayaan secara default Brightness.light.
- visualDensity : memerluakn VisualDensity dengan enum digunakan untuk kepadatan visual aplikasi dari beberapa widget secara defult visualDensiy adaptif terhadap perangkat.
- pirmarySwatch : memerlukan widget MaterialColor dengan enum digunakan untuk merubah semua tema dari tampilan layar berpengaruh pada widget bukan brightness.
- primaryColor : memerlukan widget Color dengan enum digunakan warna primer yang akan digunakan untuk beberapa widget primer.
- accentColor: : memerlukan widget Color dengan enum digunakan untuk mewarnai floating accent button atau secondary widget.
- appBarTheme : memerlukan Widget AppBarTheme digunakan untuk mengubah tema dari AppBar
- textTheme : memerlukan widget TextTheme digunakan untuk merubah thema dari text

![Capture](https://github.com/appworkspaceRM/widget-theme/assets/135511281/d2670c5a-8e6d-43c6-b1cf-6a2c7bf9a23b)

```dart
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

```
![code-snapshot](https://github.com/appworkspaceRM/widget-theme/assets/135511281/7d74693f-3789-47cc-9631-f81217ac4dbe)

