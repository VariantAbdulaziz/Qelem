import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterLoginScreen extends StatelessWidget {
  const RegisterLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: 300.0,
                  child: Image(
                    image: AssetImage("assets/newbies_motivator.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 70.0),
                Text(
                  "Hey! Welcome",
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30.0),
                Text(
                  """Lorem ipsum dolor sit amet, consectetur"""
                  """ adipiscing elit. Nam egestas rhoncus lectus rhoncus, tempor. """,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(height: 30.0),
                ElevatedButton(
                  key: const Key('sign_in'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  onPressed: () => context.push('/sign-in'),
                  child: Text(
                    "SIGN IN",
                    style: Theme.of(context).primaryTextTheme.button,
                  ),
                ),
                const SizedBox(height: 19.0),
                ElevatedButton(
                  key: const Key('create_account'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  onPressed: () => context.push('/register'),
                  child: Text(
                    "CREATE AN ACCOUNT",
                    style: Theme.of(context).primaryTextTheme.button,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
