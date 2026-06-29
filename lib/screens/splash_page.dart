import 'package:ecommerce/app_properties.dart';
import 'package:ecommerce/screens/auth/welcome_back_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> opacity;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 2500),
      vsync: this,
    );
    opacity = Tween<double>(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward().then((_) {
      navigationPage();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void navigationPage() {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => WelcomeBackPage()));
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mediumYellow,
        image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          filterQuality: FilterQuality.high,
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(color: mediumYellow),
        child: SafeArea(
          child: new Scaffold(
            backgroundColor: mediumYellow,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Opacity(
                    opacity: opacity.value,
                    child: new Image.asset('assets/logo.png'),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 10,
                  width: 300,
                  child: Center(
                    child: LinearProgressIndicator(
                      value: opacity.value,
                      backgroundColor: mediumYellow,
                      color: Colors.white,
                    ),
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
