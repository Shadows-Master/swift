import 'package:flutter/material.dart';
import 'package:swift/helpers/constants.dart';

class AccountProfileFees extends StatelessWidget {
  const AccountProfileFees({
    Key key,
    @required String amount,
  })  : _amount = amount,
        super(key: key);

  final String _amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kSecondaryColor.withOpacity(.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Spree Wallet',
            softWrap: true,
            style: TextStyle(
                color: kAccentColor,
                fontWeight: FontWeight.w700,
                fontSize: fontSize(size: 18)),
          ),
          Text(
            '\$$_amount',
            softWrap: true,
            style: TextStyle(
                color: kAccentColor,
                fontWeight: FontWeight.w700,
                fontSize: fontSize(size: 18)),
          )
        ],
      ),
    );
  }
}
