import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:swift/helpers/constants.dart';

class SwiftDrawer extends StatelessWidget {
  const SwiftDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Shadows007'),
            accountEmail: Text('kombouidriss@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'SM',
                softWrap: true,
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: fontSize(size: 22),
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                drawerItem(
                    mIconData: SimpleLineIcons.user,
                    mTitle: 'Profile'),
                drawerItem(),
              ],
            ),
          )
        ],
      ),
    );
  }

  ListTile drawerItem(
      {String mTitle = "", IconData mIconData = Feather.image}) {
    return ListTile(
      leading: Icon(mIconData),
      title: Text(
        mTitle,
        softWrap: true,
        style: TextStyle(
            fontSize: fontSize(size: 17),
            fontWeight: FontWeight.w700,
            color: kAccentColor),
      ),
    );
  }
}
