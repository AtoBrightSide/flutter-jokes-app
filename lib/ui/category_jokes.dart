import 'package:flutter/material.dart';
import 'package:the_joker/blocs/jokes_bloc.dart';
import 'package:the_joker/components/drawer.dart';
import 'package:the_joker/models/joke_model.dart';

class CategoryJokes extends StatelessWidget {
  const CategoryJokes({Key? key, required this.category}) : super(key: key);

  final String category;

  static const String routeName = "/category-jokes";
  @override
  Widget build(BuildContext context) {
    bloc.fetchCategoryJokes(category);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("$category Jokes")),
      ),
      drawer: myDrawer(context),
      body: StreamBuilder(
        stream: bloc.categoryJokes,
        builder: (context, AsyncSnapshot<JokesModel> snapshot) {
          if (snapshot.hasData) {
            return show(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget show(AsyncSnapshot snapshot) {
    return ListView.builder(
      padding: EdgeInsets.all(5),
      itemCount: snapshot.data!.jokes.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          child: ListTile(
            title: Text(snapshot.data!.jokes[index].setup.toString()),
            subtitle: Text(snapshot.data!.jokes[index].delivery.toString()),
            trailing: Icon(Icons.favorite),
          ),
        );
      },
    );
  }
}
