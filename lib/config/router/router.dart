import 'package:docotor_appointment_app/config/router/app_routes.dart';
import 'package:docotor_appointment_app/view/screens/doctor_appointment_booking/book_appointment.dart';
import 'package:docotor_appointment_app/view/screens/doctor_appointment_booking/doctor_details.dart';
import 'package:docotor_appointment_app/view/screens/home_action/all_doctors_page.dart';
import 'package:docotor_appointment_app/view/screens/home_action/home_page.dart';
import 'package:docotor_appointment_app/view/screens/onboarding/doctors_online.dart';
import 'package:docotor_appointment_app/view/screens/onboarding/splash_screens.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutesPath.splashScreen,

      name: AppRoutesName.splashScreen,
      pageBuilder: (context, state) => NoTransitionPage(child: SplashScreen()),
    ),
    GoRoute(
      path: AppRoutesPath.homePage,

      name: AppRoutesName.homePage,
      pageBuilder: (context, state) => NoTransitionPage(child: HomePage()),
    ),

       GoRoute(
      path: AppRoutesPath.allDocotor,

      name: AppRoutesName.allDocotor,
      pageBuilder: (context, state) => NoTransitionPage(child: AllDoctorsPage()),
    ),

       GoRoute(
      path: AppRoutesPath.doctorDetails,

      name: AppRoutesName.doctorDetails,
      pageBuilder: (context, state) => NoTransitionPage(child: DoctorDetailspage()),
    ),

        GoRoute(
      path: AppRoutesPath.bookAppointMent,

      name: AppRoutesName.bookAppointMent,
      pageBuilder: (context, state) {
        final extra = state.extra as Map<String, dynamic>?;

   

    return NoTransitionPage(
      child: BookAppointmentPage(
        doctorName: extra?['doctorName'] ?? 'Doctor',
      ),
    );

      } 
          

      
    ),
       GoRoute(
      path: AppRoutesPath.doctorsOnline,

      name: AppRoutesName.doctorsOnline,
      pageBuilder: (context, state) => NoTransitionPage(child: DoctorsOnline()),
    ),
  ],
);
