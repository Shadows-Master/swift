import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift/helpers/constants.dart';

class TabMenu extends StatelessWidget {
  const TabMenu({
    Key key,
    @required this.mTabController,
    this.mTitleOne,
    this.mTitleTwo,
    this.mTitleThree,
  }) : super(key: key);

  final TabController mTabController;
  final String mTitleOne;
  final String mTitleTwo;
  final String mTitleThree;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal(size: 15)),
      child: TabBar(
        controller: mTabController,
        labelColor: kPrimaryColor,
        indicatorColor: kPrimaryColor,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: kPrimaryColor, width: 3.5),
          insets: EdgeInsets.symmetric(horizontal: 26),
        ),
        labelStyle: TextStyle(
          fontSize: fontSize(size: 15),
          fontFamily: GoogleFonts.gothicA1().fontFamily,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: kTextColor,
        tabs: [
          Tab(
            text: mTitleOne ?? 'À la Une',
          ),
          Tab(
            text: mTitleTwo ?? 'Le PEV',
          ),
          Tab(
            text: mTitleThree ?? 'Autres',
          )
        ],
      ),
    );
  }
}

class TabMenuView extends StatelessWidget {
  const TabMenuView({
    Key key,
    @required this.mTabController,
    this.mTabChild1,
    this.mTabChild2,
    this.mTabChild3,
  }) : super(key: key);

  final TabController mTabController;
  final Widget mTabChild1;
  final Widget mTabChild2;
  final Widget mTabChild3;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: mTabController,
        children: [
          mTabChild1 ?? Container(),
          mTabChild2 ?? Container(),
          mTabChild3 ?? Container(),
        ],
      ),
    );
  }
}
