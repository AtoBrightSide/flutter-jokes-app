import 'package:flutter/material.dart';
import 'package:the_joker/blocs/categories_bloc.dart';
import 'package:the_joker/models/category_model.dart';

class Categories extends StatelessWidget {
  static const String routeName = "/categories";
  @override
  Widget build(BuildContext context) {
    bloc.getCategories();
    return StreamBuilder(
        stream: bloc.category,
        builder: (context, AsyncSnapshot<CategoryModel> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              padding: EdgeInsets.all(5),
              itemCount: snapshot.data!.categories.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 80,
                  child: Center(
                    child: Text(
                      snapshot.data!.categories[index].toString(),
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
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
        });
  }
}
