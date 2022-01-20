import 'package:flutter/material.dart';
import 'package:the_joker/ui/categories.dart';
import 'package:the_joker/ui/jokes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/first': (context) => RandomJoke(),
        '/second': (context) => Categories(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("Jokes"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Text('Drawer Header'),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'second');
                },
                child: Center(
                  child: Text("Category"),
                ),
              ),
            ],
          ),
        ),
        body: RandomJoke(),
      ),
    );
  }
}
