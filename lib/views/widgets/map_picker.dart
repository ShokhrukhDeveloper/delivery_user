import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:location/location.dart';
class MapPickerApp extends StatefulWidget {
  const MapPickerApp({Key? key}) : super(key: key);

  @override
  State<MapPickerApp> createState() => _MapPickerAppState();
}

class _MapPickerAppState extends State<MapPickerApp> {
  MapController controller = MapController(
    initMapWithUserPosition: true,
    // initPosition: GeoPoint(latitude: 40.0963455, longitude: 65.3860631),
    areaLimit: BoundingBox(
      east: 10.4922941,
      north: 47.8084648,
      south: 45.817995,
      west:  5.9559113,
    ),
  );



  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();

  }
  location()async{
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    // _locationData = await location.getLocation();
    // controller= MapController(
    //   initMapWithUserPosition: false,
    //   initPosition: GeoPoint(latitude:  _locationData.latitude??47.4358055, longitude: _locationData.longitude?? 8.4737324),
    //   areaLimit: BoundingBox(
    //     east: 10.4922941,
    //     north: 47.8084648,
    //     south: 45.817995,
    //     west:  5.9559113,
    //   ),
    // );
    // setState(() {
    //
    // });
    // print( _locationData.latitude);
    // print( _locationData.longitude);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    location();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.listenerMapSingleTapping.addListener(()async {
        //When on tap map, we will add new marker
        var position = controller.listenerMapSingleTapping.value;
        if(position !=null){
          await controller.addMarker(position,markerIcon: const MarkerIcon(icon: Icon(Icons.pin_drop,color: Colors.blue,size: 48,),));
        }

      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SDfasdlfasdfasdf"),),
body: OSMFlutter(
  controller:controller,
  trackMyPosition: true,
  initZoom: 8,
  minZoomLevel: 8,
  maxZoomLevel: 15,
  stepZoom: 1.0,
  userLocationMarker: UserLocationMaker(
    personMarker: const MarkerIcon(

      icon: Icon(
        Icons.location_history_rounded,
        color: Colors.red,
        size: 48,
      ),
    ),
    directionArrowMarker: const MarkerIcon(
      icon: Icon(
        Icons.location_on,
        color: Colors.red,
        size: 58,
      ),
    ),
  ),
  androidHotReloadSupport: true,
  roadConfiguration: const RoadOption(roadColor: Colors.yellowAccent,),
  markerOption: MarkerOption(
      defaultMarker: const MarkerIcon(
      icon: Icon(
          Icons.person_pin_circle,
          color: Colors.blue,
          size: 56,
        ),
      )
  ),
  onMapIsReady: (e)async{
    if(e)
      {
        await Future.delayed(Duration(seconds: 1),()async{
          await controller.currentLocation();
        });

      }
  },
)

    );
  }
}
