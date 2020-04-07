import 'package:geolocator/geolocator.dart';
//import 'package:flutter/material.dart';

class Location{

  double lattitude;
  double longitude;

  Future<void> getCurrentLocation()
  async{
    try{
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    lattitude=position.latitude;
    longitude=position.longitude;
    
    } catch(e){
      print(e);
    }
  }
}