import 'package:ecomm_multivendor/shared/my_constant.dart';
import 'package:flutter/material.dart';

import '../../common_widget/ui_appbar.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({Key? key}) : super(key: key);

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  bool isAdded = false;
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyConstant.white,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(height: MyConstant.defaultPadding),
              const UiAppBar(
                text: "My Cart",
                isTrailing: true,
              ),
              _buildCartContainer(),
            ],
          ),
        ),
      ),
    );
  }

  _buildCartContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: MyConstant.defaultPadding / 2,
          vertical: MyConstant.defaultPadding),
      child: SizedBox(
        height: 160,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: MyConstant.defaultPadding / 2),
                const Icon(
                  Icons.history,
                  color: MyConstant.green,
                ),
                const SizedBox(width: MyConstant.defaultPadding / 2),
                const Text("Delivery In Tomorrow 9:30",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                const Spacer(),
                _buildOfferContainer(),
              ],
            ),
            const SizedBox(height: MyConstant.defaultPadding),
            Flex(
              direction: Axis.horizontal,
              children: [
                const SizedBox(width: MyConstant.defaultPadding / 2),
                Image.asset("assets/ord_history.png"),
                const SizedBox(width: MyConstant.defaultPadding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "New Potato (Aloo)",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    const Text(
                      "1Kg",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        const Text(
                          "₹ 27",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        const SizedBox(width: MyConstant.defaultPadding / 2),
                        const Text(
                          "₹ 37",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black,
                              decoration: TextDecoration.lineThrough),
                        ),
                        const SizedBox(width: MyConstant.defaultPadding),
                        _buildAddItem(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildOfferContainer() {
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

  _buildAddItem() {
    return Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MyConstant.defaultPadding / 2),
          color: MyConstant.primaryColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (value == 0) {
                    isAdded = false;
                    value = 0;
                  } else {
                    value = value - 1;
                  }
                });
              },
              icon: const Icon(
                Icons.remove,
                size: 20,
                color: MyConstant.white,
              ),
            ),
            Text(
              value.toString(),
              style: const TextStyle(color: MyConstant.white),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  value = value + 1;
                });
              },
              icon: const Icon(
                Icons.add,
                size: 20,
                color: MyConstant.white,
              ),
            ),
          ],
        ));
  }
}
