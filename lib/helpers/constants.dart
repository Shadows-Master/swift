import 'dart:ui';

import 'package:flutter/material.dart';

import 'config_size.dart';

const kPrimaryColor = Color(0xFF1F58a8);
const kSecondaryColor = Color(0xFFE3EFFC);
const kAccentColor = Color(0xFF161e28);
const kPrimaryLightColor = Colors.pinkAccent;
const kPrimaryBbnColor = Color.fromRGBO(60, 60, 60, 1);
const kPrimaryCardColor = Color(0xFFCCCCCC);
const kBackgroundColor = Color(0xFFE4E6F1);

const kTextColor = Color(0xFF757575);
const kFormFillColor = Color(0xFFf7f7ff9);
const kFormFillTextColor = Color(0xFF161E28);
const kTextLightColor = Color.fromRGBO(237, 237, 237, 1);
const kPrimaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      kPrimaryColor,
      kPrimaryColor,
      kPrimaryColor,
      kPrimaryColor,
    ]);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final RegExp validatorRegExp = RegExp(r"^[a-z0-9]");
final RegExp digitValidatorRegExp = RegExp(r"^[0-9]+$");
final String textValidatorError =
    "Ce champ ne doit contenir que des chiffres";
const String kEmailNullError = "Please Enter your email";
const String kEmailNullErrorFr = "Svp entrez votre email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kInvalidEmailErrorFr = "Entrez une adresse mail valide";
const String kPassNullError = "Please Enter your password";
const String kPassNullErrorFr = "Svp entrez votre mot de passe";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = "Please Enter your name";
const String kCityNullError = "Please Enter your city";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kPhoneNumberSizeError =
    "Your number must have 9 characters";
const String kAddressNullError = "Please Enter your address";

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius:
        BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

fontSize({double size}) => getProportionateScreenWidth(size);
horizontal({double size}) => getProportionateScreenWidth(size);
width({double size}) => getProportionateScreenWidth(size);
left({double size}) => getProportionateScreenWidth(size);
right({double size}) => getProportionateScreenWidth(size);
vertical({double size}) => getProportionateScreenHeight(size);
height({double size}) => getProportionateScreenHeight(size);
top({double size}) => getProportionateScreenHeight(size);
bottom({double size}) => getProportionateScreenHeight(size);

const String productDescription =
    "The fastest, most powerful Xbox ever. Experience true 4K gaming, faster load times, increased inventory, "
    "Smart Delivery and backwards compatible with thousands of games, Includes an AC power adapter and an Xbox "
    "wireless controller in carbon black.";

const String description =
    "Hydration never looked so sleek. This reusable water bottle is made with durable, yet "
    "lightweight glass and wrapped in matte silicone. Plus, it's dishwasher safe. Size:9.3\" x 2.75\" x 2.75\" . 20 oz";
