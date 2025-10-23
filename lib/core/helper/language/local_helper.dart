import 'dart:ui';

/// {@template locale_helper}
/// Utilities to get information about the language and region of the device.
/// {@endtemplate}
class LocaleHelper {
  /// Returns the current language code of the system (e.g.: 'es', 'en').
  static String getCurrentLanguageCode() {
    final locale = PlatformDispatcher.instance.locale;
    return locale.languageCode;
  }

  /// Returns the complete locale (e.g.: 'es_CO', 'en_US').
  static String getCurrentLocaleString() {
    final locale = PlatformDispatcher.instance.locale;
    final country = locale.countryCode;
    return country != null ? '${locale.languageCode}_$country' : locale.languageCode;
  }
}
