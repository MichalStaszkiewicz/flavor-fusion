import 'package:flavor_fusion/app.dart';
import 'package:flavor_fusion/data/source/local/hive_data_provider.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) async {
    String apiToken = dotenv.get("API_TOKEN");
    initializeServices(apiToken);
    
    runApp(ProviderScope(child: App()));
  });
}
