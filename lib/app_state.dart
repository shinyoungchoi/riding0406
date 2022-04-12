import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('ff_loginuser')) {
      try {
        _loginuser = jsonDecode(prefs.getString('ff_loginuser'));
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }
  }

  SharedPreferences prefs;

  dynamic _loginuser;
  dynamic get loginuser => _loginuser;
  set loginuser(dynamic _value) {
    _loginuser = _value;
    prefs.setString('ff_loginuser', jsonEncode(_value));
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
