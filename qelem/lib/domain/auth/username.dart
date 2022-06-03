import 'package:equatable/equatable.dart';

class UserName extends Equatable{
  final String value;
  UserName(this.value) {
    if (value.isEmpty) {
      throw Exception('UserName can not be empty');
    }
    if (value.length < 8) {
      throw Exception('UserName must be at least 8 characters');
    }
  }

  @override
  List<Object?> get props => [value];
}
