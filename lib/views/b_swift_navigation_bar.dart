import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:swift/helpers/config_size.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/providers/navigation_provider/swift_navigation_provider.dart';
import 'package:swift/views/swift_tabs_views/swift_account_view.dart';
import 'package:swift/views/swift_tabs_views/swift_chat_view.dart';
import 'package:swift/views/swift_tabs_views/swift_explore_view.dart';
import 'package:swift/views/swift_tabs_views/swift_home_view.dart';
import 'package:swift/views/swift_tabs_views/swift_notifications_view.dart';

class BSwiftNavigationBar extends StatefulWidget {
  BSwiftNavigationBar({Key key}) : super(key: key);

  @override
  _BSwiftNavigationBarState createState() =>
      _BSwiftNavigationBarState();
}

class _BSwiftNavigationBarState extends State<BSwiftNavigationBar> {
  final GlobalKey<ScaffoldState> _mKey = GlobalKey<ScaffoldState>();
  Widget mSwiftNavItemText({String mItemText = 'Home'}) => Text(
        mItemText ?? '',
        softWrap: true,
        style: TextStyle(
            fontFamily: GoogleFonts.gothicA1().fontFamily,
            fontSize: fontSize(size: 15),
            fontWeight: FontWeight.w800),
      );

  final List<Widget> mSwiftPages = [
    SwiftHomeView(),
    SwiftExploreView(),
    SwiftNotificationsView(),
    SwiftChatView(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: mSwiftPages.elementAt(
            context.watch<SwiftNavigationProvider>().mIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:
              context.watch<SwiftNavigationProvider>().mIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          unselectedItemColor: kTextColor,
          selectedItemColor: kPrimaryColor,
          onTap: (value) {
            context
                .read<SwiftNavigationProvider>()
                .setIndex(index: value);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Feather.home),
                title: mSwiftNavItemText(mItemText: "")),
            BottomNavigationBarItem(
                icon: Icon(Feather.search),
                title: mSwiftNavItemText(mItemText: "")),
            BottomNavigationBarItem(
                icon: Icon(Feather.bell),
                title: mSwiftNavItemText(mItemText: "")),
            BottomNavigationBarItem(
                icon: Icon(SimpleLineIcons.bubbles),
                title: mSwiftNavItemText(mItemText: "")),
          ],
        ),
      ),
    );
  }
}
