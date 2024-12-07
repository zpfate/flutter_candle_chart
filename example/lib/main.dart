import 'package:example/mock_data.dart';
import 'package:example/root_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_candle_chart/flutter_candle_chart.dart';
import 'package:flutter_candle_chart/logic/candle_logic.dart';
import 'package:flutter_candle_chart/style/chart_style.dart';
import 'package:flutter_candle_chart/widget/candle_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {

  final _rootLogic = Get.put(RootLogic());
  final _candleLogic = Get.put(CandleLogic());

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Candle Chart Demo',
      theme: ThemeData(
        brightness:
            _rootLogic.darkMode.value ? Brightness.dark : Brightness.light,
        // useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Candle Chart", style: TextStyle(fontWeight: FontWeight.w500),),
          actions: [
            _modeChangeBtn(),
          ],
        ),
        body: GetBuilder(
          builder: (RootLogic logic) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                  height: 300,
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: CandleChart(
                    candles: MockData.candles,
                    logic: _candleLogic,
                    style: const ChartStyle(
                      visibleCount: 50,
                    ),
                  )),

                  Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    spacing: 10,
                    children: [

                      // _button("Time Mode"),
                      // _button("K Line Mode"),
                      // _button("Trend Line"),

                      ..._rootLogic.enums.map((e) => _button(e)),

                    ],
                  )
              
                ],
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _candleLogic.loadData(MockData.candles);
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }


  Widget _button(ChartEnum chartEnum, {VoidCallback? onPressed}) {

    bool selected = _rootLogic.usedEnums.contains(chartEnum);

    return TextButton(
      onPressed: () {
          setState(() {
            if (selected) {
              _rootLogic.usedEnums.remove(chartEnum);
            } else {
              _rootLogic.usedEnums.add(chartEnum);
            }

          });
      },
      style: TextButton.styleFrom(
        minimumSize: const Size(40, 44),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
        ),
        backgroundColor: selected ?  Colors.blue : Colors.grey
      ),

      child: Text(chartEnum.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
    );
  }


  Widget _modeChangeBtn() {
    return Obx(() {
      return IconButton(
        icon: Icon(
            _rootLogic.darkMode.value ? Icons.dark_mode : Icons.light_mode),
        onPressed: _rootLogic.changeMode,
      );
    });
  }
}
