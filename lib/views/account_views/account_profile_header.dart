import 'package:flutter/material.dart';
import 'package:swift/helpers/constants.dart';

class AccountProfileHeader extends StatelessWidget {
  const AccountProfileHeader({
    Key key,
    @required String name,
  })  : _name = name,
        super(key: key);

  final String _name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _name,
            softWrap: true,
            style: TextStyle(
                color: kAccentColor,
                fontWeight: FontWeight.w800,
                fontSize: fontSize(size: 22)),
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: 42,
                backgroundColor: kAccentColor,
                child: Text(
                  _name[0],
                  softWrap: true,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize(size: 22),
                      fontWeight: FontWeight.w800),
                ),
              ),
              Positioned(
                right: -10,
                bottom: -10,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
