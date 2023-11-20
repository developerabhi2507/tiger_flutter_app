import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';
import 'package:tiger_demo_app/res/components/custom_text_button.dart';
import 'package:tiger_demo_app/res/components/privacy_policy_widget.dart';
import 'package:tiger_demo_app/res/components/round_button_widget.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';
import 'package:tiger_demo_app/res/utils/utils.dart';

import '../../view_models/controllers/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: AppColor.text3Light,
            fontSize: 20,
            fontWeight: FontWeight.w700),
        centerTitle: true,
        title: Text('app_name'.tr),
        actions: [
          CustomTextButton(
              textColor: AppColor.buttonFg6Light,
              fontSize: 17,
              fontWeight: FontWeight.w400,
              title: 'new_user_button'.tr,
              onPress: () {
                Get.offNamed(RouteName.signUpView);
              }),
          SizedBox(
            width: Get.width - (Get.width - 20),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            margin: EdgeInsets.only(
                top: Get.height - (Get.height - 61),
                bottom: Get.height - (Get.height - 30)),
            padding:
                EdgeInsets.symmetric(horizontal: Get.width - (Get.width - 20)),
            decoration: BoxDecoration(
              color: AppColor.bg1Light,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: AppColor.buttonBg1Light,
                  offset: Offset(-2, 0),
                  blurRadius: 4,
                ),
                BoxShadow(
                  color: AppColor.buttonBg1Light,
                  offset: Offset(2, 0),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height - (Get.height - 43),
                ),
                Text(
                  'sign_in_title'.tr,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 10),
                ),
                Form(
                    key: _formKey,
                    child: Container(
                      width: Get.width - (Get.width - 242),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.boxShadow.withOpacity(0.6),
                            offset: const Offset(-8, 8),
                            blurRadius: 8,
                          ),
                          BoxShadow(
                            color: AppColor.boxShadow.withOpacity(0.6),
                            offset: const Offset(8, 8),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        controller: loginVM.phoneNoController.value,
                        focusNode: loginVM.phoneNoFocusNode.value,
                        cursorColor: AppColor.cursor,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.done,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColor.text3Light,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        validator: (value) {
                          if (value!.isEmpty) {
                            Utils.snackBar(
                                'empty_no_title'.tr, 'empty_no_mess'.tr);
                          }
                          return null;
                        },
                        onFieldSubmitted: (value) {
                          loginVM.phoneNoFocusNode.value.unfocus();
                        },
                        decoration: InputDecoration(
                          hintText: 'phone_no_hint'.tr,
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: AppColor.text3Light.withOpacity(0.6),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                          filled: true,
                          fillColor: AppColor.fillColor.withOpacity(0.6),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                        ),
                      ),
                    )),
                SizedBox(
                  height: Get.height - (Get.height - 15),
                ),
                SizedBox(
                  width: Get.width - (Get.width - 300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 5, // Width of the dot
                        height: 5, // Height of the dot
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.divider, // Color of the dot
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: AppColor.divider, // Color of the divider
                          height: 1, // Height of the divider
                          thickness: 1, // Thickness of the divider
                          endIndent: 8,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 15),
                ),
                Obx(() {
                  return Container(
                      width: Get.width - (Get.width - 210),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.blackColor.withOpacity(0.1),
                            offset: const Offset(-4, 4),
                            blurRadius: 8,
                          ),
                          BoxShadow(
                            color: AppColor.blackColor.withOpacity(0.1),
                            offset: const Offset(4, 4),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: RoundButtonWidget(
                        width: Get.width - (Get.width - 210),
                        buttonColor: loginVM.acceptPolicy.value
                            ? AppColor.buttonBg1Light
                            : AppColor.buttonBg3Light,
                        textColor: loginVM.acceptPolicy.value
                            ? AppColor.buttonFg1Light
                            : AppColor.buttonFg3Light,
                        title: 'continue_button'.tr,
                        isPressed: loginVM.isContinueButtonPressed.value,
                        onPress: () {
                          loginVM.isContinueButtonPressed.value = true;
                          Get.offNamed(RouteName.otpVerifyView);
                        },
                      ));
                }),
                SizedBox(
                  height: Get.height - (Get.height - 38),
                ),
                SizedBox(
                  width: Get.width - (Get.width - 300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 5, // Width of the dot
                        height: 5, // Height of the dot
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.divider, // Color of the dot
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: AppColor.divider, // Color of the divider
                          height: 1, // Height of the divider
                          thickness: 1, // Thickness of the divider
                          endIndent: 8,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => PrivacyPolicyWidget(
                        onPress: () {
                          loginVM.acceptPolicy.toggle();
                        },
                        shapeColor: loginVM.acceptPolicy.value
                            ? AppColor.bg2Light
                            : Colors.transparent,
                        child: loginVM.acceptPolicy.value
                            ? const Icon(
                                Icons.check,
                                color: AppColor.iconLight,
                                size: 16,
                              )
                            : const SizedBox())),
                    SizedBox(
                      width: Get.width - (Get.width - 10),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: RichText(
                          text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: AppColor.text3Light,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(text: 'policy1'.tr),
                                TextSpan(
                                    text: 'policy2'.tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: AppColor.text3Light,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700)),
                                TextSpan(text: 'policy3'.tr),
                                TextSpan(
                                    text: 'policy4'.tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: AppColor.text3Light,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700))
                              ]),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
