import 'dart:async';

import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/config/router/router.dart';
import 'package:flutter_riverpod/legacy.dart';

class SplashScreenNotifier extends StateNotifier<dynamic>{
  SplashScreenNotifier():super(0){
timerDuration();
  }
  

  void timerDuration(){
      Timer(Duration(seconds: 1), ()=>
  router.push(AppRoutesPath.doctorsOnline),
  

  );
  }
}

final splashScreenProvider=StateNotifierProvider<SplashScreenNotifier,dynamic>((ref){
  return SplashScreenNotifier();
});