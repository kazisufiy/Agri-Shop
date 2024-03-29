import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common_widget/applogo_common.dart';
import '../../common_widget/bg_widget.dart';
import '../../common_widget/custom_textfield.dart';
import '../../common_widget/our_button.dart';
import '../../consts/colors.dart';
import '../../consts/lists.dart';
import '../../consts/strings.dart';
import '../../consts/styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

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
            "Join The $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(hint: nameHint, title: name),
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                customTextField(hint: passwordHint, title: retypePassword),

                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make())),
                5.heightBox,
                // ourButton().box.width(context.screenWidth - 50).make(),

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
                    10.widthBox,
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                )),
                            TextSpan(
                                text: termAndCond,
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor,
                                )),
                            TextSpan(
                                text: " & ",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                )),
                            TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                ourButton(
                        color: isCheck == true? redColor : lightGrey,
                        title: signup,
                        textColor: whiteColor,
                        onpress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),

                10.heightBox,
                
                RichText(
                  text:const TextSpan(
                    children: [
                      TextSpan(
                        text: alradyHaveAccount,
                        style: TextStyle(
                          fontFamily: bold,
                          color: fontGrey,
                        ),
                      ),
                      
                      TextSpan(
                        text: login,
                        style: TextStyle(
                          fontFamily: bold,
                          color: redColor,
                        ),
                      ),
                      
                    ],
                  ),
                  
                ).onTap(() {
                  Get.back();
                })
                
                
              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
