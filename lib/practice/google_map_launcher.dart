import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapLauncher extends StatefulWidget {
  const GoogleMapLauncher({super.key});

  @override
  State<GoogleMapLauncher> createState() => _GoogleMapLauncherState();
}

class _GoogleMapLauncherState extends State<GoogleMapLauncher> {
  void onGoogleMap({String lat = "23.215635", String long = "72.636940"}) {}

  final Completer<GoogleMapController> controller = Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(23.215635, 72.636940),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GoogleMap(initialCameraPosition: _kGooglePlex),
    );
  }
}
