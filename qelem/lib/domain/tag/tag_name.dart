import 'package:equatable/equatable.dart';
import 'package:qelem/domain/tag/tag_name_validator.dart';

class TagName extends Equatable {
  final String value;

  TagName({required this.value}) {
    if (!TagNameValidator.isValid(value)) {
      throw ArgumentError('Tag name must be between 2 and 10 characters');
    }
  }

  @override
  List<Object> get props => [value];
}
