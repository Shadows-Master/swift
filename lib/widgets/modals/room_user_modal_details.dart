import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/widgets/modals/room_user_modal.dart';

class RoomUserModalDetails extends StatefulWidget {
  const RoomUserModalDetails({
    Key key,
  }) : super(key: key);

  @override
  _RoomUserModalDetailsState createState() => _RoomUserModalDetailsState();
}

class _RoomUserModalDetailsState extends State<RoomUserModalDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: top(size: 15)),
            padding: EdgeInsets.symmetric(horizontal: horizontal(size: 15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    SimpleLineIcons.arrow_down,
                    color: kAccentColor,
                    size: 18,
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                Text(
                  'Shadows\'s space',
                  softWrap: true,
                  style: TextStyle(
                      color: kAccentColor,
                      fontSize: fontSize(size: 22),
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  'Leave',
                  softWrap: true,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: fontSize(size: 16),
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              childAspectRatio: .8,
              children: [
                UserRoomAvatar(mUsername: "Shadows", mRole: 'Admin', mUserPicture: 'assets/images/male.png',),
                UserRoomAvatar(mUsername: "Amber", mRole: "Talking", mUserPicture: 'assets/images/female.png',),
                UserRoomAvatar(mUsername: "Michael", mRole: "Talking"),
                UserRoomAvatar(mUsername: "Joshua", mRole: "Talking"),
                UserRoomAvatar(mUsername: "Jack", mRole: "Listening", mUserPicture: 'assets/images/male.png',),
                UserRoomAvatar(mUsername: "Kayvon", mRole: "Listening"),
                UserRoomAvatar(mUsername: "Maya", mRole: "Listening", mUserPicture: 'assets/images/female.png',),
                UserRoomAvatar(mUsername: "Rémy", mRole: "Listening"),
                UserRoomAvatar(mUsername: "Stacy", mRole: "Listening"),
                UserRoomAvatar(mUsername: "Tanya", mRole: "Listening"),
                UserRoomAvatar(mUsername: "Simone", mRole: "Listening"),
                UserRoomAvatar(mUsername: "Shadows", mRole: 'Admin', mUserPicture: 'assets/images/male.png',),
                UserRoomAvatar(mUsername: "Amber", mRole: "Talking", mUserPicture: 'assets/images/female.png',),
                UserRoomAvatar(mUsername: "Michael", mRole: "Talking"),
                UserRoomAvatar(mUsername: "Joshua", mRole: "Talking"),
                UserRoomAvatar(mUsername: "Jack", mRole: "Listening", mUserPicture: 'assets/images/male.png',),
                UserRoomAvatar(mUsername: "Kayvon", mRole: "Listening"),
                UserRoomAvatar(mUsername: "Maya", mRole: "Listening", mUserPicture: 'assets/images/female.png',),
                UserRoomAvatar(mUsername: "Rémy", mRole: "Listening"),
                UserRoomAvatar(mUsername: "Stacy", mRole: "Listening"),
                UserRoomAvatar(mUsername: "Tanya", mRole: "Listening"),
                UserRoomAvatar(mUsername: "Simone", mRole: "Listening"),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    height: height(size: 50),
                    width: width(size: 150),
                    decoration: BoxDecoration(
                      color: kTextLightColor,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.fingerprint_outlined),
                        Text(
                          'Leave quietly',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: fontSize(size: 17),
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    )
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: left(size: 110)),
                      child: Row(
                        children: [
                          InkWell(
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: kTextLightColor,
                              child: Icon(Feather.plus, color: kAccentColor,),
                            ),
                          ),
                          InkWell(
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: kTextLightColor,
                              child: Icon(HumanitarianIcons.microphone),
                            ),
                          ),
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
    );
  }
}
