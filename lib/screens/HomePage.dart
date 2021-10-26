import 'package:flutter/material.dart';
import 'package:the_joker/repository/fetcher.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/single_event";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Joke> futureJoke;

  @override
  void initState() {
    super.initState();
    futureJoke = fetchJoke();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "JOKES",
              style: TextStyle(
                color: Colors.deepPurple,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          backgroundColor: new Color(0xFFFF9000),
        ),
        body: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  FutureBuilder<Joke>(
                    future: futureJoke,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            new Text(
                              snapshot.data!.setup,
                              style: TextStyle(
                                color: Colors.white,
                                // fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            new Text(
                              snapshot.data!.delivery,
                              style: TextStyle(
                                color: Colors.white,
                                // fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }

                      // By default, show a loading spinner.
                      return const CircularProgressIndicator();
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Icon(
                    Icons.arrow_left,
                    size: 32,
                    color: Colors.orange,
                  ),
                  new Icon(
                    Icons.favorite_outline,
                    size: 22,
                    color: Colors.white,
                  ),
                  new Icon(
                    Icons.arrow_right,
                    size: 32,
                    color: Colors.orange,
                  ),
                ],
              )
            ],
          ),
        ),
        backgroundColor: new Color(0x69881255),
      ),
    );
  }
}
