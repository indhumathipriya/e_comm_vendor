import 'package:ecomm_multivendor/common_widget/ui_otp_textfield.dart';
import 'package:ecomm_multivendor/shared/my_constant.dart';
import 'package:ecomm_multivendor/shared/ui_navigation.dart';
import 'package:ecomm_multivendor/views/auth/verification.dart';
import 'package:flutter/material.dart';


import '../../common_widget/ui_elevated_button.dart';

class OTPView extends StatefulWidget {
  const OTPView({Key? key}) : super(key: key);

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyConstant.white,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: MyConstant.defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: MyConstant.defaultPadding * 2,
                    ),
                    const Text(
                      "LOGO",
                      textAlign: TextAlign.center,
                      style: MyTextStyles.logoText,
                    ),
                    const SizedBox(
                      height: MyConstant.defaultPadding * 3,
                    ),
                    const Text(
                      "Enter Verification Code",
                      style: MyTextStyles.loginHeadingText,
                    ),
                    const SizedBox(
                      height: MyConstant.defaultPadding,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Enter  4 digit code that send to",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF000000)),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "your name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: MyConstant.defaultPadding * 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OtpInput(
                          _fieldOne,
                          first: true,
                          last: false,
                        ),
                        OtpInput(_fieldTwo, first: false, last: false),
                        OtpInput(_fieldThree, first: false, last: false),
                        OtpInput(_fieldFour, first: false, last: false),
                      ],
                    ),
                    const SizedBox(
                      height: MyConstant.defaultPadding * 4,
                    ),
                    UiElevatedButton(
                        text: "Continue",
                        onPressed: () {
                          NavByMe.push(context, const VerificationView());
                        }),
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
