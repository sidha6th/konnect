import 'package:flutter/cupertino.dart';

extension ScreenSize on BuildContext {
  Size getSize() => MediaQuery.of(this).size;
}
