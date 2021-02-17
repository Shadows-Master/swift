import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/helpers/spacer.dart';
import 'package:swift/widgets/background.dart';

class SwiftChatView extends StatefulWidget {
  SwiftChatView({Key key}) : super(key: key);

  @override
  _SwiftChatViewState createState() => _SwiftChatViewState();
}

class _SwiftChatViewState extends State<SwiftChatView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Messages',
            softWrap: true,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w700,
              fontSize: fontSize(size: 19),),
          ),
          actions: [
            InkWell(
              onTap: () => Navigator.of(context).pushNamed('/profile'),
              child: Container(
                margin: EdgeInsets.only(right: right(size: 15)),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: kPrimaryColor, width: 2.5)),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(
                      'assets/images/avatar-profile.jpg'),
                ),
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            AppBackground(),
            SizedBox(
              width: double.infinity,
              child: Container(
                  child: ListView.separated(
                      itemCount: 10,
                      separatorBuilder: (context, index) => Divider(
                        height: 1.2,
                        color: kTextColor.withOpacity(.2),
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(
                                  'assets/images/male.png'),
                            ),
                            title: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Jessica Menders',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: kAccentColor,
                                      fontSize: fontSize(size: 15)),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.more_horiz_rounded,
                                    color: kTextColor,
                                    size: 16,
                                  ),
                                  onPressed: () {},
                                )
                              ],
                            ),
                            subtitle: Column(
                              children: [
                                Text(
                                    productDescription,
                                    softWrap: true,
                                    textAlign: TextAlign.justify,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: fontSize(size: 15),
                                        color: kAccentColor,
                                        fontWeight: FontWeight.w600)),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                        '${index + 1} hrs ago',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontSize: fontSize(size: 12),
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.w700)),
                                  ),

                                SpacerHeight(size: 15)
                              ],
                            ),
                            onTap: () { },
                          ),
                        );
                      })),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: Icon(SimpleLineIcons.bubbles, color: Colors.white,),
          onPressed: (){},
        ),
      ),
    );
  }
}
