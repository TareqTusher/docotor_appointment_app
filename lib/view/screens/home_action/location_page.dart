import 'dart:async';

import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/view/screens/home_action/bottom_nav_page.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  String mapTheme = '';
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition googleMap = CameraPosition(
    target: LatLng(33.6941, 72.9734),
    zoom: 15,
  );
  @override
  void initState() {
    super.initState();

    DefaultAssetBundle.of(
      context,
    ).loadString("assets/map_theme/dark_theme.json").then((value) {
      mapTheme = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: googleMap,
          mapType: MapType.normal,
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          onMapCreated: (GoogleMapController controller) {
            // ignore: deprecated_member_use
            controller.setMapStyle(mapTheme);
            _controller.complete(controller);
          },
        ),
      ),
      bottomSheet: Container(
        height: 80,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [BoxShadow(color: AppColors.grey200, blurRadius: 3)],
        ),
        child: CustomBottomNavBar(selectedIndex: 1),
      ),
    );
  }
}
