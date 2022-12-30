import 'package:first_app/domain/stub_data.dart'
    if (dart.library.io) 'package:first_app/mobile.dart'
    if (dart.library.html) 'package:first_app/web.dart';

class Data {
  final DataImpl _data;

  Data() : _data = DataImpl();

  void getText() {
    _data.getText();
  }
}
