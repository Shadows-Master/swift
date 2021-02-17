import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:swift/helpers/constants.dart';

class AccountDetailsScreen extends StatefulWidget {
  AccountDetailsScreen({Key key}) : super(key: key);

  @override
  _AccountDetailsScreenState createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  final String _mTitle = "Personal Information";
  final String _mLabelContent = "";
  final Color _mLabelContentColor = kPrimaryColor;
  bool _mValueSwitched = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            leading: IconButton(
                icon: Icon(
                  SimpleLineIcons.arrow_left,
                  size: 16,
                  color: kAccentColor,
                ),
                onPressed: () => Navigator.of(context).pop()),
            title: Text(
              'Account Details',
              softWrap: true,
              style: TextStyle(
                  color: kAccentColor,
                  fontSize: fontSize(size: 19),
                  fontWeight: FontWeight.w900),
            ),
            centerTitle: true,
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Container(
                child: Column(
                  children: [
                    PersonalInfos(
                        mTitle: _mTitle,
                        mLabelContent: _mLabelContent,
                        mLabelContentColor: _mLabelContentColor),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.only(top: 28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Notifications',
                            softWrap: true,
                            style: TextStyle(
                                color: kAccentColor,
                                fontSize: fontSize(size: 17),
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            height: 60,
                            margin: EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        width: 1.2,
                                        color: kTextColor.withOpacity(.1)),
                                    bottom: BorderSide(
                                        width: 1.2,
                                        color: kTextColor.withOpacity(.1)))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Enable Push Notifications',
                                  softWrap: true,
                                  style: TextStyle(
                                      color: kTextColor,
                                      fontSize: fontSize(size: 17),
                                      fontWeight: FontWeight.w600),
                                ),
                                Switch(
                                  value: _mValueSwitched,
                                  activeColor: kPrimaryColor,
                                  inactiveTrackColor: kTextColor,
                                  onChanged: (value) {
                                    setState(() {
                                      _mValueSwitched = value;
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PersonalInfos extends StatelessWidget {
  const PersonalInfos({
    Key key,
    @required String mTitle,
    @required String mLabelContent,
    @required Color mLabelContentColor,
  })  : _mTitle = mTitle,
        _mLabelContent = mLabelContent,
        _mLabelContentColor = mLabelContentColor,
        super(key: key);

  final String _mTitle;
  final String _mLabelContent;
  final Color _mLabelContentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _mTitle,
            softWrap: true,
            style: TextStyle(
                color: kAccentColor,
                fontSize: fontSize(size: 17),
                fontWeight: FontWeight.w700),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 13),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        width: 1.2, color: kTextColor.withOpacity(.1)),
                    bottom: BorderSide(
                        width: 1.2, color: kTextColor.withOpacity(.1)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Full Name',
                  softWrap: true,
                  style: TextStyle(
                      color: kPrimaryBbnColor,
                      fontSize: fontSize(size: 17),
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  _mLabelContent.isEmpty ? 'Lance V' : _mLabelContent,
                  softWrap: true,
                  style: TextStyle(
                      color: _mLabelContentColor,
                      fontSize: fontSize(size: 17),
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 13),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        width: 1.2, color: kTextColor.withOpacity(.1)),
                    bottom: BorderSide(
                        width: 1.2, color: kTextColor.withOpacity(.1)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your E-mail',
                  softWrap: true,
                  style: TextStyle(
                      color: kPrimaryBbnColor,
                      fontSize: fontSize(size: 17),
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  _mLabelContent.isEmpty
                      ? 'user@fastspree.com'
                      : _mLabelContent,
                  softWrap: true,
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: fontSize(size: 17),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
