class UserName {
  final String value;
  UserName(this.value) {
    if (value.isEmpty) {
      throw Exception('UserName can not be empty');
    }
    if (value.length < 8) {
      throw Exception('UserName must be at least 8 characters');
    }
  }
}
