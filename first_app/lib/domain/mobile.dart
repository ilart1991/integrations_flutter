import 'package:first_app/presentation/pages/my_home_page.dart';
import 'package:flutter/services.dart';

import 'base_data.dart';

class DataImpl extends BaseData {
  static const platform = MethodChannel('SIMPLE_CHANNEL');
  @override
  Future<void> getText() async {
    String stringFromPV;
    try {
      final String result =
          await platform.invokeMethod('getMyString', controller.text);
      stringFromPV = result;
    } on PlatformException catch (e) {
      stringFromPV = "Ошибка получения: '${e.message}'.";
    }

    recievedText = stringFromPV;
  }
}
