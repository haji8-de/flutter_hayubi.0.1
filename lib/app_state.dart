import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _galleryHeight = 350;
  int get galleryHeight => _galleryHeight;
  set galleryHeight(int _value) {
    _galleryHeight = _value;
  }

  int _activeTab = 0;
  int get activeTab => _activeTab;
  set activeTab(int _value) {
    _activeTab = _value;
  }

  LatLng? _location = LatLng(43.552847, 7.017369);
  LatLng? get location => _location;
  set location(LatLng? _value) {
    _location = _value;
  }

  List<bool> _favorites = [true, false, false, true];
  List<bool> get favorites => _favorites;
  set favorites(List<bool> _value) {
    _favorites = _value;
  }

  void addToFavorites(bool _value) {
    _favorites.add(_value);
  }

  void removeFromFavorites(bool _value) {
    _favorites.remove(_value);
  }

  void removeAtIndexFromFavorites(int _index) {
    _favorites.removeAt(_index);
  }

  void updateFavoritesAtIndex(
    int _index,
    bool Function(bool) updateFn,
  ) {
    _favorites[_index] = updateFn(_favorites[_index]);
  }

  bool _showDetails1 = false;
  bool get showDetails1 => _showDetails1;
  set showDetails1(bool _value) {
    _showDetails1 = _value;
  }

  bool _showDetails2 = false;
  bool get showDetails2 => _showDetails2;
  set showDetails2(bool _value) {
    _showDetails2 = _value;
  }

  bool _showDetails3 = false;
  bool get showDetails3 => _showDetails3;
  set showDetails3(bool _value) {
    _showDetails3 = _value;
  }

  bool _showDetails4 = false;
  bool get showDetails4 => _showDetails4;
  set showDetails4(bool _value) {
    _showDetails4 = _value;
  }

  List<String> _cooks = ['Michael', '', ''];
  List<String> get cooks => _cooks;
  set cooks(List<String> _value) {
    _cooks = _value;
  }

  void addToCooks(String _value) {
    _cooks.add(_value);
  }

  void removeFromCooks(String _value) {
    _cooks.remove(_value);
  }

  void removeAtIndexFromCooks(int _index) {
    _cooks.removeAt(_index);
  }

  void updateCooksAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _cooks[_index] = updateFn(_cooks[_index]);
  }

  List<bool> _cookSelected = [true, false, false];
  List<bool> get cookSelected => _cookSelected;
  set cookSelected(List<bool> _value) {
    _cookSelected = _value;
  }

  void addToCookSelected(bool _value) {
    _cookSelected.add(_value);
  }

  void removeFromCookSelected(bool _value) {
    _cookSelected.remove(_value);
  }

  void removeAtIndexFromCookSelected(int _index) {
    _cookSelected.removeAt(_index);
  }

  void updateCookSelectedAtIndex(
    int _index,
    bool Function(bool) updateFn,
  ) {
    _cookSelected[_index] = updateFn(_cookSelected[_index]);
  }

  bool _firstVisit = true;
  bool get firstVisit => _firstVisit;
  set firstVisit(bool _value) {
    _firstVisit = _value;
  }

  DocumentReference? _loginUserRef =
      FirebaseFirestore.instance.doc('/users/guest');
  DocumentReference? get loginUserRef => _loginUserRef;
  set loginUserRef(DocumentReference? _value) {
    _loginUserRef = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
