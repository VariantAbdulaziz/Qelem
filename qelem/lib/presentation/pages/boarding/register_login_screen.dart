import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterLoginScreen extends StatelessWidget {
  const RegisterLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pads = MediaQuery.of(context).size.height / 15;
    final buttonHeight = MediaQuery.of(context).size.height / 15;
    final imageHeight = MediaQuery.of(context).size.height / 2;
    final mainWelcomeTextStyle = Theme.of(context).textTheme.headline5;
    final additionalIntrosStyle = Theme.of(context).textTheme.bodyText2;
    const signInButtonText = "SIGN IN";
    const createAccButtonText = "CREATE AN ACCOUNT";
    const imagePath = "assets/newbies_motivator.png";
    const mainWelcomeText = "Hey! Welcome";
    const additionalIntros =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam egestas rhoncus lectus rhoncus, tempor. ";

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: pads),
          Container(
            padding: EdgeInsets.all(pads),
            width: double.infinity,
            height: imageHeight,
            child: const Image(
              image: AssetImage(imagePath),
              fit: BoxFit.contain,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: pads, right: pads),
                width: double.infinity,
                height: buttonHeight + 2 * pads,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      mainWelcomeText,
                      style: mainWelcomeTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      additionalIntros,
                      textAlign: TextAlign.center,
                      style: additionalIntrosStyle,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: pads),
                width: double.infinity,
                height: buttonHeight + 2 * pads,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, buttonHeight),
                      ),
                      onPressed: () => context.go('/sign-in'),
                      child: const Text(signInButtonText),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, buttonHeight),
                      ),
                      onPressed: () => context.go('/register'),
                      child: const Text(createAccButtonText),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
