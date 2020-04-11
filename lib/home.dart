import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_test/endereco/model2.dart';
import 'package:maps_test/helpers/map_helper.dart';
import 'package:maps_test/home_bloc.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeBloc get bloc => Provider.of<HomeBloc>(context);
  GoogleMapController mapController;
  var workPosition = LatLng(-6.3554699, 106.8174512);
  var homePosition = LatLng(-6.3554699, 106.8174512);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildMap(),
          EnderecoWidget(),
        ],
      ),
    );
  }

  Widget _buildMap() {
    return StreamBuilder<List<Marker>>(
      stream: bloc.outMarkers,
      builder: (context, snapshot) {
        return GoogleMap(
          onMapCreated: _onMapCreated,
          myLocationEnabled: true,
          rotateGesturesEnabled: false,
          compassEnabled: true,
          markers: snapshot.data?.toSet(),
          initialCameraPosition: CameraPosition(
            bearing: 270.0,
            target: homePosition,
            tilt: 30.0,
            zoom: 17.0,
          ),
        );
      }
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    MapHelper.mapController = controller;
  }
}
