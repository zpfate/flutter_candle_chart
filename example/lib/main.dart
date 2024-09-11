import 'package:example/mock_data.dart';
import 'package:example/root_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_candle_chart/flutter_candle_chart.dart';
import 'package:flutter_candle_chart/logic/candle_logic.dart';
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
          title: const Text("Flutter Candle Chart"),
          actions: [
            _changeModeButton(),
          ],
        ),
        body: GetBuilder(
          builder: (RootLogic logic) {
            return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CandleChart(
                  candles: MockData.candles,
                  logic: _candleLogic,
                ));
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

  Widget _changeModeButton() {
    return Obx(() {
      return IconButton(
        icon: Icon(
            _rootLogic.darkMode.value ? Icons.dark_mode : Icons.light_mode),
        onPressed: _rootLogic.changeMode,
      );
    });
  }
}
