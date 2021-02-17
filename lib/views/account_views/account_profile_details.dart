import 'package:flutter/material.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/widgets/accounts/account_placeholder.dart';

class AccountProfileDetails extends StatefulWidget {
  const AccountProfileDetails({
    Key key,
    @required String mTitle,
    @required String mContentTitle,
  })  : _mTitle = mTitle,
        _mContentTitle = mContentTitle,
        super(key: key);

  final String _mTitle;
  final String _mContentTitle;

  @override
  _AccountProfileDetailsState createState() => _AccountProfileDetailsState();
}

class _AccountProfileDetailsState extends State<AccountProfileDetails> {
  final String _mRoutePageName = "/user/account-details";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget._mTitle,
            softWrap: true,
            style: TextStyle(
                color: kAccentColor,
                fontSize: fontSize(size: 17),
                fontWeight: FontWeight.w700),
          ),
          AccountPlaceholder(
              mRoutePageName: _mRoutePageName,
              mContentTitle: widget._mContentTitle)
        ],
      ),
    );
  }
}
