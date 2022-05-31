class QHttpException implements Exception {
  QHttpException(this.message, this.statusCode);
  final String message;
  final int statusCode;
}
