class Error {
  String message;

  Error(this.message);

  @override
  String toString() {
    return "Error: $message";
  }
}
