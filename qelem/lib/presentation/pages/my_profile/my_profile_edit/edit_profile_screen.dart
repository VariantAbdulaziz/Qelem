import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/application/profile/edit_profile/edit_profile_bloc.dart';
import 'package:qelem/application/profile/edit_profile/edit_profile_event.dart';
import 'package:qelem/application/profile/edit_profile/edit_profile_state.dart';
import 'package:qelem/common/constants.dart';
import 'package:qelem/domain/profile/edit_profile_form.dart';
import 'package:qelem/domain/profile/profile.dart';
import 'package:qelem/presentation/routes/routes.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileBloc, EditProfileState>(
      listener: (context, state) {
        if (state is EditProfileStateUpdating) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Updating...')),
          );
        } else if (state is EditProfileStateUpdateFailure) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error.message),
              backgroundColor: Colors.red,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        }

        if (state is EditProfileStateLoaded) {
          firstNameController.text = state.profile.firstName;
          lastNameController.text = state.profile.lastName;
        }

        if (state is EditProfileStateSuccess) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Profile Updated')),
          );
          context.go(Routes.myProfile);
        }
      },
      buildWhen: (prev, curr) => (curr is! EditProfileStateUpdating),
      builder: (context, state) {
        if (state is EditProfileStateInitial) {
          return Scaffold(
            appBar: _buildAppBar(context),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (state is EditProfileStateLoading) {
          return Scaffold(
            appBar: _buildAppBar(context),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (state is EditProfileStateLoaded) {
          return Scaffold(
            appBar: _buildAppBar(context),
            body: _buildBody(context, state.profile),
          );
        }

        if (state is EditProfileStateSuccess) {
          return Scaffold(
            appBar: _buildAppBar(context),
            body: _buildBody(context, state.profile),
          );
        }

        if (state is EditProfileStateLoadingFailure) {
          return Scaffold(
            appBar: _buildAppBar(context),
            body: const Center(
              child: Text('Loading failed'),
            ),
          );
        }

        // Unreachable state
        developer.log('Unreachable state',
            name: 'EditProfileScreen', error: state);
        return Scaffold(
          appBar: _buildAppBar(context),
          body: const Center(
            child: Text('Unknown error'),
          ),
        );
      },
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text(Constants.editProfile),
      actions: [
        IconButton(
            onPressed: () {
              context.go(Routes.myProfile);
            },
            icon: const Icon(Icons.close))
      ],
    );
  }

  _currentImage(Profile profile) {
    return NetworkImage(profile.profilePictureUrl);
  }

  _buildBody(BuildContext context, Profile profile) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 25.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: const Alignment(1.1, 1.1),
                children: [
                  CircleAvatar(
                    backgroundImage: _currentImage(profile),
                    radius: 80,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(3),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            offset: const Offset(0.0, 4.0),
                            blurRadius: 5.0,
                            spreadRadius: 0.0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.12),
                            offset: const Offset(0.0, 1.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.20),
                            offset: const Offset(0.0, 2.0),
                            blurRadius: 4.0,
                            spreadRadius: 0.0,
                          )
                        ]),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: IconButton(
                        padding: const EdgeInsets.all(0.0),
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: TextFormField(
            style: Theme.of(context).textTheme.bodyMedium,
            controller: firstNameController,
            decoration: const InputDecoration(
                labelText: 'First Name', border: OutlineInputBorder()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: TextFormField(
            style: Theme.of(context).textTheme.bodyMedium,
            controller: lastNameController,
            decoration: const InputDecoration(
                labelText: 'Last Name', border: OutlineInputBorder()),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(right: 15.0, top: 15.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                child: Text('UPDATE',
                    style: Theme.of(context).primaryTextTheme.button),
                onPressed: () {
                  final editProfileForm = EditProfileForm(
                    firstName: firstNameController.text,
                    lastName: lastNameController.text,
                    profilePicture: null,
                  );

                  BlocProvider.of<EditProfileBloc>(context)
                      .add(EditProfileEventUpdate(editProfileForm));
                },
              ),
            )),
      ],
    );
  }
}
