import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Welcome to $appname community!"
                  .text
                  .fontFamily(bold)
                  .white
                  .size(18)
                  .make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(hint: nameHint, title: name),
                  customTextField(hint: emailHint, title: email),
                  customTextField(hint: passHint, title: password),
                  customTextField(hint: passHint, title: retypePassword),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgerPass.text.make(),
                    ),
                  ),
                  5.heightBox,
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadow
                  .make(),
              Row(
                children: [
                  Checkbox(
                    checkColor: redColor,
                    value: isCheck,
                    onChanged: (newValue) {
                      setState(() {
                        isCheck = newValue;
                      });
                    },
                  ),
                  5.widthBox,
                  Expanded(
                    child: RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          ),
                        ),
                        TextSpan(
                          text: term,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          ),
                        ),
                        TextSpan(
                          text: " && ",
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          ),
                        ),
                        TextSpan(
                          text: privacy,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          ),
                        ),
                      ],
                    )),
                  )
                ],
              ),
              10.heightBox,
              ourButton(
                      color: isCheck == true ? redColor : lightGrey,
                      title: signup,
                      textColor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: alreadyHaveAccount,
                      style: TextStyle(
                        fontFamily: semibold,
                        color: fontGrey,
                      ),
                    ),
                    TextSpan(
                      text: login,
                      style: TextStyle(
                        fontFamily: semibold,
                        color: redColor,
                      ),
                    ),
                  ],
                ),
              ).onTap(() {
                Get.back();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
