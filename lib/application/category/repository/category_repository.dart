import 'package:the_joker/application/category/data_provider/category_provider.dart';
import 'package:the_joker/application/category/model/category_model.dart';

class CategoryRepo {
  final CategoryProvider dataprovider;

  CategoryRepo(this.dataprovider);

  Future<CategoryModel> getCategory() async {
    return this.dataprovider.getCategories();
  }
}
