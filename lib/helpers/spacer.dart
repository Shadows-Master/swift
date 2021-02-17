import 'package:flutter/material.dart';

import 'config_size.dart';

class SpacerWidth extends StatelessWidget {
  const SpacerWidth({
    Key key,
    this.size,
  }) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(size),
    );
  }
}

class SpacerHeight extends StatelessWidget {
  const SpacerHeight({
    Key key,
    this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(size),
    );
  }
}

class SpacerPercentHeight extends StatelessWidget {
  const SpacerPercentHeight({
    Key key,
    this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: ConfigSize.screenHeight * size);
  }
}

class SpacerPercentWidth extends StatelessWidget {
  const SpacerPercentWidth({
    Key key,
    this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: ConfigSize.screenWidth * size);
  }
}
