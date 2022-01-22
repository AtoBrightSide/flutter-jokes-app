import 'package:flutter/material.dart';
import 'package:the_joker/blocs/categories_bloc.dart';
import 'package:the_joker/components/drawer.dart';
import 'package:the_joker/models/category_model.dart';
import 'package:the_joker/ui/category_jokes.dart';

class Categories extends StatelessWidget {
  static const String routeName = "/categories";
  @override
  Widget build(BuildContext context) {
    bloc.getCategories();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Categories")),
      ),
      drawer: myDrawer(context),
      body: StreamBuilder(
          stream: bloc.category,
          builder: (context, AsyncSnapshot<CategoryModel> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                padding: EdgeInsets.all(5),
                itemCount: snapshot.data!.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(15),
                    child: ListTile(
                      title: Text(
                        snapshot.data!.categories[index].toString(),
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CategoryJokes(category: snapshot.data!.categories[index].toString()),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
