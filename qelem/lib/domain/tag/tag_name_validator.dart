class TagNameValidator {
  static bool isValid(String tagName) {
    return tagName.length > 1 && tagName.length < 10;
  }
}
