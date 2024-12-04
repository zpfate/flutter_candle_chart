
import 'package:flutter_candle_chart/flutter_candle_chart.dart';

class RootLogic extends GetxController {

  List<ChartEnum> enums = [
    ...MainEnum.values,
    ...SecondaryEnum.values,
  ];

  List<ChartEnum> usedEnums = [];


  final darkMode = false.obs;

  void changeMode() {
    darkMode.value = !darkMode.value;
    Get.forceAppUpdate();
  }
}
