import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/helpers/spacer.dart';
import 'package:swift/widgets/modals/room_user_modal.dart';

class SwiftHomeView extends StatefulWidget {
  SwiftHomeView({Key key}) : super(key: key);

  @override
  _SwiftHomeViewState createState() => _SwiftHomeViewState();
}

class _SwiftHomeViewState extends State<SwiftHomeView> {
  final GlobalKey<ScaffoldState> _mKey = GlobalKey<ScaffoldState>();
  final String _mUsername = "Shadows";
  final String _mRole = "Admin";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _mKey,
          appBar: AppBar(
            title: Stack(
              children: [
                Text(
                  'SWIFT',
                  softWrap: true,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: fontSize(size: 19),
                      foreground: Paint()
                        ..color = kPrimaryColor
                        ..strokeWidth = 1.1
                        ..style = PaintingStyle.stroke),
                ),
                Text(
                  'SWIFT',
                  softWrap: true,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: fontSize(size: 19),
                      foreground: Paint()
                        ..color = kPrimaryColor
                        ..strokeWidth = 1.1
                        ..style = PaintingStyle.stroke),
                )
              ],
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Feather.plus,
                    color: kPrimaryColor,
                  ),
                  onPressed: () {}),
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
          body: SizedBox(
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
                            radius: 20,
                            backgroundImage: AssetImage(
                                'assets/images/user_avatar.jpg'),
                          ),
                          title: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shadows Master ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: kAccentColor,
                                    fontSize: fontSize(size: 15)),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.more_horiz_rounded,
                                  color: kAccentColor,
                                  size: 16,
                                ),
                                onPressed: () {},
                              )
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                      'Music Awards: ',
                                      style: TextStyle(
                                          fontSize: fontSize(size: 15),
                                          color: kAccentColor,
                                          fontWeight: FontWeight.w700)
                                  ),
                                  Text(
                                      '50',
                                      style: TextStyle(
                                        fontSize: fontSize(size: 15),
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.w700)
                                  ),
                                  Icon(HumanitarianIcons.man, )
                                ],
                              ),
                              SpacerHeight(size: 10),
                              Text('03:30',
                                  style: TextStyle(
                                      fontSize: fontSize(size: 15),
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.w700)),
                              SpacerHeight(size: 15)
                            ],
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight:
                                            Radius.circular(12))),
                                builder: (BuildContext context) {
                                  return RoomUserModal(mUsername: _mUsername, mRole: _mRole);
                                });
                          },
                        ),
                      );
                    })),
          )),
    );
  }
}




