import 'dart:async';
import 'package:dio/dio.dart';
import 'package:the_joker/application/category/model/category_model.dart';

class CategoryProvider {
  final Dio dio;
  CategoryProvider(this.dio);
  Future<CategoryModel> getCategories() async {
    try {
      final res = await dio.get("https://v2.jokeapi.dev/categories");
      print(res);
      return (res.data['categories']).map((e) => CategoryModel.fromJson(e));
    } catch (e) {
      print(e);
      throw (e);
    }
  }
}
