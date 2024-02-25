import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  static const nameRoute = '/welcome';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tugas 2"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.white,
                child: Image(
                    fit: BoxFit.contain, image: AssetImage("assets/Logo.png")),
              ),
              SizedBox(height: 100),
              Text(
                "Welcome to Ajheryuk",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Best And popular apps for live education course from home",
                style: TextStyle(fontSize: 16, color: Color(0xFF8C8C8C)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/login');
                    },
                    child: Text(
                      "Get Started",
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEC5F5F),
                      minimumSize: const Size.fromHeight(50),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
