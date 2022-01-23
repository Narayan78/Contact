import 'package:flutter/material.dart';
import 'page2.dart';
import 'Page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomePage',
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Phone Call",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.pinkAccent),
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notification_add_outlined),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Page3()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.home_filled),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Page2()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ],
          flexibleSpace: Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                // ignore: prefer_const_constructors
                gradient: LinearGradient(
              colors: const [Colors.purple, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.add_call), text: ('Call')),
              Tab(icon: Icon(Icons.account_box_sharp), text: ('Contact')),
              Tab(icon: Icon(Icons.contact_mail_rounded), text: ('Message')),
              Tab(icon: Icon(Icons.add_moderator), text: ('Moderator')),
              Tab(icon: Icon(Icons.person), text: ('Profile')),
            ],
          ),
        ),
        body: ListView(padding: const EdgeInsets.all(16), children: [
          Builder(builder: (context) {
            return const SizedBox(
              height: 10,
            );
          }),
          // ignore: prefer_const_constructors
          NewWidget(),
        ]),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
          hintText: "142 contacts",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder()),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
    );
  }
}
