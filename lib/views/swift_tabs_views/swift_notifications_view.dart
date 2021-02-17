import 'package:flutter/material.dart';
import 'package:swift/helpers/constants.dart';
import 'package:swift/helpers/spacer.dart';

class SwiftNotificationsView extends StatefulWidget {
  SwiftNotificationsView({Key key}) : super(key: key);

  @override
  _SwiftNotificationsViewState createState() =>
      _SwiftNotificationsViewState();
}

class _SwiftNotificationsViewState
    extends State<SwiftNotificationsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Notifications',
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
                              Text(
                                'Start follow you',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: kAccentColor,
                                    fontSize: fontSize(size: 15)),
                              ),
                            ],
                          ),
                          subtitle:  Container(
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
                          onTap: () { },
                        ),
                      );
                    })),
          ),
      ),
    );
  }
}
