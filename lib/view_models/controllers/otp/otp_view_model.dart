import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpViewModel extends GetxController {
  final RxBool loading = false.obs;

  final RxBool isContinueButtonPressed = false.obs;
  final acceptPolicy = false.obs;
  final RxBool isRunning = false.obs;
  Rx<Duration> resendTime = Rx<Duration>(const Duration(seconds: 60));
  Timer? resendTimer;
  final otpCodeController = TextEditingController().obs;
  final otpCodeFocusNode = FocusNode().obs;
  RxString smsCode = ''.obs;

  void startTimer() {
    loading.value = true;
    if (!isRunning.value) {
      resendTime.value = const Duration(seconds: 45);
      resendTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (resendTime.value.inSeconds > 0) {
          resendTime.value = Duration(seconds: resendTime.value.inSeconds - 1);
        } else {
          // Reset the timer and stop the timer
          resendTimer?.cancel();
          isRunning.value = false;
        }
      });
      isRunning.value = true;
      loading.value = false;
    }
  }

  void stopTimer() async {
    if (isRunning.value) {
      resendTimer?.cancel();
      isRunning.value = false;
      loading.value = false;
    }
  }

  // continueButton() {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   smsCode.value = otpCodeController.value.text;
  //   PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //       verificationId: verificationId, smsCode: smsCode.value);
  //   auth.signInWithCredential(credential).then((result) {
  //     if (result != null) {
  //       Get.offNamed(RouteName.homeView);
  //     }
  //   }).catchError((e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //   });
  // }
}
