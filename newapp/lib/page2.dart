// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: ListView(
        children: const [
          LoginImage(),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              'Login to Your Account ',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(35.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Email Address',
                prefixIcon: Icon(Icons.mail),
              ),
              textInputAction: TextInputAction.next,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter you Password',
                prefixIcon: Icon(Icons.password),
              ),
            ),
          ),
          SizedBox(height: 10),
          Button(),
          SignupButton(),
        ],
      ),
    );
  }
}

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Login'),
        onPressed: () {},
      ),
    );
  }
}

class SignupButton extends StatelessWidget {
  const SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Create a New Acccount"),
        onPressed: () {},
      ),
    );
  }
}

class LoginImage extends StatelessWidget {
  const LoginImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/pp.png");
  }
}
