import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:tiger_demo_app/res/routes/routes_name.dart';
import 'package:tiger_demo_app/view/about/about_view.dart';
import 'package:tiger_demo_app/view/account/account_view.dart';
import 'package:tiger_demo_app/view/add_money/add_money_view.dart';
import 'package:tiger_demo_app/view/bottom_nav_bar.dart';
import 'package:tiger_demo_app/view/game/game_view.dart';
import 'package:tiger_demo_app/view/home/home_view.dart';
import 'package:tiger_demo_app/view/learn_to_play/learn_to_play.dart';
import 'package:tiger_demo_app/view/lobby/lobby_view.dart';
import 'package:tiger_demo_app/view/lobby/sliding_view.dart';
import 'package:tiger_demo_app/view/login/login_view.dart';
import 'package:tiger_demo_app/view/my_balance/my_balance_view.dart';
import 'package:tiger_demo_app/view/notification/notification_view.dart';
import 'package:tiger_demo_app/view/onboarding/onboarding_view.dart';
import 'package:tiger_demo_app/view/otp/loading_view.dart';
import 'package:tiger_demo_app/view/otp/otp_view.dart';
import 'package:tiger_demo_app/view/profile_details/profile_details_view.dart';
import 'package:tiger_demo_app/view/refer&get_cash/refer_and_win_view.dart';
import 'package:tiger_demo_app/view/signup/sign_up_view.dart';
import 'package:tiger_demo_app/view/splash_view.dart';
import 'package:tiger_demo_app/view/trans_history/trans_history.dart';
import 'package:tiger_demo_app/view/withdraw/widgets/add_bank_acc_view.dart';
import 'package:tiger_demo_app/view/withdraw/withdraw_money_view.dart';

class AppRoutes {
  static const initial = '/';
  static appRoutes() => [
        GetPage(
            name: RouteName.splashView,
            page: () => const SplashView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.onboardView,
            page: () => ShowCaseWidget(
                builder: Builder(builder: (context) => const OnboardingView())),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.signUpView,
            page: () => const SignUpView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.loginView,
            page: () => const LoginView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.otpVerifyView,
            page: () => const OtpView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.loadingView,
            page: () => const LoadingView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.bottomNavBarView,
            page: () => const BottomNavBar(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.notificationView,
            page: () => const NotificationView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.myBalanceView,
            page: () => const MyBalanceView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.withdrawView,
            page: () => const WithdrawMoneyView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.transactionHistoryView,
            page: () => const TransactionHistoryView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.addBankAccView,
            page: () => const AddBankAccView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.addMoneyView,
            page: () => const AddMoneyView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.howToPlayView,
            page: () => const LearnToPlayView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.lobbyView,
            page: () => const SlidingPanel(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.profileView,
            page: () => const ProfileSectionView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.referView,
            page: () => const ReferAndGetCashView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.aboutView,
            page: () => const AboutView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.gamePlayView,
            page: () => const GameView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RouteName.myProfileView,
            page: () => const ProfileView(),
            transitionDuration: const Duration(milliseconds: 100),
            transition: Transition.leftToRightWithFade),
      ];
}
