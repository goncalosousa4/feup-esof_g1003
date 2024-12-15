import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _activeCantina = prefs.getBool('ff_activeCantina') ?? _activeCantina;
    });
    _safeInit(() {
      _activeGrill = prefs.getBool('ff_activeGrill') ?? _activeGrill;
    });
    _safeInit(() {
      _activeInesc = prefs.getBool('ff_activeInesc') ?? _activeInesc;
    });
    _safeInit(() {
      _activeBB = prefs.getBool('ff_activeBB') ?? _activeBB;
    });
    _safeInit(() {
      _activeAE = prefs.getBool('ff_activeAE') ?? _activeAE;
    });
    _safeInit(() {
      _activeMinas = prefs.getBool('ff_activeMinas') ?? _activeMinas;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _activeCantina = false;
  bool get activeCantina => _activeCantina;
  set activeCantina(bool value) {
    _activeCantina = value;
    prefs.setBool('ff_activeCantina', value);
  }

  bool _activeGrill = false;
  bool get activeGrill => _activeGrill;
  set activeGrill(bool value) {
    _activeGrill = value;
    prefs.setBool('ff_activeGrill', value);
  }

  bool _activeInesc = false;
  bool get activeInesc => _activeInesc;
  set activeInesc(bool value) {
    _activeInesc = value;
    prefs.setBool('ff_activeInesc', value);
  }

  bool _activeBB = false;
  bool get activeBB => _activeBB;
  set activeBB(bool value) {
    _activeBB = value;
    prefs.setBool('ff_activeBB', value);
  }

  bool _activeAE = false;
  bool get activeAE => _activeAE;
  set activeAE(bool value) {
    _activeAE = value;
    prefs.setBool('ff_activeAE', value);
  }

  bool _activeMinas = false;
  bool get activeMinas => _activeMinas;
  set activeMinas(bool value) {
    _activeMinas = value;
    prefs.setBool('ff_activeMinas', value);
  }
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
