import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final RxBool loading = false.obs;

  final phoneNoController = TextEditingController().obs;
  final phoneNoFocusNode = FocusNode().obs;

  final RxBool isContinueButtonPressed = false.obs;
  final acceptPolicy = false.obs;
}
