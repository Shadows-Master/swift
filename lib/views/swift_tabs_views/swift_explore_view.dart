import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/widgets/forms/form_widget.dart';
import 'package:swift/widgets/tabbars/tab_menu.dart';

class SwiftExploreView extends StatefulWidget {
  SwiftExploreView({Key key}) : super(key: key);

  @override
  _SwiftExploreViewState createState() => _SwiftExploreViewState();
}

class _SwiftExploreViewState extends State<SwiftExploreView>
    with SingleTickerProviderStateMixin {
  TabController mTabController;
  final String mTitle = "";
  final String mPicture = "";

  @override
  void initState() {
    mTabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          child: Column(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: SwiftTextFormField(
                  prefixIcon: Icon(Feather.search),
                  labelText: 'Search',
                ),
              ),
              TabMenu(
                mTabController: mTabController,
                mTitleOne: 'Featured',
                mTitleTwo: 'Trending',
                mTitleThree: 'Browse',
              ),
              TabMenuView(
                mTabController: mTabController,
                mTabChild3: Container(
                  child: Column(
                    children: [
                      SectionTitle(mTitle: 'Bookmarks'),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        margin: EdgeInsets.only(top: 12),
                        height: 110,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            BookmarkCard(
                                mPicture: 'assets/images/animes.jpg',
                                mTitle: 'Animes'),
                            BookmarkCard(
                                mPicture: 'assets/images/music.jpg',
                                mTitle: 'Music'),
                            BookmarkCard(
                                mPicture: 'assets/images/beauty.png',
                                mTitle: 'Beauty'),
                            BookmarkCard(
                                mPicture: 'assets/images/gaming.png',
                                mTitle: 'Gaming'),
                            BookmarkCard(
                                mPicture: 'assets/images/foods.jpg',
                                mTitle: 'Foods'),
                            BookmarkCard(
                                mPicture: 'assets/images/pets.jpg',
                                mTitle: 'Pets & Animals'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15),
                          margin: EdgeInsets.only(top: 17),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              BookmarkCard(
                                  mHeight: 190,
                                  mWidth: 150,
                                  mTop: 15,
                                  mPicture:
                                      'assets/images/animes.jpg',
                                  mTitle: 'Animes'),
                              BookmarkCard(
                                  mHeight: 190,
                                  mWidth: 150,
                                  mTop: 15,
                                  mPicture: 'assets/images/music.jpg',
                                  mTitle: 'Music'),
                              BookmarkCard(
                                  mHeight: 190,
                                  mWidth: 150,
                                  mTop: 15,
                                  mPicture:
                                      'assets/images/beauty.png',
                                  mTitle: 'Beauty'),
                              BookmarkCard(
                                  mHeight: 190,
                                  mWidth: 150,
                                  mTop: 15,
                                  mPicture:
                                      'assets/images/gaming.png',
                                  mTitle: 'Gaming'),
                              BookmarkCard(
                                  mHeight: 190,
                                  mWidth: 150,
                                  mTop: 15,
                                  mPicture: 'assets/images/foods.jpg',
                                  mTitle: 'Foods'),
                              BookmarkCard(
                                  mHeight: 190,
                                  mWidth: 150,
                                  mTop: 15,
                                  mPicture: 'assets/images/pets.jpg',
                                  mTitle: 'Pets & Animals'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.mTitle,
  }) : super(key: key);

  final String mTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: left(size: 16)),
      margin: EdgeInsets.only(top: top(size: 8)),
      alignment: Alignment.centerLeft,
      child: Text(
        mTitle ?? 'Bookmarks',
        style: TextStyle(
            fontWeight: FontWeight.w900,
            color: kAccentColor,
            fontSize: fontSize(size: 18)),
      ),
    );
  }
}

class BookmarkCard extends StatelessWidget {
  const BookmarkCard({
    Key key,
    @required this.mPicture,
    @required this.mTitle,
    this.mWidth,
    this.mHeight,
    this.mTop = 0.0,
  }) : super(key: key);

  final String mPicture;
  final String mTitle;
  final double mWidth;
  final double mHeight;
  final double mTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mWidth ?? 93,
      height: mHeight ?? 110,
      margin: EdgeInsets.only(right: 10.4, top: mTop),
      decoration: BoxDecoration(
          color: kAccentColor,
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.45,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                          mPicture ?? 'assets/images/animes.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Container(
            child: Text(
              mTitle ?? 'Animes',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize(size: 17),
                  fontWeight: FontWeight.w800),
            ),
          )
        ],
      ),
    );
  }
}
