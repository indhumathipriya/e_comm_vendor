import 'package:ecomm_multivendor/common_widget/ui_elevated_button.dart';
import 'package:ecomm_multivendor/shared/my_constant.dart';
import 'package:ecomm_multivendor/views/auth/otp.dart';
import 'package:flutter/material.dart';

import '../../shared/ui_navigation.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyConstant.white,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: _bottomNavBar(),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: MyConstant.defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: MyConstant.defaultPadding * 1.5,
                    ),
                    const Text("LOGO",
                        textAlign: TextAlign.center,
                        style: MyTextStyles.logoText),
                    const SizedBox(
                      height: MyConstant.defaultPadding * 2.5,
                    ),
                    const Text("Welcome To",
                        textAlign: TextAlign.center,
                        style: MyTextStyles.loginHeadingText),
                    const SizedBox(
                      height: MyConstant.defaultPadding * 4,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF272727),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: MyConstant.defaultPadding * 1.5,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text("Mobile No :",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF272727))),
                    ),
                    const SizedBox(
                      height: MyConstant.defaultPadding,
                    ),
                    _buildTextField(),
                    const SizedBox(
                      height: MyConstant.defaultPadding * 4.5,
                    ),
                    UiElevatedButton(
                      text: "Get OTP",
                      onPressed: () {
                        NavByMe.push(context, const OTPView());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildTextField() {
    return Material(
      elevation: 5.0,
      borderRadius: const BorderRadius.all(
        Radius.circular(50),
      ),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MyConstant.defaultPadding),
          color: MyConstant.white,
        ),
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: Row(
            children: [
              const SizedBox(width: MyConstant.defaultPadding),
              SizedBox(
                child: Image.asset(
                  "assets/india_flag.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: MyConstant.defaultPadding),
              const Text("+91",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF0C0B0B))),
              const SizedBox(width: MyConstant.defaultPadding / 2),
              Container(
                height: 35,
                width: 2,
                color: MyConstant.primaryColor,
              ),
              const SizedBox(width: MyConstant.defaultPadding / 2),
              const Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "9876543",
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF0C0B0B)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _bottomNavBar() {
    return SizedBox(
      width: double.infinity,
      child: Image.asset("assets/login_img.png"),
    );
  }
}
