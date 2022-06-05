import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/presentation/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    context.go(Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    final productNameStyle = Theme.of(context).primaryTextTheme.headline1;
    final ownerStyle = Theme.of(context).primaryTextTheme.subtitle1;
    const productName = "Qelem";
    const owner = "owner";

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  productName,
                  style: productNameStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "by its " + owner,
                  style: ownerStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
