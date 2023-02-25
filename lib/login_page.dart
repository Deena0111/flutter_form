import 'package:flutter/material.dart';

void main() {
  runApp(Mylogin());
}

class Mylogin extends StatelessWidget {
  Mylogin({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Login Page')),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'User name',
                    labelText: 'Name',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Password',
                    labelText: 'Password',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                            context: context,
                            builder: (context) => const AlertDialog(
                              title: Text("Great!"),
                              content: Text("Login successfull"),
                            ),
                          );
                        }
                      },
                      child: const Text('OK')),
                )
              ],
            )),
      ),
    );
  }
}
