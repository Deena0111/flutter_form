// ignore_for_file: file_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyRegister());
}

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Center(child: Text('Registration Form')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter your name',
                    labelText: 'Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  controller: _password,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      icon: const Icon(Icons.password),
                      hintText: 'Enter your Password',
                      labelText: 'Password'),
                  validator: (value) {
                    if (value == null || value.length < 8) {
                      return 'Password should be atleast 8 character';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  controller: _confirmPassword,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      icon: const Icon(Icons.password),
                      hintText: 'Confirm your Password',
                      labelText: 'Confirm Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your confirm password';
                    }
                    if (value != _password.text) {
                      return 'Password not matched';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today_outlined),
                      hintText: 'please give format dd/mm/yyyy',
                      labelText: 'D.O.B'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please give input dd/mm/yyyy';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    icon: const Icon(Icons.group_remove_rounded),
                    hintText: 'Enter your gender(male,female or others)',
                    labelText: 'Gender',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Field is empty';
                    }
                    if (value == "male" ||
                        value == "female" ||
                        value == "others") {
                      return null;
                    }
                    return "Enter male,female or others only";
                  },
                ),
                TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    icon: const Icon(Icons.cast_for_education_rounded),
                    hintText: 'Mention only UG,PG or Phd',
                    labelText: 'Education',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter UG,PG or Phd';
                    }
                    if (value == "UG" || value == "PG" || value == "Phd") {
                      return null;
                    }
                    return "Enter only UG,PG or Phd";
                  },
                ),
                TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter your Email',
                      labelText: 'Email Id'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill this field';
                    }
                    if (value.contains('.') || value.contains('@')) {
                      return null;
                    }
                    return 'Please enter proper email id';
                  },
                ),
                TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter your Contact No',
                      labelText: 'Contact'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter proper phNo';
                    }
                    return null;
                  },
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
                              content: Text("Successfully Submitted"),
                            ),
                          );
                        }
                      },
                      child: const Text('Submit')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
