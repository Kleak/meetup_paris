import 'dart:io' as io;

import 'package:meetup_paris/src/packages/platform/platform_base.dart';

class Platform extends PlatformBase {
  Platform()
      : super(
          isAndroid: io.Platform.isAndroid,
          isIos: io.Platform.isIOS,
          isLinux: io.Platform.isLinux,
          isMacOs: io.Platform.isMacOS,
          isWindows: io.Platform.isWindows,
        );
}
