import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/components/round_button_widget.dart';
import 'package:tiger_demo_app/view_models/controllers/withdraw/add_bank_acc_view_model.dart';

import '../../../res/colors/app_color.dart';
import '../../../res/utils/utils.dart';

class AddBankAccView extends StatefulWidget {
  const AddBankAccView({super.key});

  @override
  State<AddBankAccView> createState() => _AddBankAccViewState();
}

class _AddBankAccViewState extends State<AddBankAccView> {
  final addBankAccVM = Get.put(AddBankAccViewModel());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bg1Light,
        foregroundColor: AppColor.text3Light,
        elevation: 0,
        titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: AppColor.text3Light,
            fontSize: 22,
            fontWeight: FontWeight.w700),
        centerTitle: false,
        title: Text(
          'add_bank_acc_title'.tr,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height - (Get.height - 49),
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          width: Get.width - (Get.width - 330),
                          height: Get.height - (Get.height - 60),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.fillColor.withOpacity(0.6),
                                offset: const Offset(-4, 0),
                                blurRadius: 4,
                              ),
                              BoxShadow(
                                color: AppColor.fillColor.withOpacity(0.6),
                                offset: const Offset(4, 0),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: addBankAccVM.bankAccNoController.value,
                            focusNode: addBankAccVM.bankAccNoFocusNode.value,
                            cursorColor: AppColor.cursor,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            obscureText: true,
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
                              addBankAccVM.bankAccNoFocusNode.value.unfocus();
                            },
                            decoration: InputDecoration(
                              labelText: 'bank_acc_number_label'.tr,
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color:
                                          AppColor.text1Light.withOpacity(0.6),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                              filled: true,
                              fillColor: AppColor.fillColor.withOpacity(0.6),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: AppColor.text1Light),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: AppColor.text1Light)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: AppColor.text1Light)),

                              // contentPadding:
                              //     const EdgeInsets.symmetric(horizontal: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height - (Get.height - 30),
                        ),
                        Container(
                          width: Get.width - (Get.width - 330),
                          height: Get.height - (Get.height - 60),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.fillColor.withOpacity(0.6),
                                offset: const Offset(-4, 0),
                                blurRadius: 4,
                              ),
                              BoxShadow(
                                color: AppColor.fillColor.withOpacity(0.6),
                                offset: const Offset(4, 0),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller:
                                addBankAccVM.confirmAccNoController.value,
                            focusNode: addBankAccVM.confirmAccNoFocusNode.value,
                            cursorColor: AppColor.cursor,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
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
                              addBankAccVM.confirmAccNoFocusNode.value
                                  .unfocus();
                            },
                            decoration: InputDecoration(
                              labelText: 'confim_acc_number_label'.tr,
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color:
                                          AppColor.text1Light.withOpacity(0.6),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                              filled: true,
                              fillColor: AppColor.fillColor.withOpacity(0.6),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: AppColor.text1Light),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: AppColor.text1Light)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: AppColor.text1Light)),
                              // contentPadding:
                              //     const EdgeInsets.symmetric(horizontal: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height - (Get.height - 30),
                        ),
                        Container(
                          width: Get.width - (Get.width - 330),
                          height: Get.height - (Get.height - 60),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.fillColor.withOpacity(0.6),
                                offset: const Offset(-4, 0),
                                blurRadius: 4,
                              ),
                              BoxShadow(
                                color: AppColor.fillColor.withOpacity(0.6),
                                offset: const Offset(4, 0),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: addBankAccVM.ifscCodeController.value,
                            focusNode: addBankAccVM.ifscCodeFocusNode.value,
                            cursorColor: AppColor.cursor,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
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
                              addBankAccVM.ifscCodeFocusNode.value.unfocus();
                            },
                            decoration: InputDecoration(
                              labelText: 'ifsc_code_label'.tr,
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color:
                                          AppColor.text1Light.withOpacity(0.6),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                              filled: true,
                              fillColor: AppColor.fillColor.withOpacity(0.6),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: AppColor.text1Light),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: AppColor.text1Light)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: AppColor.text1Light)),
                              // contentPadding:
                              //     const EdgeInsets.symmetric(horizontal: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height - (Get.height - 30),
                        ),
                        Container(
                          width: Get.width - (Get.width - 330),
                          height: Get.height - (Get.height - 60),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.fillColor.withOpacity(0.6),
                                offset: const Offset(-4, 0),
                                blurRadius: 4,
                              ),
                              BoxShadow(
                                color: AppColor.fillColor.withOpacity(0.6),
                                offset: const Offset(4, 0),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller:
                                addBankAccVM.accHolderNameController.value,
                            focusNode:
                                addBankAccVM.accHolderNameFocusNode.value,
                            cursorColor: AppColor.cursor,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
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
                              addBankAccVM.accHolderNameFocusNode.value
                                  .unfocus();
                            },
                            decoration: InputDecoration(
                              labelText: 'acc_holder_name_label'.tr,
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color:
                                          AppColor.text1Light.withOpacity(0.6),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                              filled: true,
                              fillColor: AppColor.fillColor.withOpacity(0.6),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: AppColor.text1Light),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: AppColor.text1Light)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: AppColor.text1Light)),
                              // contentPadding:
                              //     const EdgeInsets.symmetric(horizontal: 30),
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: Get.height - (Get.height - 49),
                ),
                Text(
                  'note_not_chnaged'.tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColor.text3Light,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: Get.height - (Get.height - 30),
                ),
                RoundButtonWidget(
                    width: Get.width - (Get.width - 250),
                    borderRadius: 15,
                    buttonColor: AppColor.buttonBg1Light,
                    title: 'proceed_button'.tr,
                    onPress: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
