import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

const String _appStatsStartsCounterKey = 'app_stats.app_starts_counter';

class AppStats {
  AppStats({
    required SharedPreferences prefs,
  }) : _prefs = prefs;

  final SharedPreferences _prefs;
  late int _startsCounter;
  final initializationCompleter = Completer<void>();

  /// Initializes the app stats instance.
  /// Call this method before using any other methods.
  Future<void> initialize() async {
    _startsCounter = _prefs.getInt(_appStatsStartsCounterKey) ?? 0;
    await _recordAppStarted();
    initializationCompleter.complete();
  }

  /// Returns the number of app starts.
  int get startsCounter {
    _verifyInitialized();
    return _startsCounter;
  }

  /// Returns true if this is the first start of the app.
  bool get isFirstStart => startsCounter == 1;

  Future<void> _recordAppStarted() async {
    await _prefs.setInt(_appStatsStartsCounterKey, ++_startsCounter);
  }

  void _verifyInitialized() {
    assert(
      initializationCompleter.isCompleted,
      'Call initialize() method first!',
    );
  }

  /// **⚠️ WARNING ⚠️**
  ///
  /// Calling this method will reset the app starts counter!
  Future<void> clear() async {
    await _prefs.remove(_appStatsStartsCounterKey);
    _startsCounter = 0;
  }
}
