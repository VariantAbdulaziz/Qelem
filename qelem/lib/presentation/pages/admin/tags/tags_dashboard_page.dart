import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/tag/tag_bloc.dart';
import 'package:qelem/application/tag/tag_event.dart';
import 'package:qelem/domain/tag/tag_repository_interface.dart';
import 'package:qelem/presentation/pages/admin/tags/tags_dashboard_screen.dart';

class TagsDashboardPage extends StatefulWidget {
  const TagsDashboardPage({Key? key}) : super(key: key);

  @override
  State<TagsDashboardPage> createState() => _TagsDashboardPageState();
}

class _TagsDashboardPageState extends State<TagsDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TagBloc(
        tagRepository: RepositoryProvider.of<TagRepositoryInterface>(context),
      )..add(const LoadTagsTagEvent()),
      child: const TagsDashboardScreen(),
    );
  }
}
