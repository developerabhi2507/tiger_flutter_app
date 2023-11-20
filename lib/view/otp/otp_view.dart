import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:tiger_demo_app/res/colors/app_color.dart';
import 'package:tiger_demo_app/res/components/custom_text_button.dart';
import 'package:tiger_demo_app/res/components/round_button_widget.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';
import 'package:tiger_demo_app/res/utils/utils.dart';
import 'package:tiger_demo_app/view_models/controllers/otp/otp_view_model.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final _formKey = GlobalKey<FormState>();
  late OtpViewModel otpVM;
  late String verificationId;
  @override
  void initState() {
    super.initState();
    // String verificationId = Get.arguments as String;
    otpVM = Get.put(OtpViewModel());
  }

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
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
              top: Get.height - (Get.height - 61),
              bottom: Get.height - (Get.height - 30)),
          padding:
              EdgeInsets.symmetric(horizontal: Get.width - (Get.width - 55)),
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
                'otp_title'.tr,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: AppColor.text3Light,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Text(
                'otp_text'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColor.text3Light,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: Get.height - (Get.height - 58),
              ),
              roundedPinPut(),
              // Form(
              //   key: _formKey,
              //   child: Row(
              //     children: [
              //       textField(context, otpVM.pin1Controller.value,
              //           first: true, last: false),
              //       SizedBox(
              //         width: Get.width - (Get.width - 10),
              //       ),
              //       textField(context, otpVM.pin2Controller.value,
              //           first: true, last: false),
              //       SizedBox(
              //         width: Get.width - (Get.width - 10),
              //       ),
              //       textField(context, otpVM.pin3Controller.value,
              //           first: true, last: false),
              //       SizedBox(
              //         width: Get.width - (Get.width - 10),
              //       ),
              //       textField(context, otpVM.pin4Controller.value,
              //           first: true, last: false),
              //       SizedBox(
              //         width: Get.width - (Get.width - 10),
              //       ),
              //       textField(context, otpVM.pin5Controller.value,
              //           first: true, last: false),
              //       SizedBox(
              //         width: Get.width - (Get.width - 10),
              //       ),
              //       textField(context, otpVM.pin6Controller.value,
              //           first: true, last: false),
              //     ],
              //   ),
              // ),
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
                      buttonColor: otpVM.isContinueButtonPressed.value
                          ? AppColor.buttonBg1Light
                          : AppColor.buttonBg3Light,
                      textColor: otpVM.isContinueButtonPressed.value
                          ? AppColor.buttonFg1Light
                          : AppColor.buttonFg3Light,
                      title: 'otp_continue_button'.tr,
                      isPressed: otpVM.isContinueButtonPressed.value,
                      loading: otpVM.loading.value,
                      onPress: () async {
                        otpVM.smsCode.value =
                            otpVM.otpCodeController.value.text;

                        otpVM.startTimer();
                        // Get.toNamed(RouteName.loadingView);
                        // await Future.delayed(const Duration(seconds: 4));
                        // Get.toNamed(RouteName.bottomNavBarView);
                      },
                    ));
              }),
              SizedBox(
                height: Get.height - (Get.height - 10),
              ),
              Obx(() {
                if (otpVM.loading.value && otpVM.isRunning.value) {
                  return RichText(
                      text: TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: AppColor.text3Light,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                          children: [
                        TextSpan(text: 'retry_text'.tr),
                        TextSpan(
                            text: (otpVM.resendTime.value.inSeconds % 60)
                                .toString()
                                .padLeft(2, '0'),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: 'sec_text'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontWeight: FontWeight.w700)),
                      ]));
                } else {
                  return const SizedBox.shrink();
                }
              }),
              SizedBox(
                height: Get.height - (Get.height - 15),
              ),
              Obx(() {
                if (otpVM.loading.value && !otpVM.isRunning.value) {
                  return CustomTextButton(
                      title: 'resend_button'.tr,
                      onPress: () {
                        otpVM.startTimer();
                      });
                } else {
                  return const SizedBox.shrink();
                }
              })
            ],
          ),
        ),
      ),
    );
  }

  textField(
    BuildContext context,
    TextEditingController controller, {
    bool? first,
    last,
  }) {
    return Flexible(
      child: Container(
        // width: Get.width - (Get.width - 60),
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.text3Light,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: AspectRatio(
          aspectRatio: 1.0,
          child: TextFormField(
            autofocus: true,
            controller: controller,
            // focusNode: otpVM.otpCodeFocusNode.value,
            cursorColor: AppColor.cursor,
            keyboardType: TextInputType.number,
            maxLength: 1,
            textInputAction: TextInputAction.done,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColor.text3Light,
                fontSize: 16,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
            readOnly: false,
            validator: (value) {
              if (value!.isEmpty) {
                Utils.snackBar('empty_no_title'.tr, 'empty_no_mess'.tr);
              }
              return null;
            },
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
                otpVM.isContinueButtonPressed.value = true;
              }
              // if (value.length == 1 && first == false) {
              //   FocusScope.of(context).previousFocus();
              // }
            },
            // onFieldSubmitted: (value) {
            //   otpVM.otp1FocusNode.value.unfocus();
            // },
            decoration: InputDecoration(
              // counter: const Offstage(),
              counterText: '',
              filled: true,
              fillColor: AppColor.fillColor.withOpacity(0.6),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              // contentPadding:
              //     const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            ),
          ),
        ),
      ),
    );
  }

  Widget roundedPinPut() {
    return Pinput(
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
      animationCurve: Curves.bounceInOut,
      autofocus: true,
      closeKeyboardWhenCompleted: true,
      controller: otpVM.otpCodeController.value,
      focusNode: otpVM.otpCodeFocusNode.value,
      focusedPinTheme: PinTheme(
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(color: AppColor.fillColor.withOpacity(0.6), width: 20),
      )),
      keyboardType: TextInputType.number,
      length: 6,
    );
  }
}
