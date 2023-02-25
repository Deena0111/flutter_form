import 'package:flutter/material.dart';
import 'package:flutter_form/registerPage.dart';
import 'login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPage',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    String mainContent = "Please click Below Button.";
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Home Page",
            style: TextStyle(),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                mainContent,
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyRegister()));
                },
                child: const Text('Register'),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Mylogin()));
                },
                child: const Text('Login'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
