import 'package:flutter/material.dart';
import 'package:swift/views/account_views/account_profile_details.dart';
import 'package:swift/views/account_views/account_profile_fees.dart';
import 'package:swift/views/account_views/account_profile_header.dart';
import 'package:swift/views/account_views/account_profile_legal.dart';
import 'package:swift/views/account_views/account_profile_logout.dart';
import 'package:swift/widgets/background.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final String _name = "Lance V";
  final String _amount = "0.00";
  final String _mTitle = "Invite a Friend";
  final String _mContentTitle = "Give \$20, Get \$20";
  final String _mSignOut = "Sign Out";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            AppBackground(),
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  child: Column(
                    children: [
                      AccountProfileHeader(name: _name),
                      AccountProfileDetails(
                          mTitle: _mTitle, mContentTitle: _mContentTitle),
                      AccountProfileDetails(
                          mTitle: 'General', mContentTitle: 'My Account Details'),
                      AccountProfileDetails(
                          mTitle: 'Help & Support',
                          mContentTitle: 'Contact Support'),
                      AccountProfileLegal(
                          mTitle: 'Legal',
                          mContentTitle: 'Terms of Service',
                          mContentTitle1: 'Privacy Policy'),
                      AccountProfileLogout(mSignOut: _mSignOut)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
