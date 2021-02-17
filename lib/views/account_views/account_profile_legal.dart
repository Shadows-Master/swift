import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/helpers/spacer.dart';

class AccountProfileLegal extends StatelessWidget {
  const AccountProfileLegal({
    Key key,
    @required String mTitle,
    @required String mContentTitle,
    @required String mContentTitle1,
  })  : _mTitle = mTitle,
        _mContentTitle = mContentTitle,
        _mContentTitle1 = mContentTitle1,
        super(key: key);

  final String _mTitle;
  final String _mContentTitle;
  final String _mContentTitle1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _mTitle,
            softWrap: true,
            style: TextStyle(
                color: kAccentColor,
                fontSize: fontSize(size: 17),
                fontWeight: FontWeight.w700),
          ),
          SpacerHeight(size: 14),
          LegalContents(mContentTitle: _mContentTitle),
          LegalContents(mContentTitle: _mContentTitle1),
        ],
      ),
    );
  }
}

class LegalContents extends StatelessWidget {
  const LegalContents({
    Key key,
    @required String mContentTitle,
  })  : _mContentTitle = mContentTitle,
        super(key: key);

  final String _mContentTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(top: 0),
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 1.2, color: kTextColor.withOpacity(.1)),
              bottom:
                  BorderSide(width: 1.2, color: kTextColor.withOpacity(.1)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _mContentTitle,
            softWrap: true,
            style: TextStyle(
                color: kTextColor,
                fontSize: fontSize(size: 17),
                fontWeight: FontWeight.w600),
          ),
          Icon(
            SimpleLineIcons.arrow_right,
            color: Colors.black,
            size: 13,
          )
        ],
      ),
    );
  }
}
