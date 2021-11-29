import 'package:equatable/equatable.dart';

abstract class CategoryEvent extends Equatable {}

class FetchCategories extends CategoryEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}
