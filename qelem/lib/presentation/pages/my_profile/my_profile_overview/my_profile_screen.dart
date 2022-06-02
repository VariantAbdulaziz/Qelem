import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyMedium;

    return Column(children: [
      Row(
        children: [
          const Padding(
              padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 25.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/default_profile_picture.jpeg"),
                radius: 60,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 15),
              Text("Vernon Lindgren", style: textStyle),
              const SizedBox(height: 10),
              Text("@vernon_lindgren", style: textStyle)
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
            onTap: () => context.push('/edit-profile'),
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
            onTap: () => context.push('/change-password'),
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
    ]);
  }
}
