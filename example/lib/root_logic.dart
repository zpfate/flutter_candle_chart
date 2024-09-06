
import 'package:flutter_candle_chart/flutter_candle_chart.dart';

class RootLogic extends GetxController {

  final darkMode = false.obs;



  void changeMode() {
    darkMode.value = !darkMode.value;
    Get.forceAppUpdate();
  }
}
