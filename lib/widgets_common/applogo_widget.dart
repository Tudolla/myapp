import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget applogoWidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(88, 88)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
