import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static const nameRoute = '/login';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Container(
              height: 150,
              child: Image.asset(
                "assets/LogoMark.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 70,
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Email"),
                  border: InputBorder.none,
                  fillColor: Color(0xFF9D9FA0),
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 65,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: InputBorder.none,
                  fillColor: Color(0xFF9D9FA0),
                  filled: true,
                  suffix: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEC5F5F),
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text("Forgot Password?"),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "or",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 1,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: Image.asset("assets/LoginFacebook.png"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0082CD),
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: Image.asset("assets/LoginGoogle.png"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEEEEEE),
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
