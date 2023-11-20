import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';
import 'package:tiger_demo_app/view_models/controllers/otp/otp_view_model.dart';

class SignUpViewModel extends GetxController {
  final RxBool loading = false.obs;

  final phoneNoController = TextEditingController().obs;
  final phoneNoFocusNode = FocusNode().obs;
  final acceptPolicy = false.obs;
  final FirebaseAuth auth = FirebaseAuth.instance;
  RxString smsCode = ''.obs;
  final OtpViewModel otpViewModel = Get.put(OtpViewModel());

  signInWithMobileNumber(BuildContext context) async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: '+91${phoneNoController.value}',
        verificationCompleted: (PhoneAuthCredential authCredential) async {
          await auth.signInWithCredential(authCredential).then((value) async {
            Get.toNamed(RouteName.loadingView);
            await Future.delayed(const Duration(seconds: 4));
            Get.toNamed(RouteName.bottomNavBarView);
          });
        },
        verificationFailed: (error) {
          if (error.code == 'invalid-phone-number') {
            if (kDebugMode) {
              print('The provided phone number is not valid.');
            }
          }
          if (kDebugMode) {
            print('.......');
            print(error);
            print(',,,,,,,,,,');
          }
        },
        codeSent: (String verificationId, [int? forceResendingToken]) {
          // Pass the verificationId as a parameter when navigating to otpVerifyView
          smsCode.value = otpViewModel.smsCode.value;
          PhoneAuthCredential credential = PhoneAuthProvider.credential(
              verificationId: verificationId, smsCode: smsCode.value);
          auth.signInWithCredential(credential).then((result) {
            if (result != null) {
              Get.toNamed(RouteName.loadingView);
              Future.delayed(const Duration(seconds: 4));
              Get.toNamed(RouteName.bottomNavBarView);
            }
          }).catchError((e) {
            if (kDebugMode) {
              print(e);
            }
          });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationId = verificationId;
        },
        timeout: Duration(seconds: 45),
      );
    } catch (e) {
      // Handle exceptions
    }
  }
}
