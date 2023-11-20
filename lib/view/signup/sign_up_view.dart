import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';
import 'package:tiger_demo_app/res/components/custom_text_button.dart';
import 'package:tiger_demo_app/res/components/round_button_widget.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';
import 'package:tiger_demo_app/res/utils/utils.dart';
import 'package:tiger_demo_app/view_models/controllers/sign_up/sign_up_view_model.dart';

import '../../res/components/privacy_policy_widget.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();
  final signUpVM = Get.put(SignUpViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: AppColor.text3Light,
            fontSize: 20,
            fontWeight: FontWeight.w700),
        title: Text(
          'app_name'.tr,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                  top: Get.height - (Get.height - 61),
                  bottom: Get.height - (Get.height - 30)),
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width - (Get.width - 20)),
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
                    'sign_up_title'.tr,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: AppColor.text3Light,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: Get.height - (Get.height - 10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'existing_user'.tr,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: AppColor.text3Light,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: Get.width - (Get.width - 10),
                      ),
                      CustomTextButton(
                          title: 'sign_in_button'.tr,
                          onPress: () {
                            Get.toNamed(RouteName.loginView);
                          })
                    ],
                  ),
                  SizedBox(
                    height: Get.height - (Get.height - 27),
                  ),
                  Form(
                      key: _formKey,
                      child: Container(
                        width: Get.width - (Get.width - 242),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.boxShadow.withOpacity(0.6),
                              offset: const Offset(8, 8),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: signUpVM.phoneNoController.value,
                          focusNode: signUpVM.phoneNoFocusNode.value,
                          cursorColor: AppColor.cursor,
                          keyboardType: TextInputType.phone,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
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
                            signUpVM.phoneNoFocusNode.value.unfocus();
                          },
                          decoration: InputDecoration(
                            hintText: 'phone_no_hint'.tr,
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: AppColor.text3Light.withOpacity(0.3),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: AppColor.fillColor.withOpacity(0.6),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                          loading: signUpVM.loading.value,
                          buttonColor: signUpVM.acceptPolicy.value
                              ? AppColor.buttonBg1Light
                              : AppColor.buttonBg3Light,
                          textColor: signUpVM.acceptPolicy.value
                              ? AppColor.buttonFg1Light
                              : AppColor.buttonFg3Light,
                          title: 'get_otp'.tr,
                          onPress: () {
                            Get.toNamed(RouteName.otpVerifyView);
                            signUpVM.signInWithMobileNumber(context);
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
                            signUpVM.acceptPolicy.toggle();
                          },
                          shapeColor: signUpVM.acceptPolicy.value
                              ? AppColor.bg2Light
                              : Colors.transparent,
                          child: signUpVM.acceptPolicy.value
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
      ),
    );
  }
}
