class CategoryModel {
  late bool _error;
  late List _categories=[];

  CategoryModel.fromJson(Map<String, dynamic> parsedJson) {
    _error = parsedJson['error'];
    List temp = [];
    for (int i=0; i<parsedJson['categories'].length;i++) {
      temp.add(parsedJson['categories'][i]);
    }
    _categories = temp;
  }
  bool get error => _error;
  List get categories => _categories;
}
