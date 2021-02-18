import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:swift/helpers/config_size.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/helpers/spacer.dart';
import 'package:swift/widgets/modals/room_user_modal_details.dart';

class RoomUserModal extends StatefulWidget {
  const RoomUserModal({
    Key key,
    @required String mUsername,
    @required String mRole,
  }) : _mUsername = mUsername, _mRole = mRole, super(key: key);

  final String _mUsername;
  final String _mRole;

  @override
  _RoomUserModalState createState() => _RoomUserModalState();
}

class _RoomUserModalState extends State<RoomUserModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:
      ConfigSize.screenHeight * .7,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
            BorderRadius.only(
                topLeft: Radius
                    .circular(20),
                topRight:
                Radius.circular(
                    20))),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: top(size: 10),
                    bottom: bottom(size: 15)),
                child: Row(
                  children: [
                    SpacerWidth(size: 100,),
                    Text(
                      'Shadows space',
                      softWrap: true,
                      style: TextStyle(
                          color: kAccentColor,
                          fontWeight: FontWeight.w700,
                          fontSize: fontSize(size: 20)),
                    ),
                    SpacerWidth(
                      size: 80,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.close,
                          color: kAccentColor,
                          size: 24,
                        ),
                        onPressed: () => Navigator.of(context).pop()
                        )
                  ],
                )),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                childAspectRatio: .8,
                children: [
                  UserRoomAvatar(mUsername: widget._mUsername, mRole: widget._mRole),
                  UserRoomAvatar(mUsername: "Amber", mRole: "Speaker"),
                  UserRoomAvatar(mUsername: "Michael", mRole: "Speaker"),
                  UserRoomAvatar(mUsername: widget._mUsername, mRole: widget._mRole),
                  UserRoomAvatar(mUsername: widget._mUsername, mRole: widget._mRole),
                  UserRoomAvatar(mUsername: widget._mUsername, mRole: widget._mRole),
                  UserRoomAvatar(mUsername: widget._mUsername, mRole: widget._mRole),
                  Container(
                    margin:
                    EdgeInsets.only(
                        top: top(size: 8)),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: kTextLightColor,
                          child: Text(
                            '+16',
                            softWrap: true,
                            style: TextStyle(
                                color: kAccentColor,
                                fontSize: fontSize(size: 16),
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Text(
                          'people',
                          softWrap: true,
                          style: TextStyle(
                              color: kAccentColor,
                              fontSize: fontSize(size: 13),
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Text(
              'Your mic will be off to start',
              softWrap: true,
              style: TextStyle(
                  color: kAccentColor,
                  fontSize: fontSize(size: 16),
                  fontWeight: FontWeight.w700),
            ),
            Container(
                width: ConfigSize.screenWidth,
                height: height(size: 50),
                margin: EdgeInsets.symmetric(
                    horizontal: horizontal(size: 15),
                    vertical: vertical(size: 10)
                ),
                child: RaisedButton(
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                      'Join this space',
                      style: TextStyle(
                          fontSize: fontSize(size: 19),
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                  onPressed: () {
                    //Navigator.of(context).pop();
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) => RoomUserModalDetails()
                    );
                  },
                )
            ),
            SpacerHeight(size: 45,)
          ],
        ),
      ),
    );
  }
}


class UserRoomAvatar extends StatelessWidget {
  const UserRoomAvatar({
    Key key,
    @required String mUsername,
    @required String mRole,
    String mUserPicture, this.onPress,
  })  : _mUsername = mUsername,
        _mRole = mRole,
        _mUserPicture = mUserPicture,
        super(key: key);

  final String _mUsername;
  final String _mRole;
  final String _mUserPicture;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                  _mUserPicture ?? 'assets/images/avatar-profile.jpg'),
              radius: 30,
            ),
            Text(
              _mUsername,
              softWrap: true,
              style: TextStyle(
                  color: kAccentColor,
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize(size: 13)),
            ),
            Text(
              _mRole,
              softWrap: true,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: fontSize(size: 13)),
            )
          ],
        ),
      ),
    );
  }
}
