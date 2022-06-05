import 'package:qelem/domain/tag/tag.dart';
import 'package:qelem/domain/tag/tag_name.dart';
import 'package:qelem/util/either.dart';

abstract class TagRepositoryInterface {
  Future<Either<List<Tag>>> getTags();

  Future<Either<Tag>> createTag(TagName tagName);

  Future<Either<Tag>> updateTag(Tag tag);
}
