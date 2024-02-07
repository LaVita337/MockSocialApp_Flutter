import 'package:shared_preferences/shared_preferences.dart';

class PlaybackConfigRepository {
  final SharedPreferences _preferences;

  static const String _autoplay = "autoplay";
  static const String _muted = "muted";

  PlaybackConfigRepository(this._preferences);

  Future<void> setMuted(bool value) async {
    _preferences.setBool(_muted, value);
  }

  Future<void> setAutoplay(bool value) async {
    _preferences.setBool(_autoplay, value);
  }

  bool isMuted() {
    return _preferences.getBool(_muted) ?? false;
  }

  bool isAutoplay() {
    return _preferences.getBool(_autoplay) ?? false;
  }
}