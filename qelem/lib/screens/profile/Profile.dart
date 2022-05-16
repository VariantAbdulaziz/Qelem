import 'package:flutter/material.dart';
import 'package:qelem/screens/profile/ChangePassword.dart';
import 'package:qelem/screens/profile/EditProfile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyMedium;

    return Column(children: [
      Row(
        children: [
          const Padding(
              padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 25.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/abebe.jpeg"),
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
      InkWell(
          onTap: () {
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => const EditProfile()));
          },
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
      const Divider(
        height: 1,
        thickness: 0.2,
        indent: 20,
        endIndent: 20,
        color: Colors.black45,
      ),
      InkWell(
          onTap: () {
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => const ChangePassword()));
          },
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
