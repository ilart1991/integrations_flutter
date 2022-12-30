import 'package:pigeon/pigeon.dart';

class MyMessage {
  final String text;
  MyMessage(this.text);
}

@HostApi()
abstract class MessageApi {
  String getMessage(String text);
}
