import 'dart:async';
import 'package:flutter/material.dart';

class VerifyTimerController extends ChangeNotifier {

  int secondsRemaining = 59;
  Timer? _timer;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        secondsRemaining--;
        notifyListeners();
      } else {
        timer.cancel();
      }
    });
  }

  void restartTimer() {
    _timer?.cancel();
    secondsRemaining = 60;
    notifyListeners();
    startTimer();
  }

  void disposeTimer() {
    _timer?.cancel();
  }
}