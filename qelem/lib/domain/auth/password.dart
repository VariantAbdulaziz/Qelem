class Password {
  final String value;

  Password(this.value) {
    if (value.isEmpty) {
      throw Exception('Password can not be empty');
    }
    if (value.length < 8) {
      throw Exception('Password must be at least 8 characters');
    }
  }
}
