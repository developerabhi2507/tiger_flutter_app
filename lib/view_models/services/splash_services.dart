import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../controllers/user_preferences/user_preference_view_model.dart';

class SplashServices {
  UserPrefences userPrefences = UserPrefences();

  void isLogin() {
    userPrefences.getUser().then((value) {
      if (kDebugMode) {
        print(value.token);
        print(value.isLogin);
      }
      if (value.isLogin == false || value.isLogin.toString() == 'null') {
        Timer(
            const Duration(seconds: 3), () => Get.toNamed(RouteName.loginView));
      } else {
        Timer(
            const Duration(seconds: 5), () => Get.toNamed(RouteName.homeView));
      }
    });
  }
}
