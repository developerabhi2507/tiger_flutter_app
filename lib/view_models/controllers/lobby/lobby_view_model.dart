import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class LobbyViewModel extends GetxController {
  final RxBool loading = false.obs;

  final RxBool isFreeButtonPressed = false.obs;
  final RxBool isRunning = false.obs;
  Rx<Duration> resendTime = Rx<Duration>(const Duration(minutes: 10));
  Timer? resendTimer;
  final tournamentData = {
    'name': 'Game A',
    'status': 'open',
    'members': [], // Initially empty
  };

  saveTournamentData() async {
    await FirebaseFirestore.instance
        .collection('tournaments')
        .add(tournamentData);
  }

  void startTimer() {
    loading.value = true;
    if (!isRunning.value) {
      resendTime.value = const Duration(minutes: 10);
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
}
