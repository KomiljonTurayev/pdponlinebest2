import 'package:flutter/material.dart';

class Homework2 extends StatefulWidget {
  const Homework2({Key? key}) : super(key: key);

  @override
  State<Homework2> createState() => _Homework2State();
}

class _Homework2State extends State<Homework2> {
  final _formKey = GlobalKey<FormState>();
  String _email = "", _password = "";

  _doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Welcome');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Instagram',
              style: TextStyle(color: Colors.black, fontSize: 32),
            ),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: (input) => input!.contains('@')
                          ? 'Please enter a valid email'
                          : null,
                      onSaved: (input) => _email = input!,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Password'),
                      validator: (input) => input!.length < 6
                          ? 'Must be at least 6 characters'
                          : null,
                      onSaved: (input) => _password = input!,
                    ),
                  ),
                  SizedBox(
                    width: 380,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: FlatButton(
                        onPressed: _doSignIn,
                        color: Colors.blue,
                        child: const Text(
                          'Log In',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: GestureDetector(
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              print('Ginding');
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
