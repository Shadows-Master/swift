import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';
import 'package:line_icons/line_icons.dart';
import 'package:swift/helpers/config_size.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/helpers/spacer.dart';

class ListenerPermissionModal extends StatefulWidget {
  const ListenerPermissionModal({
    Key key,
  }) : super(key: key);

  @override
  _ListenerPermissionModalState createState() => _ListenerPermissionModalState();
}

class _ListenerPermissionModalState extends State<ListenerPermissionModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConfigSize.screenHeight * .69,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: ConfigSize.screenHeight * .69,
            decoration: BoxDecoration(
              border: Border.all(color: kAccentColor)
            ),
            child: Stack(
              children: [
                Container(
                  height: height(size: 133),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background_music.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Positioned(
                  top: top(size: 102),
                  left: 0,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: left(size: 20)),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 1.9, color: Colors.white)
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/beauty.png'),
                                  radius: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: left(size: 140), top: top(size: 35)),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: kPrimaryColor, width: 1.6)
                                      ),
                                      child: Icon(LineIcons.envelope, color: kPrimaryColor,size: 22,),
                                    ),
                                    SpacerWidth(size: 8),
                                    Container(
                                      width: 80,
                                      height: 26,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(color: kPrimaryColor, width: 1.6)
                                      ),
                                      child: Text('Follow', style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w700),),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: left(size: 13)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Maya Gold',
                                style: TextStyle(
                                    color: kAccentColor,
                                    fontWeight: FontWeight.w900,
                                    fontSize: fontSize(size: 18)
                                ),
                              ),
                              Text(
                                '@mayagold',
                                style: TextStyle(
                                    color: kTextColor,
                                    fontWeight: FontWeight.w900,
                                    fontSize: fontSize(size: 12)
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(top: BorderSide(color: kTextColor.withOpacity(.1)))
                                ),
                                child: Text.rich(
                                    TextSpan(
                                        text: 'Founder of ',
                                        style: TextStyle(color: kAccentColor),
                                        children: [
                                          TextSpan(
                                              text: 'thegoldlist.co ',
                                              style: TextStyle(color: kPrimaryColor)
                                          ),
                                          TextSpan(
                                              text: '| e-board member of \nthe Bey hive | Product Designer ',
                                              style: TextStyle(color: kAccentColor)
                                          ),
                                          TextSpan(
                                              text: '@twitter',
                                              style: TextStyle(color: kPrimaryColor)
                                          ),
                                        ]
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                        ListenerOptions(),
                        ListenerOptions(
                          iconData: Icons.block_flipped,
                          iconDataColor: kPrimaryColor,
                          text: 'Block and remove @mayagold',
                          textColor: kPrimaryColor,
                        ),
                        ListenerOptions(
                          iconData: SimpleLineIcons.flag,
                          iconDataColor: kPrimaryColor,
                          text: 'Report and remove @mayagold',
                          textColor: kPrimaryColor,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class ListenerOptions extends StatelessWidget {
  const ListenerOptions({
    Key key, this.text, this.textColor, this.iconData, this.iconDataColor,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final IconData iconData;
  final Color iconDataColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.only(left: left(size: 18)),
        margin: EdgeInsets.symmetric(vertical: vertical(size: 15)),
        child: Row(
          children: [
            Icon(iconData ?? HumanitarianIcons.microphone, color: iconDataColor ?? kAccentColor,),
            SpacerWidth(size: 15),
            Text(
              text ?? 'invite to speak',
              style: TextStyle(
                  color: textColor ?? kAccentColor,
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize(size: 16)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
