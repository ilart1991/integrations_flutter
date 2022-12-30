import 'package:js/js.dart';

import 'base_data.dart';
import '../presentation/pages/my_home_page.dart';

@JS('v')
class V {
  @JS('camelCase')
  external static String inputText(String text);
}

String getInputText(String text) => V.inputText(text);

class DataImpl extends BaseData {
  @override
  void getText() {
    recievedText = getInputText(controller.text);
  }
}
