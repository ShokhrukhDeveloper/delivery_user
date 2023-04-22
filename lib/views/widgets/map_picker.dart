import 'dart:typed_data';

import 'package:delivery_user/utils/colors.dart';
import 'package:delivery_user/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:location/location.dart';
import 'package:screenshot/screenshot.dart';
class LocationItem{
  GeoPoint? firstGeopint;
  Uint8List? image;

}





class LocationPickerBottomSheet extends StatefulWidget {
  const LocationPickerBottomSheet({Key? key}) : super(key: key);

  @override
  State<LocationPickerBottomSheet> createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPickerBottomSheet> {
  MapController controller = MapController(
    initMapWithUserPosition: true,
    areaLimit: BoundingBox(
      east: 10.4922941,
      north: 47.8084648,
      south: 45.817995,
      west:  5.9559113,
    ),
  );
  ScreenshotController screenshotController = ScreenshotController();
  GeoPoint? firstGeopint;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.listenerMapSingleTapping.addListener(()async {
        var position = controller.listenerMapSingleTapping.value;
        if(position !=null){

          if(firstGeopint!=null)
          {
            await controller.removeMarker(firstGeopint!);
          }
          await controller.addMarker(position,markerIcon: const MarkerIcon(icon: Icon(Icons.pin_drop,color: Colors.blue,size: 156,),));
          firstGeopint=position;
          controller.changeLocation(position);
          print("picked latitude${firstGeopint?.latitude}");
          print("picked longtude${firstGeopint?.longitude}");



        }

      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
      height: MediaQuery.of(context).size.height*0.65,
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.c_F5F5F5,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),
      child: Column(
        children: [
          const SizedBox(height: 5,),
           Text("Joylashuvni tanlang",style: MyTextStyle.poppinsW400Light18,),
          Expanded(child:  Screenshot(
            controller: screenshotController,
            child: OSMFlutter(
              controller:controller,
              trackMyPosition: true,
              initZoom: 8,
              minZoomLevel: 8,
              maxZoomLevel: 15,
              stepZoom: 1.0,
              androidHotReloadSupport: true,
              roadConfiguration: const RoadOption(roadColor: Colors.black,),
              markerOption: MarkerOption(
                defaultMarker: const MarkerIcon(icon: Icon(
                  Icons.person_pin_circle,
                  color: Colors.white,
                  size: 156,
                )),
              ),
              onMapIsReady: (e)async{
                if(e)
                {
                  await Future.delayed(const Duration(seconds: 1),()async{
                    await controller.currentLocation();
                  });
                }
              },
            ),
          )),
          const SizedBox(height: 11,),
          InkWell(
            onTap: ()async{

              if(firstGeopint==null)return;
              var item = LocationItem();

             item.firstGeopint=firstGeopint;
           var result =await   screenshotController.capture();
           item.image=result;
           Navigator.pop<LocationItem>(context,item);
            } ,
            child: Container(
              height: 35,width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18)
                  ,color: AppColors.c_6BB3FA
            ),
              child: Center(
                child: Text("Belgilash",
                style: MyTextStyle.poppinsW700Regular16white,),
              ),
            ),
          ),
          const SizedBox(height: 11,),
        ],
      ),
    );
  }
}




// class MapPickerApp extends StatefulWidget {
//   const MapPickerApp({Key? key}) : super(key: key);
//
//   @override
//   State<MapPickerApp> createState() => _MapPickerAppState();
// }
//
// class _MapPickerAppState extends State<MapPickerApp> {
//   MapController controller = MapController(
//     initMapWithUserPosition: true,
//     // initPosition: GeoPoint(latitude: 40.0963455, longitude: 65.3860631),
//     areaLimit: BoundingBox(
//       east: 10.4922941,
//       north: 47.8084648,
//       south: 45.817995,
//       west:  5.9559113,
//     ),
//   );
//
//
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     controller.dispose();
//     super.dispose();
//
//   }
//   GeoPoint? firstGeopint;
//
//   location()async{
//     Location location = new Location();
//
//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;
//     // LocationData _locationData;
//
//     _serviceEnabled = await location.serviceEnabled();
//     if (!_serviceEnabled) {
//       _serviceEnabled = await location.requestService();
//       if (!_serviceEnabled) {
//         return;
//       }
//     }
//
//     _permissionGranted = await location.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await location.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }
//
//     // _locationData = await location.getLocation();
//     // controller= MapController(
//     //   initMapWithUserPosition: false,
//     //   initPosition: GeoPoint(latitude:  _locationData.latitude??47.4358055, longitude: _locationData.longitude?? 8.4737324),
//     //   areaLimit: BoundingBox(
//     //     east: 10.4922941,
//     //     north: 47.8084648,
//     //     south: 45.817995,
//     //     west:  5.9559113,
//     //   ),
//     // );
//     // setState(() {
//     //
//     // });
//     // print( _locationData.latitude);
//     // print( _locationData.longitude);
//   }
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // location();
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       controller.listenerMapSingleTapping.addListener(()async {
//         var position = controller.listenerMapSingleTapping.value;
//         if(position !=null){
//
//           if(firstGeopint!=null)
//           {
//             await controller.removeMarker(firstGeopint!);
//           }
//             await controller.addMarker(position,markerIcon: const MarkerIcon(icon: Icon(Icons.pin_drop,color: Colors.blue,size: 156,),));
//           firstGeopint=position;
//           controller.changeLocation(position);
//
//
//         }
//
//       });
//     });
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Serif"),),
// body: OSMFlutter(
//   controller:controller,
//   trackMyPosition: true,
//   initZoom: 8,
//   minZoomLevel: 8,
//   maxZoomLevel: 15,
//   stepZoom: 1.0,
//   androidHotReloadSupport: true,
//   roadConfiguration: const RoadOption(roadColor: Colors.black,),
//   markerOption: MarkerOption(
//       defaultMarker: const MarkerIcon(icon: Icon(
//           Icons.person_pin_circle,
//           color: Colors.blue,
//           size: 156,
//         )),
//   ),
//   onMapIsReady: (e)async{
//     if(e)
//       {
//         await Future.delayed(const Duration(seconds: 1),()async{
//           await controller.currentLocation();
//         });
//       }
//   },
// )
//
//     );
//   }
// }
