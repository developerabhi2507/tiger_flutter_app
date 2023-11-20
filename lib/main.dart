import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiger_demo_app/res/locals/languages.dart';
import 'package:tiger_demo_app/res/routes/routes.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';
import 'package:tiger_demo_app/res/utils/theme_service.dart';

import 'firebase_options.dart';

Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Ideal time to initialize
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app_name'.tr,
      themeMode: ThemeMode.light,
      theme: ThemeService().lightTheme,
      // darkTheme: ThemeService().darkTheme,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: RouteName.splashView,
      getPages: AppRoutes.appRoutes(),
    );
  }
}
