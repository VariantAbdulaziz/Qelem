// TODO: Not finished yet.
import 'package:qelem/domain/auth/user.dart';

class Question {
  final int id;
  final String heading;
  final String content;
  final User author;

  Question({
    required this.author,
    required this.id,
    required this.heading,
    required this.content,
  });
}
