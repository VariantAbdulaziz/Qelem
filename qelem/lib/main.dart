import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/auth/auth_bloc.dart';
import 'package:qelem/application/auth/auth_state.dart';
import 'package:qelem/data/local/shared_prefs/shared_prefs_service.dart';
import 'package:qelem/domain/answer/answer_repository_interface.dart';
import 'package:qelem/domain/auth/auth_repository_interface.dart';
import 'package:qelem/domain/profile/profile_repository_interface.dart';
import 'package:qelem/domain/question/question_repository_interface.dart';
import 'package:qelem/domain/tag/tag_repository_interface.dart';
import 'package:qelem/domain/users/users_repository_interface.dart';
import 'package:qelem/infrastructure/answer/answer_api.dart';
import 'package:qelem/infrastructure/answer/answer_repoistory.dart';
import 'package:qelem/infrastructure/auth/auth_api.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';
import 'package:qelem/infrastructure/profile/profile_api.dart';
import 'package:qelem/infrastructure/profile/profile_repository.dart';
import 'package:qelem/infrastructure/question/question_api.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';
import 'package:qelem/infrastructure/tag/tag_repository.dart';
import 'package:qelem/infrastructure/tag/tags_api.dart';
import 'package:qelem/infrastructure/users/users_api.dart';
import 'package:qelem/infrastructure/users/users_repository.dart';
import 'package:qelem/util/my_http_client.dart';

import 'bloc_observer.dart';
import 'presentation/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  BlocOverrides.runZoned(
    () {
      runApp(
        //
        // Dependecy injection tree
        //
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider(create: (_) => MyHttpClient()),
            RepositoryProvider(create: (_) => SharedPrefsService()),
          ],
          child: MultiRepositoryProvider(
            // Data providers
            providers: [
              RepositoryProvider(
                create: (context) =>
                    AuthApi(RepositoryProvider.of<MyHttpClient>(context)),
              ),
              RepositoryProvider(
                create: ((context) =>
                    ProfileApi(RepositoryProvider.of<MyHttpClient>(context))),
              ),
              RepositoryProvider(
                create: (context) =>
                    AnswerApi(RepositoryProvider.of<MyHttpClient>(context)),
              ),
              RepositoryProvider(
                create: (context) =>
                    QuestionApi(RepositoryProvider.of<MyHttpClient>(context)),
              ),
              RepositoryProvider(
                create: (context) =>
                    TagsApi(RepositoryProvider.of<MyHttpClient>(context)),
              ),
              RepositoryProvider(
                create: (context) =>
                    UsersApi(RepositoryProvider.of<MyHttpClient>(context)),
              ),
            ],

            child: MultiRepositoryProvider(
              // Repository providers
              providers: [
                RepositoryProvider<AuthRepositoryInterface>(
                  create: (context) => AuthRepository(
                      RepositoryProvider.of<AuthApi>(context),
                      RepositoryProvider.of<SharedPrefsService>(context)),
                ),
                RepositoryProvider<ProfileRepositoryInterface>(
                  create: (context) => ProfileRepository(
                      RepositoryProvider.of<ProfileApi>(context)),
                ),
                RepositoryProvider<AnswerRepositoryInterface>(
                  create: (context) => AnswerRepository(
                      RepositoryProvider.of<AnswerApi>(context)),
                ),
                RepositoryProvider<QuestionRepositoryInterface>(
                  create: (context) => QuestionRepository(
                      RepositoryProvider.of<QuestionApi>(context),
                      RepositoryProvider.of<AuthRepositoryInterface>(context)),
                ),
                RepositoryProvider<TagRepositoryInterface>(
                  create: (context) =>
                      TagRepository(RepositoryProvider.of<TagsApi>(context)),
                ),
                RepositoryProvider<UsersRepositoryInterface>(
                  create: (context) =>
                      UsersRepository(RepositoryProvider.of<UsersApi>(context)),
                ),
              ],

              child: MultiBlocProvider(
                // Singleton Bloc providers
                providers: [
                  BlocProvider(
                    create: (context) => AuthBloc(
                      authRepository:
                          RepositoryProvider.of<AuthRepositoryInterface>(
                              context),
                      sharedPrefsService:
                          RepositoryProvider.of<SharedPrefsService>(context),
                    ),
                  ),
                ],
                child: BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    // Update auth token if it's changed
                    if (state is AuthAuthenticated) {
                      RepositoryProvider.of<MyHttpClient>(context).authToken =
                          state.token;
                    } else if (state is AuthUnauthenticated) {
                      RepositoryProvider.of<MyHttpClient>(context).authToken =
                          null;
                    } else if (state is AppInitialized) {
                      RepositoryProvider.of<MyHttpClient>(context).authToken =
                          state.token;
                    }
                  },
                  child: BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return App(
                        authBloc: BlocProvider.of<AuthBloc>(context),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    },
    blocObserver: SimpleBlocObserver(),
  );
}
