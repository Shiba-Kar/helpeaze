import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<bool?> showToast(String message,
    [ToastGravity gravity = ToastGravity.BOTTOM]) async {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: gravity,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

initAppWrite() {
/*   Client()
      .setEndpoint('https://localhost/v1') // Your Appwrite Endpoint
      .setProject('62d7b7568b77983a547c') // Your project ID
      .setSelfSigned(status: true); */
}

initMapIndia() {
  /*  MapmyIndiaAccountManager.setMapSDKKey(ACCESS_TOKEN);
  MapmyIndiaAccountManager.setRestAPIKey(REST_API_KEY);
  MapmyIndiaAccountManager.setAtlasClientId(ATLAS_CLIENT_ID);
  MapmyIndiaAccountManager.setAtlasClientSecret(ATLAS_CLIENT_SECRET); */
}

Future initAll(WidgetsBinding widgetsBinding) async {
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  initAppWrite();
  initMapIndia();

  FlutterNativeSplash.remove();
}

Future<bool?> showT(
    {String msg = "",
    String type = "info",
    Toast toastLength = Toast.LENGTH_SHORT,
    ToastGravity gravity = ToastGravity.TOP}) async {
  Color getBackGroudColor() {
    switch (type) {
      case "warning":
        return Colors.yellow;
      case "error":
        return Colors.red;

      default:
        return Colors.blue;
    }
  }

  return Fluttertoast.showToast(
    msg: msg,
    toastLength: toastLength,
    gravity: gravity,
    timeInSecForIosWeb: 1,
    backgroundColor: getBackGroudColor(),
    textColor: Colors.white,
    fontSize: 12.w,
  );
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }
}
