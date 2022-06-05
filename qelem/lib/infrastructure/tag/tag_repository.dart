import 'dart:io';
import 'dart:developer' as developer;

import 'package:qelem/domain/tag/tag.dart';
import 'package:qelem/domain/tag/tag_name.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/infrastructure/tag/tag_mapper.dart';
import 'package:qelem/infrastructure/tag/tags_api.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

class TagRepository {
  final TagsApi _tagsApi;

  TagRepository(this._tagsApi);

  Future<Either<List<Tag>>> getTags() async {
    try {
      final tags = await _tagsApi.getTags();
      return Either(val: tags.map((tag) => tag.toTag()).toList());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while fetching all tags in Tags Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  Future<Either<Tag>> createTag(TagName tagName) async {
    try {
      final newTag = await _tagsApi.createTag(tagName.value);
      return Either(val: newTag.toTag());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while creating tag in Tags Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  Future<Either<Tag>> updateTag(Tag tag) async {
    try {
      final newTag = await _tagsApi.updateTag(tag.toTagDto());
      return Either(val: newTag.toTag());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while creating tag in Tags Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }
}
