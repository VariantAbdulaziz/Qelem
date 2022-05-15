import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
	const EditProfile({Key? key}) : super(key: key);

	@override
	State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
	TextEditingController userNameController = TextEditingController();
	TextEditingController firstNameController = TextEditingController();
	TextEditingController lastNameController = TextEditingController();

	@override
	Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.subtitle1;
		return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 25.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: const Alignment(1.1, 1.1),
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("abebe.jpeg"),
                    radius: 80,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 207, 165, 215),
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 2.0,
                          spreadRadius: 0.1,
                        )
                      ]
                    ),
                    child: IconButton(
                      padding: const EdgeInsets.all(0.0),
                      icon: const Icon(
                        Icons.camera_alt
                      ),
                      // size: 24.0,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )
          ),
          Padding(
						padding:
								const EdgeInsets.only(top: 40.0, left: 15.0, right: 15.0, bottom: 15.0),
						child: TextFormField(
							style: textStyle,
							controller: userNameController,
							decoration: InputDecoration(
								labelText: 'User Name',
								labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
								border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
								)
							),
						),
					),
					Padding(
						padding:
								const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
						child: TextFormField(
							style: textStyle,
							controller: firstNameController,
							decoration: InputDecoration(
								labelText: 'First Name',
								labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
								border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
								)
							),
						),
					),
					Padding(
						padding:
								const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
						child: TextFormField(
							style: textStyle,
							controller: lastNameController,
							decoration: InputDecoration(
								labelText: 'Last Name',
								labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
								border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
								)
							),
						),
					),
          Container(
						margin: const EdgeInsets.only(right: 15.0, top: 15.0),
						child: Align(
							alignment: Alignment.centerRight,
							child: SizedBox(
								width: 115.0,
								height: 45.0,
								child: MaterialButton(
									shape: RoundedRectangleBorder(
										borderRadius: BorderRadius.circular(5)
									),
									child: Text(
										'UPDATE',
										style: GoogleFonts.comfortaa(
											color: Colors.white,
											textStyle: textStyle,
											fontSize: 16,
											letterSpacing: 2
										),
									),
									color: const Color.fromRGBO(98, 0, 238, 1),
									onPressed: () async { },
								),
							),
						)
					)
        ]
      )
		);
	}
} 