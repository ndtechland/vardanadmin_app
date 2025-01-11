import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../constants/constants.dart';
class ViewMap extends StatefulWidget {
  const ViewMap({super.key});

  @override
  State<ViewMap> createState() => _ViewMapState();
}

class _ViewMapState extends State<ViewMap> {
  Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  StreamSubscription<Position>? positionStream;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold( 
      appBar: AppBar(
      centerTitle: true,
      backgroundColor: MyTheme.themecolor,
      title: Text(
        "View Map",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: MyTheme.t1containercolor,
        ),
      ),
      // actions: [
      //   IconButton(
      //     onPressed: () {},
      //     icon: Icon(
      //       Icons.search,
      //       color: MyTheme.t1containercolor,
      //     ),
      //   ),
      // ],
    ),
    body: Container(
      height: h,
      width: double.infinity,
      child: GoogleMap(initialCameraPosition: CameraPosition(
        target: LatLng(28.583007,77.314710),
        zoom: 15.0,
        ),
        myLocationEnabled: true,
        mapType: MapType.normal,
        myLocationButtonEnabled: true,
          ),
         )
    );
  }
}
