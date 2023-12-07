import 'package:flutter/material.dart';
import 'package:flutter_login/login_Screen.dart';

void main() {
  runApp(const MyScreen());

}
class MyScreen extends StatelessWidget {
  const MyScreen({super.key});
  
  static const String _title = 'Login Screen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: MyLoginScreen(),
      ),
    );
  }
}

  


