import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:swift/helpers/constants.dart';

class AccountPlaceholder extends StatelessWidget {
  const AccountPlaceholder({
    Key key,
    @required String mRoutePageName,
    @required String mContentTitle,
  })  : _mRoutePageName = mRoutePageName,
        _mContentTitle = mContentTitle,
        super(key: key);

  final String _mRoutePageName;
  final String _mContentTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(_mRoutePageName),
      child: Container(
        height: 60,
        margin: EdgeInsets.only(top: 13),
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
      ),
    );
  }
}
