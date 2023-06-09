import 'package:ecomm_multivendor/common_widget/ui_elevated_button.dart';
import 'package:ecomm_multivendor/shared/my_constant.dart';
import 'package:ecomm_multivendor/shared/ui_navigation.dart';
import 'package:ecomm_multivendor/views/drawer/track_order.dart';
import 'package:flutter/material.dart';


class PaymentSucessView extends StatefulWidget {
  const PaymentSucessView({Key? key}) : super(key: key);

  @override
  State<PaymentSucessView> createState() => _PaymentSucessViewState();
}

class _PaymentSucessViewState extends State<PaymentSucessView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/verified_tick.png"),
            const Text(
              "Pay Success",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF000000),
              ),
            )
          ],
        ),
      ),
    );
  }

  _bottomNavBar() {
    return Padding(
      padding: const EdgeInsets.all(MyConstant.defaultPadding),
      child: UiElevatedButton(
          text: "Track Order",
          onPressed: () {
            NavByMe.push(context, const TrackOrderView());
          }),
    );
  }
}
