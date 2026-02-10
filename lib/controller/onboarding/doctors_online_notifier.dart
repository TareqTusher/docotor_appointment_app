import 'package:docotor_appointment_app/controller/onboarding/doctors_online_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

class DoctorsOnlineNotifier extends StateNotifier<DoctorsOnlineState> {
  DoctorsOnlineNotifier() : super(DoctorsOnlineState());
  final PageController pageController = PageController();

  Future<void> setIndex(int index) async {
    state = state.copyWith(selectedIndex: index);
  }
}

final doctorOnlineProvider =
    StateNotifierProvider<DoctorsOnlineNotifier, DoctorsOnlineState>((ref) {
      return DoctorsOnlineNotifier();
    });
