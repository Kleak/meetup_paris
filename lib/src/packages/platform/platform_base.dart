abstract class PlatformBase {
  final bool isWeb;
  final bool isAndroid;
  final bool isIos;
  final bool isWindows;
  final bool isMacOs;
  final bool isLinux;

  PlatformBase({
    this.isWeb = false,
    this.isAndroid = false,
    this.isIos = false,
    this.isWindows = false,
    this.isMacOs = false,
    this.isLinux = false,
  });

  bool get isDesktop => isLinux || isWindows || isMacOs;

  bool get isMobile => isAndroid || isIos;

  String get name {
    if (isLinux) {
      return 'linux';
    } else if (isMacOs) {
      return 'macos';
    } else if (isWindows) {
      return 'windows';
    } else if (isAndroid) {
      return 'android';
    } else if (isIos) {
      return 'ios';
    } else if (isWeb) {
      return 'web';
    }
    return 'unknown';
  }
}
