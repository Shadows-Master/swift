import 'package:flutter/material.dart';
import 'package:swift/helpers/constants.dart';

class AccountProfileLogout extends StatelessWidget {
  const AccountProfileLogout({
    Key key,
    @required String mSignOut,
  })  : _mSignOut = mSignOut,
        super(key: key);

  final String _mSignOut;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          height: 55,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(top: 28),
          child: Text(
            _mSignOut,
            softWrap: true,
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: fontSize(size: 17),
                fontWeight: FontWeight.w800),
          )),
    );
  }
}
