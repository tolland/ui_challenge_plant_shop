import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:plants_repository/plants_repository.dart';
import 'package:ui_challenge_plant_shop/services/app_router.dart';
import 'package:device_preview/device_preview.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  final isWebMobile = kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android);

  print(kIsWeb);
  print(defaultTargetPlatform);

  runApp(
    DevicePreview(
      storage: DevicePreviewStorage.none(),
      // data: DevicePreviewData(
      //   deviceIdentifier: Devices.ios.iPhone12.toString(),
      //   isFrameVisible: false,
      //   locale: 'en_GB',
      // ),
      availableLocales: const [
        Locale('en_US'),
        Locale('en_GB'),
        Locale('de'),
      ],
      isToolbarVisible: true,
      enabled: kIsWeb,
      builder: (context) => PlantApp(
        appRouter: AppRouter(),
        plantRepository: PlantRepository(),
      ),
    ),
  );
}

void enterFullScreen() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

void exitFullScreen() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: SystemUiOverlay.values);
}
