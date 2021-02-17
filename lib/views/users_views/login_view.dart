import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:swift/helpers/config_size.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/helpers/spacer.dart';
import 'package:swift/widgets/background.dart';
import 'package:swift/widgets/forms/form_widget.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _mKey = GlobalKey<FormState>();
  bool _mIsPass = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kTextColor,
        body: Stack(
          children: [
            AppBackground(),
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: top(size: 55)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.3, color: kBackgroundColor)),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/avatar-profile.jpg'),
                          radius: 60,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            bottom: bottom(size: 35),
                            top: top(size: 15)),
                        child: Column(
                          children: [
                            Text.rich(TextSpan(
                                text: 'Welcome, ',
                                style: TextStyle(
                                    color: kAccentColor,
                                    fontSize: fontSize(size: 19),
                                    fontWeight: FontWeight.w600),
                                children: [
                                  TextSpan(
                                      text: 'John Doe',
                                      style: TextStyle(
                                          fontSize:
                                              fontSize(size: 22),
                                          color: kPrimaryColor,
                                          fontWeight:
                                              FontWeight.w700))
                                ])),
                            Text(
                              'Enter your email and password to sign-in',
                              softWrap: true,
                              style: TextStyle(
                                  color: kAccentColor,
                                  fontSize: fontSize(size: 15)),
                            )
                          ],
                        ),
                      ),
                      Form(
                        key: _mKey,
                        child: Column(
                          children: [
                            SwiftTextFormField(
                              labelText: 'E-mail Address',
                              hintText: 'Enter your e-mail address',
                              suffixIcon:
                                  Icon(SimpleLineIcons.envelope),
                              keyboardType:
                                  TextInputType.emailAddress,
                              validator: (String mail) {
                                return (mail.isEmpty)
                                    ? kEmailNullError
                                    : (!emailValidatorRegExp
                                            .hasMatch(mail))
                                        ? kInvalidEmailError
                                        : null;
                              },
                            ),
                            SpacerHeight(size: 8),
                            SwiftTextFormField(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              isPassword: _mIsPass,
                              suffixIcon: IconButton(
                                icon: Icon(_mIsPass
                                    ? SimpleLineIcons.eye
                                    : Feather.eye_off),
                                onPressed: () {
                                  setState(() {
                                    _mIsPass = !_mIsPass;
                                  });
                                },
                              ),
                              validator: (String mdp) {
                                return (mdp.isEmpty)
                                    ? kPassNullError
                                    : null;
                              },
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(
                                  top: top(size: 20),
                                  right: right(size: 15),
                                  bottom: bottom(size: 20)),
                              child: Text('Forgot Password ?',
                                  style: TextStyle(
                                      fontSize: fontSize(size: 14),
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Container(
                                width: ConfigSize.screenWidth,
                                height: height(size: 60),
                                margin: EdgeInsets.symmetric(
                                    horizontal: horizontal(size: 15)),
                                child: RaisedButton(
                                  color: kPrimaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18)),
                                  child: Text('Connexion',
                                      style: TextStyle(
                                          fontSize:
                                              fontSize(size: 19),
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.w700)),
                                  onPressed: () {
                                    if (!_mKey.currentState
                                        .validate()) {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              '/home');
                                    }
                                  },
                                )),
                            Container(
                              margin: EdgeInsets.only(
                                  top: top(size: 20),
                                  bottom: bottom(size: 25)),
                              child: Text.rich(TextSpan(
                                  text: 'Don\'t have an Account ? ',
                                  style: TextStyle(
                                      color: kAccentColor,
                                      fontSize: fontSize(size: 15),
                                      fontWeight: FontWeight.w600),
                                  children: [
                                    TextSpan(
                                        recognizer:
                                            TapGestureRecognizer()
                                              ..onTap = () => Navigator
                                                      .of(context)
                                                  .pushReplacementNamed(
                                                      '/register'),
                                        text: 'Sign Up',
                                        style: TextStyle(
                                            fontSize:
                                                fontSize(size: 16),
                                            color: kPrimaryColor,
                                            decoration: TextDecoration
                                                .underline,
                                            decorationStyle:
                                                TextDecorationStyle
                                                    .solid,
                                            fontWeight:
                                                FontWeight.w700))
                                  ])),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
