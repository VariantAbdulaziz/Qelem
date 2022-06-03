import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/auth/auth_bloc.dart';
import 'package:qelem/application/auth/auth_state.dart';
import 'package:qelem/application/question/question_detail/question_detail_bloc.dart';
import 'package:qelem/application/question/questions_list/questions_list_bloc.dart';
import 'package:qelem/infrastructure/auth/auth_api.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';
import 'package:qelem/util/my_http_client.dart';

import 'bloc_observer.dart';
import 'presentation/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  BlocOverrides.runZoned(
    () {
      runApp(
        // Dependecy injection tree
        RepositoryProvider(
          create: (context) => MyHttpClient(),
          child: MultiRepositoryProvider(
            // Data providers
            providers: [
              RepositoryProvider(
                  create: (context) =>
                      AuthApi(RepositoryProvider.of<MyHttpClient>(context))),
            ],

            child: MultiRepositoryProvider(
              // Repository providers
              providers: [
                RepositoryProvider(
                  create: (context) =>
                      AuthRepository(RepositoryProvider.of<AuthApi>(context)),
                ),
              ],

              child: MultiBlocProvider(
                // Bloc providers
                providers: [
                  BlocProvider(
                    create: (context) => AuthBloc(
                        authRepository:
                            RepositoryProvider.of<AuthRepository>(context)),
                  ),
                  BlocProvider(
                    create: (context) => QuestionsListBloc(
                        questionRepository:
                            RepositoryProvider.of<QuestionRepository>(context)),
                  ),
                  BlocProvider(
                    create: (context) => QuestionBloc(
                        questionRepository:
                            RepositoryProvider.of<QuestionRepository>(context)),
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
