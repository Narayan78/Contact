// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
        ),
        body: ListView(
          children: const [
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
            )
          ],
        ));
  }
}
