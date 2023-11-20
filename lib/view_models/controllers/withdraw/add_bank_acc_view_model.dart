import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddBankAccViewModel extends GetxController {
  final RxBool loading = false.obs;

  final bankAccNoController = TextEditingController().obs;
  final bankAccNoFocusNode = FocusNode().obs;

  final confirmAccNoController = TextEditingController().obs;
  final confirmAccNoFocusNode = FocusNode().obs;

  final ifscCodeController = TextEditingController().obs;
  final ifscCodeFocusNode = FocusNode().obs;

  final accHolderNameController = TextEditingController().obs;
  final accHolderNameFocusNode = FocusNode().obs;

  final RxBool isProceedButtonPressed = false.obs;
}
