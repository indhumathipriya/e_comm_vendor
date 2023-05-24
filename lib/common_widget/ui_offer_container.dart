import 'package:ecomm_multivendor/shared/my_constant.dart';
import 'package:flutter/material.dart';


class UiOfferContainer extends StatelessWidget {
  const UiOfferContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 60,
      decoration: const BoxDecoration(
        color: MyConstant.primaryColor,
      ),
      child: const Center(
        child: Text(
          "13 % OFF",
          style: TextStyle(
              color: MyConstant.white,
              fontSize: 8,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
