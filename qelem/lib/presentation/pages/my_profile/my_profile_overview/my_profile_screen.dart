import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/application/auth/auth_bloc.dart';
import 'package:qelem/application/auth/auth_event.dart';
import 'package:qelem/application/profile/profile_overview/profile_bloc.dart';
import 'package:qelem/application/profile/profile_overview/profile_state.dart';
import 'package:qelem/domain/profile/profile.dart';
import 'package:qelem/presentation/pages/my_profile/my_profile_overview/widgets/delete_account_dialog.dart';
import 'package:qelem/presentation/routes/routes.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is ProfileStateDeleteAccountSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Account deleted')),
          );

          BlocProvider.of<AuthBloc>(context).add(const AuthEventSignOut());
        }
        if (state is ProfileStateDeleteAccountFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error.message),
              duration: const Duration(seconds: 5),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is ProfileStateInitial || state is ProfileStateLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          if (state is ProfileStateLoaded) {
            return _buildBody(context, state.profile);
          } else {
            return const Center(child: Text('Error'));
          }
        }
      },
    );
  }

  Widget _buildBody(BuildContext context, Profile profile) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyLarge;

    return Column(children: [
      Row(
        children: [
          Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 15.0, right: 25.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(profile.profilePictureUrl),
                radius: 60,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Text("${profile.firstName} ${profile.lastName}",
                  style: textStyle),
              const SizedBox(height: 10),
              Text("@${profile.userName}", style: textStyle)
            ],
          )
        ],
      ),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Level: Guardian of pupils", style: textStyle),
          )),
      const Divider(
        height: 1,
        thickness: 0.4,
        color: Colors.black45,
      ),
      Material(
        child: InkWell(
            onTap: () => context.push(Routes.editProfile),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(
                      Icons.edit,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(width: 20, height: 40),
                    Text("Edit Profile", style: textStyle),
                  ]),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            )),
      ),
      const Divider(
        height: 1,
        thickness: 0.2,
        indent: 20,
        endIndent: 20,
        color: Colors.black45,
      ),
      Material(
        child: InkWell(
            onTap: () => context.push(Routes.changePassword),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(
                      Icons.lock,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(width: 20, height: 40),
                    Text("Change Password", style: textStyle),
                  ]),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            )),
      ),
      const Divider(
        height: 1,
        thickness: 0.2,
        indent: 20,
        endIndent: 20,
        color: Colors.black45,
      ),
      Material(
        child: InkWell(
            onTap: () {
              showDialog(
                context: this.context,
                builder: (context) => DeleteAccountDialog(
                  profileBloc: BlocProvider.of<ProfileBloc>(this.context),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(
                      Icons.delete_forever,
                      color: Theme.of(context).errorColor,
                    ),
                    const SizedBox(width: 20, height: 40),
                    Text("Delete Account", style: textStyle),
                  ]),
                ],
              ),
            )),
      ),
      const Divider(
        height: 1,
        thickness: 0.2,
        indent: 20,
        endIndent: 20,
        color: Colors.black45,
      ),
    ]);
  }
}
