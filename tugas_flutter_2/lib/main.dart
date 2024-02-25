import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_flutter_2/home.dart';
import 'package:tugas_flutter_2/login.dart';
import 'package:tugas_flutter_2/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/welcome',
      routes: {
        Welcome.nameRoute: (context) => Welcome(),
        Login.nameRoute: (context) => Login(),
        Home.nameRoute: (context) => Home()
      },
    );
  }
}
