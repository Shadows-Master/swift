import 'dart:async';

import 'package:flutter/material.dart';
import 'package:swift/helpers/config_size.dart';
import 'package:swift/helpers/constants.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({Key key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 1000),
        () => Navigator.of(context).pushReplacementNamed('/login'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(gradient: kPrimaryGradient),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.4,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/background_music.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              Container(
                  child: Stack(
                children: [
                  Text(
                    'SWIFT',
                    softWrap: true,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: fontSize(size: 39),
                        letterSpacing: 0.6,
                        foreground: Paint()
                          ..color = Colors.white
                          ..strokeWidth = 1.1
                          ..style = PaintingStyle.stroke),
                  ),
                  Text(
                    'SWIFT',
                    softWrap: true,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: fontSize(size: 39),
                        letterSpacing: 0.6,
                        foreground: Paint()
                          ..color = Colors.white
                          ..strokeWidth = 1.1
                          ..style = PaintingStyle.stroke),
                  )
                ],
              ))
            ],
          ),
        ),
      )),
    );
  }
}
