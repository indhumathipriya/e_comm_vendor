import 'package:ecomm_multivendor/shared/ui_navigation.dart';
import 'package:ecomm_multivendor/views/onboarding/onboarding_first_view.dart';
import 'package:flutter/material.dart';

import '../shared/my_constant.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _moveByMe();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyConstant.primaryColor,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: _bottomNavBar(),
          body: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset("assets/main_top.png", fit: BoxFit.fitWidth),
              ),
              const SizedBox(
                height: MyConstant.defaultPadding * 2,
              ),
              const Text(
                "LOGO",
                style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.w600,
                    color: MyConstant.myblack),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _moveByMe() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        NavByMe.pushCompleteReplacement(context, const OnboardingFirstView());
      },
    );
  }

  _bottomNavBar() {
    return Image.asset("assets/main_grocery.png");
  }
}
