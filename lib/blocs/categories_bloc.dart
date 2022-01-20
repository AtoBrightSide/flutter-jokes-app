import 'package:the_joker/resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:the_joker/models/category_model.dart';

class CategoryBloc {
  final _repository = Repository();
  final _categoryFetcher = PublishSubject<CategoryModel>();

  Observable<CategoryModel> get category => _categoryFetcher.stream;

  getCategories() async {
    CategoryModel categoryModel = await _repository.getCategories();
    _categoryFetcher.sink.add(categoryModel);
  }

  dispose() {
    _categoryFetcher.close();
  }
}

final bloc = CategoryBloc();
