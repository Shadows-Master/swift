import 'package:flutter/material.dart';
import 'package:swift/helpers/config_size.dart';
import 'package:swift/helpers/constants.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: kBackgroundColor),
        ),
        Positioned(
          left: left(
              size: -(ConfigSize.screenHeight * 0.5 -
                  ConfigSize.screenWidth * 0.5)),
          bottom: bottom(size: 130),
          child: Container(
            width: ConfigSize.screenHeight,
            height: ConfigSize.screenHeight,
            decoration: BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: top(size: -ConfigSize.screenHeight * 0.6),
          left: left(size: -ConfigSize.screenWidth * 0.5),
          child: Container(
            width: ConfigSize.screenHeight * 0.8,
            height: ConfigSize.screenHeight * .8,
            decoration: BoxDecoration(
                color: kBackgroundColor, shape: BoxShape.circle),
          ),
        ),
      ],
    );
  }
}
