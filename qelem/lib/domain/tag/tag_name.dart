import 'package:equatable/equatable.dart';

class TagName extends Equatable {
  final String value;

  const TagName({required this.value});

  @override
  List<Object> get props => [value];
}
