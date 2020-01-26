import 'package:geolocator/geolocator.dart';

class Location {

  Position position;
  double longitude, latitude;

  Future<void> getCurrentLocation() async {
    try {
      position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch(e){
      print(e);
    }
  }

}