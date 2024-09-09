import 'package:flutter_candle_chart/model/candle_data.dart';

class MockData {
  static List<CandleData> get candles => _rawData
      .map((e) => CandleData(
          timestamp: e[0] * 1000,
          open: e[1].toDouble(),
          high: e[2].toDouble(),
          low: e[3].toDouble(),
          close: e[4].toDouble(),
          volume: e[5].toDouble()))
      .toList();

  // timestamp, open, high, low, close, volume
  static const List<dynamic> _rawData = [
    [1555939800, 53.80, 53.94, 52.50, 52.55, 60735500],
    [1556026200, 52.03, 53.12, 51.15, 52.78, 54719500],
    [1556112600, 52.77, 53.06, 51.60, 51.73, 53637500],
    [1556199000, 51.00, 51.80, 49.21, 49.53, 109247000],
    [1556285400, 49.30, 49.34, 46.23, 47.03, 111803500],
    [1556544600, 47.17, 48.80, 46.43, 48.29, 83572500],
    [1556631000, 48.41, 48.84, 47.40, 47.74, 47323000],
    [1556717400, 47.77, 48.00, 46.30, 46.80, 53522000],
    [1556803800, 49.10, 49.43, 47.54, 48.82, 90796500],
    [1556890200, 48.77, 51.32, 48.70, 51.01, 118534000],
    [1557149400, 50.00, 51.67, 49.70, 51.07, 54169500],
    [1557235800, 51.36, 51.44, 49.02, 49.41, 50657000],
    [1557322200, 49.39, 50.12, 48.84, 48.97, 30882000],
    [1557408600, 48.40, 48.74, 47.39, 48.40, 33557000],
    [1557495000, 47.95, 48.40, 47.20, 47.90, 35041500],
    [1557754200, 46.40, 46.49, 44.90, 45.40, 54174000],
    [1557840600, 45.86, 46.90, 45.60, 46.46, 36262000],
    [1557927000, 45.86, 46.49, 45.05, 46.39, 36480000],
    [1558013400, 45.90, 46.20, 45.30, 45.67, 37416500],
    [1558099800, 44.39, 44.45, 41.78, 42.21, 88933500],
    [1558359000, 40.56, 41.20, 39.05, 41.07, 102631000],
    [1558445400, 39.55, 41.48, 39.21, 41.02, 90019500],
    [1558531800, 39.82, 40.79, 38.36, 38.55, 93426000],
    [1558618200, 38.87, 39.89, 37.24, 39.10, 132735500],
    [1558704600, 39.97, 40.00, 37.75, 38.13, 70683000],
    [1559050200, 38.24, 39.00, 37.57, 37.74, 51564500],
    [1559136600, 37.42, 38.48, 37.01, 37.97, 59843000],
    [1559223000, 37.75, 38.45, 37.40, 37.64, 39632500],
    [1559309400, 37.02, 37.98, 36.82, 37.03, 52033500],
    [1559568600, 37.10, 37.34, 35.40, 35.79, 65322000],
    [1559655000, 36.22, 38.80, 35.92, 38.72, 69037500],
    [1559741400, 39.74, 40.26, 38.37, 39.32, 67554000],
    [1559827800, 40.89, 42.20, 40.36, 41.19, 101211000],
    [1559914200, 41.00, 42.17, 40.70, 40.90, 80017500],
    [1560173400, 42.05, 43.39, 41.80, 42.58, 52925000],
    [1560259800, 43.83, 44.18, 42.70, 43.42, 58267500],
    [1560346200, 44.59, 44.68, 41.80, 41.85, 75987500],
    [1560432600, 42.08, 42.98, 41.50, 42.78, 40841500],
    // [1560519000, 42.25, 43.33, 42.08, 42.98, 37167000],
    // [1560778200, 43.10, 45.40, 42.85, 45.01, 61584000],
    // [1560864600, 45.74, 46.95, 44.51, 44.95, 63579000],
    // [1560951000, 45.02, 45.55, 44.21, 45.29, 32875500],
    // [1561037400, 44.60, 45.38, 43.27, 43.92, 59317500],
    // [1561123800, 43.24, 44.44, 43.10, 44.37, 41010500],
    // [1561383000, 44.65, 45.17, 44.20, 44.73, 28754000],
    // [1561469400, 44.88, 45.07, 43.90, 43.95, 30910500],
    // [1561555800, 44.06, 45.45, 43.62, 43.85, 42536000],
    // [1561642200, 43.89, 44.58, 43.47, 44.57, 31698500],
    // [1561728600, 44.20, 45.03, 44.16, 44.69, 34257000],
    // [1561987800, 46.04, 46.62, 45.26, 45.43, 41067000],
    // [1562074200, 45.78, 45.83, 44.44, 44.91, 46295000],
    // [1562160600, 47.88, 48.31, 46.90, 46.98, 71005500],
    // [1562333400, 46.91, 47.09, 46.16, 46.62, 35328500],
    // [1562592600, 46.25, 46.45, 45.73, 46.07, 29402500],
    // [1562679000, 45.79, 46.20, 45.46, 46.01, 30954000],
    // [1562765400, 46.83, 47.79, 46.63, 47.78, 45728500],
    // [1562851800, 47.63, 48.30, 47.16, 47.72, 37572000],
    // [1562938200, 47.95, 49.08, 47.94, 49.02, 46002500],
    // [1563197400, 49.60, 50.88, 48.97, 50.70, 55000500],
    // [1563283800, 49.86, 50.71, 49.59, 50.48, 40745000],
    // [1563370200, 51.13, 51.66, 50.67, 50.97, 48823500],
    // [1563456600, 51.01, 51.15, 50.38, 50.71, 23793000],
    // [1563543000, 51.14, 51.99, 50.92, 51.64, 35242000],
    // [1563802200, 51.75, 52.43, 50.84, 51.14, 34212000],
    // [1563888600, 51.34, 52.10, 50.90, 52.03, 25115500],
    // [1563975000, 51.83, 53.21, 51.63, 52.98, 55364000],
    // [1564061400, 46.70, 46.90, 45.11, 45.76, 112091500],
    // [1564147800, 45.38, 46.05, 44.45, 45.61, 50138500],
    // [1564407000, 45.42, 47.19, 45.21, 47.15, 46366500],
    // [1564493400, 46.58, 48.67, 46.44, 48.45, 40545000],
    // [1564579800, 48.60, 49.34, 47.33, 48.32, 45891000],
    // [1564666200, 48.53, 48.90, 46.35, 46.77, 41297500],
    // [1564752600, 46.27, 47.25, 45.85, 46.87, 30682500],
    // [1565011800, 45.92, 46.27, 45.16, 45.66, 35141500],
    // [1565098200, 46.38, 46.50, 45.15, 46.15, 27821000],
    // [1565184600, 45.30, 46.71, 45.16, 46.68, 23882500],
    // [1565271000, 46.89, 47.96, 46.53, 47.66, 26371500],
    // [1565357400, 47.21, 47.79, 46.76, 47.00, 19491000],
    // [1565616600, 46.60, 47.15, 45.75, 45.80, 23319500],
    // [1565703000, 45.76, 47.20, 45.51, 47.00, 24240500],
    // [1565789400, 46.24, 46.30, 43.34, 43.92, 47813000],
    // [1565875800, 44.17, 44.31, 42.31, 43.13, 40798000],
    // [1565962200, 43.33, 44.45, 43.20, 43.99, 25492500],
    // [1566221400, 44.84, 45.57, 44.34, 45.37, 26548000],
    // [1566307800, 45.52, 45.82, 44.91, 45.17, 20626000],
    // [1566394200, 44.40, 44.64, 43.52, 44.17, 38971500],
    // [1566480600, 44.56, 45.08, 43.64, 44.43, 32795000],
    // [1566567000, 43.99, 44.23, 42.20, 42.28, 42693000],
    // [1566826200, 42.72, 43.00, 42.31, 43.00, 25259500],
    // [1566912600, 43.15, 43.76, 42.41, 42.82, 27081000],
    // [1566999000, 42.74, 43.45, 42.46, 43.12, 16127500],
    // [1567085400, 43.80, 44.68, 43.60, 44.34, 25897500],
    // [1567171800, 45.83, 46.49, 44.84, 45.12, 46603000],
    // [1567517400, 44.82, 45.79, 44.63, 45.00, 26770500],
    // [1567603800, 45.38, 45.69, 43.84, 44.14, 28805000],
    // [1567690200, 44.50, 45.96, 44.17, 45.92, 36976500],
    // [1567776600, 45.44, 45.93, 45.03, 45.49, 20947000],
    // [1568035800, 46.00, 46.75, 45.85, 46.36, 24013500],
    // [1568122200, 46.16, 47.11, 45.79, 47.11, 24418500],
    // [1568208600, 47.48, 49.63, 47.20, 49.42, 50214000],
    // [1568295000, 49.54, 50.70, 48.88, 49.17, 42906000],
    // [1568381400, 49.39, 49.69, 48.97, 49.04, 26565500],
    // [1568640600, 49.20, 49.49, 48.23, 48.56, 23640500],
    // [1568727000, 48.49, 49.12, 48.07, 48.96, 19327000],
    // [1568813400, 49.00, 49.63, 48.47, 48.70, 20851000],
    // [1568899800, 49.20, 49.59, 48.97, 49.32, 23979000],
    // [1568986200, 49.30, 49.39, 47.63, 48.12, 31765000],
    // [1569245400, 48.00, 49.04, 47.84, 48.25, 21701000],
    // [1569331800, 48.30, 48.40, 44.52, 44.64, 64457500],
    // [1569418200, 44.91, 45.80, 43.67, 45.74, 47135500],
    // [1569504600, 46.13, 48.66, 45.48, 48.51, 59422500],
    // [1569591000, 48.44, 49.74, 47.75, 48.43, 55582000],
    // [1569850200, 48.60, 48.80, 47.22, 48.17, 29399000],
    // [1569936600, 48.30, 49.19, 47.83, 48.94, 30813000],
    // [1570023000, 48.66, 48.93, 47.89, 48.63, 28157000],
    // [1570109400, 46.37, 46.90, 44.86, 46.61, 75422500],
    // [1570195800, 46.32, 46.96, 45.61, 46.29, 39975000],
    // [1570455000, 45.96, 47.71, 45.71, 47.54, 40321000],
    // [1570541400, 47.17, 48.79, 46.90, 48.01, 43391000],
    // [1570627800, 48.26, 49.46, 48.13, 48.91, 34472000],
    // [1570714200, 49.06, 49.86, 48.32, 48.95, 31416500],
    // [1570800600, 49.43, 50.22, 49.36, 49.58, 42377000],
    // [1571059800, 49.58, 51.71, 49.43, 51.39, 51025000],
    // [1571146200, 51.54, 52.00, 50.82, 51.58, 32164000],
    // [1571232600, 51.48, 52.42, 51.38, 51.95, 33420500],
    // [1571319000, 52.50, 52.96, 52.03, 52.39, 23846500],
    // [1571405400, 52.14, 52.56, 51.02, 51.39, 28749000],
    // [1571664600, 51.67, 51.90, 50.04, 50.70, 25101500],
    // [1571751000, 50.86, 51.67, 50.17, 51.12, 23004000],
    // [1571837400, 50.90, 51.23, 50.27, 50.94, 26305500],
    // [1571923800, 59.67, 60.99, 57.84, 59.94, 148604500],
    // [1572010200, 59.54, 66.00, 59.22, 65.63, 150030500],
    // [1572269400, 65.51, 68.17, 64.52, 65.54, 94351500],
    // [1572355800, 64.00, 64.86, 62.95, 63.24, 63421500],
    // [1572442200, 62.60, 63.76, 61.99, 63.00, 48209000],
    // [1572528600, 62.62, 63.80, 62.60, 62.98, 25335000],
    // [1572615000, 63.26, 63.30, 61.96, 62.66, 31919500],
    // [1572877800, 62.96, 64.39, 61.85, 63.49, 43935000],
    // [1572964200, 63.92, 64.70, 63.22, 63.44, 34717000],
    // [1573050600, 63.60, 65.34, 62.90, 65.32, 39704500],
    // [1573137000, 65.83, 68.30, 65.60, 67.11, 72336500],
    // [1573223400, 66.90, 67.49, 66.50, 67.43, 30346000],
    // [1573482600, 68.79, 69.84, 68.40, 69.02, 49933500],
    // [1573569000, 69.38, 70.07, 68.81, 69.99, 36797000],
    // [1573655400, 71.00, 71.27, 69.04, 69.22, 42100500],
    // [1573741800, 69.22, 70.77, 68.58, 69.87, 32324500],
    // [1573828200, 70.13, 70.56, 69.67, 70.43, 24045000],
    // [1574087400, 70.58, 70.63, 69.22, 70.00, 22002000],
    // [1574173800, 70.35, 72.00, 69.56, 71.90, 38624000],
    // [1574260200, 72.00, 72.24, 69.91, 70.44, 33625500],
    // [1574346600, 70.90, 72.17, 70.80, 70.97, 30550000],
    // [1574433000, 68.03, 68.20, 66.00, 66.61, 84353000],
    // [1574692200, 68.86, 68.91, 66.89, 67.27, 61697500],
    // [1574778600, 67.05, 67.10, 65.42, 65.78, 39737000],
    // [1574865000, 66.22, 66.79, 65.71, 66.26, 27778000],
    // [1575037800, 66.22, 66.25, 65.50, 65.99, 12328000],
    // [1575297000, 65.88, 67.28, 65.74, 66.97, 30372500],
    // [1575383400, 66.52, 67.58, 66.44, 67.24, 32868500],
    // [1575469800, 67.55, 67.57, 66.57, 66.61, 27665000],
    // [1575556200, 66.57, 66.88, 65.45, 66.07, 18623000],
    // [1575642600, 67.00, 67.77, 66.95, 67.18, 38062000],
    // [1575901800, 67.32, 68.89, 67.02, 67.91, 45115500],
    // [1575988200, 67.99, 70.15, 67.86, 69.77, 44141500],
    // [1576074600, 70.38, 71.44, 70.22, 70.54, 34489000],
    // [1576161000, 70.98, 72.55, 70.65, 71.94, 38819500],
    // [1576247400, 72.21, 73.04, 70.93, 71.68, 32854500],
    // [1576506600, 72.51, 76.72, 72.50, 76.30, 90871000],
    // [1576593000, 75.80, 77.10, 75.18, 75.80, 42484000],
    // [1576679400, 76.13, 79.04, 76.12, 78.63, 70605000],
    // [1576765800, 79.46, 81.37, 79.30, 80.81, 90535500],
    // [1576852200, 82.06, 82.60, 80.04, 81.12, 73763500],
    // [1577111400, 82.36, 84.40, 82.00, 83.84, 66598000],
    // [1577197800, 83.67, 85.09, 82.54, 85.05, 40273500],
    // [1577370600, 85.58, 86.70, 85.27, 86.19, 53169500],
    // [1577457000, 87.00, 87.06, 85.22, 86.08, 49728500],
    // [1577716200, 85.76, 85.80, 81.85, 82.94, 62932000],
    // [1577802600, 81.00, 84.26, 80.42, 83.67, 51428500],
    // [1577975400, 84.90, 86.14, 84.34, 86.05, 47660500],
    // [1578061800, 88.10, 90.80, 87.38, 88.60, 88892500],
    // [1578321000, 88.09, 90.31, 88.00, 90.31, 50665000],
    // [1578407400, 92.28, 94.33, 90.67, 93.81, 89410500],
    // [1578493800, 94.74, 99.70, 93.65, 98.43, 155721500],
    // [1578580200, 99.42, 99.76, 94.57, 96.27, 142202000],
    // [1578666600, 96.36, 96.99, 94.74, 95.63, 64797500],
    // [1578925800, 98.70, 105.13, 98.40, 104.97, 132588000],
    // [1579012200, 108.85, 109.48, 104.98, 107.58, 144981000],
    // [1579098600, 105.95, 107.57, 103.36, 103.70, 86844000],
    // [1579185000, 98.75, 102.89, 98.43, 102.70, 108683500],
    // [1579271400, 101.52, 103.13, 100.63, 102.10, 68145500],
    // [1579617000, 106.05, 109.72, 105.68, 109.44, 89017500],
    // [1579703400, 114.38, 118.90, 111.82, 113.91, 156845000],
    // [1579789800, 112.85, 116.40, 111.12, 114.44, 98255000],
    // [1579876200, 114.13, 114.77, 110.85, 112.96, 71768000],
    // [1580135400, 108.40, 112.89, 107.86, 111.60, 68040500],
    // [1580221800, 113.70, 115.36, 111.62, 113.38, 58942500],
    // [1580308200, 115.14, 117.96, 113.49, 116.20, 89007500],
    // [1580394600, 126.48, 130.18, 123.60, 128.16, 145028500],
    // [1580481000, 128.00, 130.60, 126.50, 130.11, 78596500],
    // [1580740200, 134.74, 157.23, 134.70, 156.00, 235325000],
    // [1580826600, 176.59, 193.80, 166.78, 177.41, 304694000],
    // [1580913000, 164.65, 169.20, 140.82, 146.94, 242119000],
    // [1580999400, 139.98, 159.17, 137.40, 149.79, 199404000],
    // [1581085800, 146.11, 153.95, 146.00, 149.61, 85317500],
    // [1581345000, 160.00, 164.00, 150.48, 154.26, 123446000],
    // [1581431400, 153.76, 156.70, 151.60, 154.88, 58487500],
    // [1581517800, 155.57, 157.95, 152.67, 153.46, 60112500],
    // [1581604200, 148.37, 163.60, 147.00, 160.80, 131446500],
    // [1581690600, 157.44, 162.59, 157.10, 160.01, 78468500],
    // [1582036200, 168.32, 172.00, 166.47, 171.68, 81908500],
    // [1582122600, 184.70, 188.96, 180.20, 183.48, 127115000],
    // [1582209000, 182.39, 182.40, 171.99, 179.88, 88174500],
    // [1582295400, 181.40, 182.61, 176.09, 180.20, 71574000],
    // [1582554600, 167.80, 172.70, 164.44, 166.76, 75961000],
    // [1582641000, 169.80, 171.32, 157.40, 159.98, 86452500],
    // [1582727400, 156.50, 162.66, 155.22, 155.76, 70427500],
    // [1582813800, 146.00, 147.95, 133.80, 135.80, 121386000],
    // [1582900200, 125.94, 138.10, 122.30, 133.60, 121114500],
    // [1583159400, 142.25, 148.74, 137.33, 148.72, 100975000],
    // [1583245800, 161.00, 161.40, 143.22, 149.10, 128920000],
    // [1583332200, 152.79, 153.30, 144.95, 149.90, 75245000],
    // [1583418600, 144.75, 149.15, 143.61, 144.91, 54263500],
    // [1583505000, 138.00, 141.40, 136.85, 140.70, 63314500],
    // [1583760600, 121.08, 132.60, 121.00, 121.60, 85368500],
    // [1583847000, 131.89, 133.60, 121.60, 129.07, 77972000],
    // [1583933400, 128.04, 130.72, 122.60, 126.85, 66612500],
    // [1584019800, 116.18, 118.90, 109.25, 112.11, 94545500],
    // [1584106200, 119.00, 121.51, 100.40, 109.32, 113201500],
    // [1584365400, 93.90, 98.97, 88.43, 89.01, 102447500],
    // [1584451800, 88.00, 94.37, 79.20, 86.04, 119973000],
    // [1584538200, 77.80, 80.97, 70.10, 72.24, 118931000],
    // [1584624600, 74.94, 90.40, 71.69, 85.53, 150977500],
    // [1584711000, 87.64, 95.40, 85.16, 85.51, 141427500],
    // [1584970200, 86.72, 88.40, 82.10, 86.86, 82272500],
    // [1585056600, 95.46, 102.74, 94.80, 101.00, 114476000],
    // [1585143000, 109.05, 111.40, 102.22, 107.85, 106113500],
    // [1585229400, 109.48, 112.00, 102.45, 105.63, 86903500],
    // [1585315800, 101.00, 105.16, 98.81, 102.87, 71887000],
    // [1585575000, 102.05, 103.33, 98.25, 100.43, 59990500],
    // [1585661400, 100.25, 108.59, 99.40, 104.80, 88857500],
    // [1585747800, 100.80, 102.79, 95.02, 96.31, 66766000],
    // [1585834200, 96.21, 98.85, 89.28, 90.89, 99292000],
    // [1585920600, 101.90, 103.10, 93.68, 96.00, 112810500],
    // [1586179800, 102.24, 104.20, 99.59, 103.25, 74509000],
    // [1586266200, 109.00, 113.00, 106.47, 109.09, 89599000],
    // [1586352600, 110.84, 111.44, 106.67, 109.77, 63280000],
    // [1586439000, 112.42, 115.04, 111.42, 114.60, 68250000],
    // [1586784600, 118.03, 130.40, 116.11, 130.19, 112377000],
    // [1586871000, 139.79, 148.38, 138.49, 141.98, 152882500],
    // [1586957400, 148.40, 150.63, 142.00, 145.97, 117885000],
    // [1587043800, 143.39, 151.89, 141.34, 149.04, 103289500],
    // [1587130200, 154.46, 154.99, 149.53, 150.78, 65641000],
    // [1587389400, 146.54, 153.11, 142.44, 149.27, 73733000],
    // [1587475800, 146.02, 150.67, 134.76, 137.34, 101045500],
    // [1587562200, 140.80, 146.80, 137.74, 146.42, 70827500],
    // [1587648600, 145.52, 146.80, 140.63, 141.13, 66183500],
    // [1587735000, 142.16, 146.15, 139.64, 145.03, 66060000],
    // [1587994200, 147.52, 159.90, 147.00, 159.75, 103407000],
    // [1588080600, 159.13, 161.00, 151.34, 153.82, 76110000],
    // [1588167000, 158.03, 160.64, 156.63, 160.10, 81080000],
    // [1588253400, 171.04, 173.96, 152.70, 156.38, 142359500],
    // [1588339800, 151.00, 154.55, 136.61, 140.26, 162659000],
    // [1588599000, 140.20, 152.40, 139.60, 152.24, 96185500],
    // [1588685400, 157.96, 159.78, 152.44, 153.64, 84958500],
    // [1588771800, 155.30, 157.96, 152.22, 156.52, 55616000],
    // [1588858200, 155.44, 159.28, 154.47, 156.01, 57638500],
    // [1588944600, 158.75, 164.80, 157.40, 163.88, 80432500],
    // [1589203800, 158.10, 164.80, 157.00, 162.26, 82598000],
    // [1589290200, 165.40, 168.66, 161.60, 161.88, 79534500],
    // [1589376600, 164.17, 165.20, 152.66, 158.19, 95327500],
    // [1589463000, 156.00, 160.67, 152.80, 160.67, 68411000],
    // [1589549400, 158.07, 161.01, 157.31, 159.83, 52592000],
    // [1589808600, 165.56, 166.94, 160.78, 162.73, 58329000],
    // [1589895000, 163.03, 164.41, 161.22, 161.60, 48182500],
    // [1589981400, 164.10, 165.20, 162.36, 163.11, 36546500],
    // [1590067800, 163.20, 166.50, 159.20, 165.52, 61273000],
    // [1590154200, 164.43, 166.36, 162.40, 163.38, 49937500],
    // [1590499800, 166.90, 166.92, 163.14, 163.77, 40448500],
    // [1590586200, 164.17, 165.54, 157.00, 164.05, 57747500],
    // [1590672600, 162.70, 164.95, 160.34, 161.16, 36278000],
    // [1590759000, 161.75, 167.00, 160.84, 167.00, 58822500],
    // [1591018200, 171.60, 179.80, 170.82, 179.62, 74697500],
    // [1591104600, 178.94, 181.73, 174.20, 176.31, 67828000],
    // [1591191000, 177.62, 179.59, 176.02, 176.59, 39747500],
    // [1591277400, 177.98, 179.15, 171.69, 172.88, 44438500],
    // [1591363800, 175.57, 177.30, 173.24, 177.13, 39059500],
    // [1591623000, 183.80, 190.00, 181.83, 189.98, 70873500],
    // [1591709400, 188.00, 190.89, 184.79, 188.13, 56941000],
    // [1591795800, 198.38, 205.50, 196.50, 205.01, 92817000],
    // [1591882200, 198.04, 203.79, 194.40, 194.57, 79582500],
    // [1591968600, 196.00, 197.60, 182.52, 187.06, 83817000],
    // [1592227800, 183.56, 199.77, 181.70, 198.18, 78486000],
    // [1592314200, 202.37, 202.58, 192.48, 196.43, 70255500],
    // [1592400600, 197.54, 201.00, 196.51, 198.36, 49454000],
    // [1592487000, 200.60, 203.84, 198.89, 200.79, 48759500],
    // [1592573400, 202.56, 203.19, 198.27, 200.18, 43398500],
    // [1592832600, 199.99, 201.78, 198.00, 198.86, 31812000],
    // [1592919000, 199.78, 202.40, 198.80, 200.36, 31826500],
    // [1593005400, 198.82, 200.18, 190.63, 192.17, 54798000],
    // [1593091800, 190.85, 197.20, 187.43, 197.20, 46272500],
    // [1593178200, 198.96, 199.00, 190.97, 191.95, 44274500],
    // [1593437400, 193.80, 202.00, 189.70, 201.87, 45132000],
    // [1593523800, 201.30, 217.54, 200.75, 215.96, 84592500],
    // [1593610200, 216.60, 227.07, 216.10, 223.93, 66634500],
    // [1593696600, 244.30, 245.60, 237.12, 241.73, 86250500],
    // [1594042200, 255.34, 275.56, 253.21, 274.32, 102849500],
    // [1594128600, 281.00, 285.90, 267.34, 277.97, 107448500],
    // [1594215000, 281.00, 283.45, 262.27, 273.18, 81556500],
    // [1594301400, 279.40, 281.71, 270.26, 278.86, 58588000],
    // [1594387800, 279.20, 309.78, 275.20, 308.93, 116688000],
    // [1594647000, 331.80, 359.00, 294.22, 299.41, 194927000],
    // [1594733400, 311.20, 318.00, 286.20, 303.36, 117090500],
    // [1594819800, 308.60, 310.00, 291.40, 309.20, 81839000],
    // [1594906200, 295.43, 306.34, 293.20, 300.13, 71504000],
    // [1594992600, 302.69, 307.50, 298.00, 300.17, 46650000],
    // [1595251800, 303.80, 330.00, 297.60, 328.60, 85607000],
    // [1595338200, 327.99, 335.00, 311.60, 313.67, 80536000],
    // [1595424600, 319.80, 325.28, 312.40, 318.47, 70805500],
    // [1595511000, 335.79, 337.80, 296.15, 302.61, 121642500],
    // [1595597400, 283.20, 293.00, 273.31, 283.40, 96983000],
    // [1595856600, 287.00, 309.59, 282.60, 307.92, 80243500],
    // [1595943000, 300.80, 312.94, 294.88, 295.30, 79043500],
    // [1596029400, 300.20, 306.96, 297.40, 299.82, 47134500],
    // [1596115800, 297.60, 302.65, 294.20, 297.50, 38105000],
    // [1596202200, 303.00, 303.41, 284.20, 286.15, 61041000],
    // [1596461400, 289.84, 301.96, 288.88, 297.00, 44046500],
    // [1596547800, 299.00, 305.48, 292.40, 297.40, 42075000],
    // [1596634200, 298.60, 299.97, 293.66, 297.00, 24739000],
    // [1596720600, 298.17, 303.46, 295.45, 297.92, 29961500],
    // [1596807000, 299.91, 299.95, 283.00, 290.54, 44482000],
    // [1597066200, 289.60, 291.50, 277.17, 283.71, 37611500],
    // [1597152600, 279.20, 284.00, 273.00, 274.88, 43129000],
    // [1597239000, 294.00, 317.00, 287.00, 310.95, 109147000],
    // [1597325400, 322.20, 330.24, 313.45, 324.20, 102126500],
    // [1597411800, 333.00, 333.76, 325.33, 330.14, 62888000],
    // [1597671000, 335.40, 369.17, 334.57, 367.13, 101211500],
    // [1597757400, 379.80, 384.78, 369.02, 377.42, 82372500],
    // [1597843800, 373.00, 382.20, 368.24, 375.71, 61026500],
    // [1597930200, 372.14, 404.40, 371.41, 400.37, 103059000],
    // [1598016600, 408.95, 419.10, 405.01, 410.00, 107448000],
    // [1598275800, 425.26, 425.80, 385.50, 402.84, 100318000],
    // [1598362200, 394.98, 405.59, 393.60, 404.67, 53294500],
    // [1598448600, 412.00, 433.20, 410.73, 430.63, 71197000],
    // [1598535000, 436.09, 459.12, 428.50, 447.75, 118465000],
    // [1598621400, 459.02, 463.70, 437.30, 442.68, 100406000],
    // [1598880600, 444.61, 500.14, 440.11, 498.32, 118374400],
    // [1598967000, 502.14, 502.49, 470.51, 475.05, 89841100],
    // [1599053400, 478.99, 479.04, 405.12, 447.37, 96176100],
    // [1599139800, 407.23, 431.80, 402.00, 407.00, 87596100],
    // [1599226200, 402.81, 428.00, 372.02, 418.32, 110321900],
    // [1599571800, 356.00, 368.74, 329.88, 330.21, 115465700],
    // [1599658200, 356.60, 369.00, 341.51, 366.28, 79465800],
    // [1599744600, 386.21, 398.99, 360.56, 371.34, 84930600],
    // [1599831000, 381.94, 382.50, 360.50, 372.72, 60717500],
    // [1600090200, 380.95, 420.00, 373.30, 419.62, 83020600],
    // [1600176600, 436.56, 461.94, 430.70, 449.76, 97298200],
    // [1600263000, 439.87, 457.79, 435.31, 441.76, 72279300],
    // [1600349400, 415.60, 437.79, 408.00, 423.43, 76779200],
    // [1600435800, 447.94, 451.00, 428.80, 442.15, 86406800],
    // [1600695000, 453.13, 455.68, 407.07, 449.39, 109476800],
    // [1600781400, 429.60, 437.76, 417.60, 424.23, 79580800],
    // [1600867800, 405.16, 412.15, 375.88, 380.36, 95074200],
    // [1600954200, 363.80, 399.50, 351.30, 387.79, 96561100],
    // [1601040600, 393.47, 408.73, 391.30, 407.34, 67208500],
    // [1601299800, 424.62, 428.08, 415.55, 421.20, 49719600],
    // [1601386200, 416.00, 428.50, 411.60, 419.07, 50219300],
    // [1601472600, 421.32, 433.93, 420.47, 429.01, 48145600],
    // [1601559000, 440.76, 448.88, 434.42, 448.16, 50741500],
    // [1601645400, 421.39, 439.13, 415.00, 415.09, 71430000],
    // [1601904600, 423.35, 433.64, 419.33, 425.68, 44722800],
    // [1601991000, 423.79, 428.78, 406.05, 413.98, 49146300],
    // [1602077400, 419.87, 429.90, 413.85, 425.30, 43127700],
    // [1602163800, 438.44, 439.00, 425.30, 425.92, 40421100],
    // [1602250200, 430.13, 434.59, 426.46, 434.00, 28925700],
    // [1602509400, 442.00, 448.74, 438.58, 442.30, 38791100],
    // [1602595800, 443.35, 448.89, 436.60, 446.65, 34463700],
    // [1602682200, 449.78, 465.90, 447.35, 461.30, 47879700],
    // [1602768600, 450.31, 456.57, 442.50, 448.88, 35672400],
    // [1602855000, 454.44, 455.95, 438.85, 439.67, 32775900],
    // [1603114200, 446.24, 447.00, 428.87, 430.83, 36287800],
    // [1603200600, 431.75, 431.75, 419.05, 421.94, 31656300],
    // [1603287000, 422.70, 432.95, 421.25, 422.64, 32370500],
    // [1603373400, 441.92, 445.23, 424.51, 425.79, 39993200],
    // [1603459800, 421.84, 422.89, 407.38, 420.63, 33717000],
    // [1603719000, 411.63, 425.76, 410.00, 420.28, 28239200],
    // [1603805400, 423.76, 430.50, 420.10, 424.68, 22686500],
    // [1603891800, 416.48, 418.60, 406.00, 406.02, 25451400],
    // [1603978200, 409.96, 418.06, 406.46, 410.83, 22655300],
    // [1604064600, 406.90, 407.59, 379.11, 388.04, 42511300],
    // [1604327400, 394.00, 406.98, 392.30, 400.51, 29021100],
    // [1604413800, 409.73, 427.77, 406.69, 423.90, 34351700],
    // [1604500200, 430.62, 435.40, 417.10, 420.98, 32143100],
    // [1604586600, 428.30, 440.00, 424.00, 438.09, 28414500],
    // [1604673000, 436.10, 436.57, 424.28, 429.95, 21706000],
    // [1604932200, 439.50, 452.50, 421.00, 421.26, 34833000],
    // [1605018600, 420.09, 420.09, 396.03, 410.36, 30284200],
    // [1605105000, 416.45, 418.70, 410.58, 417.13, 17357700],
    // [1605191400, 415.05, 423.00, 409.52, 411.76, 19855100],
    // [1605277800, 410.85, 412.53, 401.66, 408.50, 19771100],
    // [1605537000, 408.93, 412.45, 404.09, 408.09, 26838600],
    // [1605623400, 460.17, 462.00, 433.01, 441.61, 61188300],
    // [1605709800, 448.35, 496.00, 443.50, 486.64, 78044000],
    // [1605796200, 492.00, 508.61, 487.57, 499.27, 62475300],
    // [1605882600, 497.99, 502.50, 489.06, 489.61, 32911900],
    // [1606141800, 503.50, 526.00, 501.79, 521.85, 50260300],
    // [1606228200, 540.40, 559.99, 526.20, 555.38, 53648500],
    // [1606314600, 550.06, 574.00, 545.37, 574.00, 48930200],
    // [1606487400, 581.16, 598.78, 578.45, 585.76, 37561100],
    // [1606746600, 602.21, 607.80, 554.51, 567.60, 63003100],
    // [1606833000, 597.59, 597.85, 572.05, 584.76, 40103500],
    // [1606919400, 556.44, 571.54, 541.21, 568.82, 47775700],
    // [1607005800, 590.02, 598.97, 582.43, 593.38, 42552000],
    // [1607092200, 591.01, 599.04, 585.50, 599.04, 29401300],
    // [1607351400, 604.92, 648.79, 603.05, 641.76, 56309700],
    // [1607437800, 625.51, 651.28, 618.50, 649.88, 64265000],
    // [1607524200, 653.69, 654.32, 588.00, 604.48, 71291200],
    // [1607610600, 574.37, 627.75, 566.34, 627.07, 67083200],
    // [1607697000, 615.01, 624.00, 596.80, 609.99, 46475000],
    // [1607956200, 619.00, 642.75, 610.20, 639.83, 52040600],
    // [1608042600, 643.28, 646.90, 623.80, 633.25, 45071500],
    // [1608129000, 628.23, 632.50, 605.00, 622.77, 42095800],
    // [1608215400, 628.19, 658.82, 619.50, 655.90, 56270100],
    // [1608301800, 668.90, 695.00, 628.54, 695.00, 222126200],
    // [1608561000, 666.24, 668.50, 646.07, 649.86, 58045300],
    // [1608647400, 648.00, 649.88, 614.23, 640.34, 51716000],
    // [1608733800, 632.20, 651.50, 622.57, 645.98, 33173000],
    // [1608820200, 642.99, 666.09, 641.00, 661.77, 22865600],
    // [1609165800, 674.51, 681.40, 660.80, 663.69, 32278600],
    // [1609252200, 661.00, 669.90, 655.00, 665.99, 22910800],
    // [1609338600, 672.00, 696.60, 668.36, 694.78, 42846000],
    // [1609425000, 699.99, 718.72, 691.12, 705.67, 49649900],
    // [1609770600, 719.46, 744.49, 717.19, 729.77, 48638200],
    // [1609857000, 723.66, 740.84, 719.20, 735.11, 32245200],
    // [1609943400, 758.49, 774.00, 749.10, 755.98, 44700000],
    // [1610029800, 777.63, 816.99, 775.20, 816.04, 51498900],
    // [1610116200, 856.00, 884.49, 838.39, 880.02, 75055500],
    // [1610375400, 849.40, 854.43, 803.62, 811.19, 59301600],
    // [1610461800, 831.00, 868.00, 827.34, 849.44, 46270700],
    // [1610548200, 852.76, 860.47, 832.00, 854.41, 33312500],
    // [1610634600, 843.39, 863.00, 838.75, 845.00, 31266300],
    // [1610721000, 852.00, 859.90, 819.10, 826.16, 38777600],
    // [1611066600, 837.80, 850.00, 833.00, 844.55, 25367000],
    // [1611153000, 858.74, 859.50, 837.28, 850.45, 25665900],
    // [1611239400, 855.00, 855.72, 841.42, 844.99, 20521100],
    // [1611325800, 834.31, 848.00, 828.62, 846.64, 20066500],
    // [1611585000, 855.00, 900.40, 838.82, 880.80, 41173400],
    // [1611671400, 891.38, 895.90, 871.60, 883.09, 23131600],
    // [1611757800, 870.35, 891.50, 858.66, 864.16, 27334000],
    // [1611844200, 820.00, 848.00, 801.00, 835.43, 26378000],
    // [1611930600, 830.00, 842.41, 780.10, 793.53, 34990800],
    // [1612189800, 814.29, 842.00, 795.56, 839.81, 25391400],
    // [1612276200, 844.68, 880.50, 842.20, 872.79, 24346200],
    // [1612362600, 877.02, 878.08, 853.06, 854.69, 18343500],
    // [1612449000, 855.00, 856.50, 833.42, 849.99, 15812700],
    // [1612535400, 845.00, 864.77, 838.97, 852.23, 18566600],
    // [1612794600, 869.67, 877.77, 854.75, 863.42, 20161700],
    // [1612881000, 855.12, 859.80, 841.75, 849.46, 15157700],
    // [1612967400, 843.64, 844.82, 800.02, 804.82, 36216100],
    // [1613053800, 812.44, 829.88, 801.73, 811.66, 21622800],
    // [1613140200, 801.26, 817.33, 785.33, 816.12, 23768300],
    // [1613485800, 818.00, 821.00, 792.44, 796.22, 19802300],
    // [1613572200, 779.09, 799.84, 762.01, 798.15, 25996500],
    // [1613658600, 780.90, 794.69, 776.27, 787.38, 17957100],
    // [1613745000, 795.00, 796.79, 777.37, 781.30, 18958300],
    // [1614004200, 762.64, 768.50, 710.20, 714.50, 37269700],
    // [1614090600, 662.13, 713.61, 619.00, 698.84, 66606900],
    // [1614177000, 711.85, 745.00, 694.17, 742.02, 36767000],
    // [1614263400, 726.15, 737.21, 670.58, 682.22, 39023900],
    // [1614349800, 700.00, 706.70, 659.51, 675.50, 41089200],
    // [1614609000, 690.11, 719.00, 685.05, 718.43, 27136200],
    // [1614695400, 718.28, 721.11, 685.00, 686.44, 23732200],
    // [1614781800, 687.99, 700.70, 651.71, 653.20, 30208000],
    // [1614868200, 655.80, 668.45, 600.00, 621.44, 65919500],
    // [1614954600, 626.06, 627.84, 539.49, 597.95, 89396500],
    // [1615213800, 600.55, 620.13, 558.79, 563.00, 51787000],
    // [1615300200, 608.18, 678.09, 595.21, 673.58, 67523300],
    // [1615386600, 700.30, 717.85, 655.06, 668.06, 60605700],
    // [1615473000, 699.40, 702.50, 677.18, 699.60, 36253900],
    // [1615559400, 670.00, 694.88, 666.14, 693.73, 33583800],
    // [1615815000, 694.09, 713.18, 684.04, 707.94, 29335600],
    // [1615901400, 703.35, 707.92, 671.00, 676.88, 32195700],
    // [1615987800, 656.87, 703.73, 651.01, 701.81, 40372500],
    // [1616074200, 684.29, 689.23, 652.00, 653.16, 33224800],
    // [1616160600, 646.60, 657.23, 624.62, 654.87, 42894000],
    // [1616419800, 684.59, 699.62, 668.75, 670.00, 39512200],
    // [1616506200, 675.77, 677.80, 657.51, 662.16, 30491900],
    // [1616592600, 667.91, 668.02, 630.11, 630.27, 33795200],
    // [1616679000, 613.00, 645.50, 609.50, 640.39, 39224900],
    // [1616765400, 641.87, 643.82, 599.89, 618.71, 33852800],
    // [1617024600, 615.64, 616.48, 596.02, 611.29, 28637000],
    // [1617111000, 601.75, 637.66, 591.01, 635.62, 39432400],
    // [1617197400, 646.62, 672.00, 641.11, 667.93, 33337300],
    // [1617283800, 688.37, 692.42, 659.42, 661.75, 35298400],
    // [1617629400, 707.71, 708.16, 684.70, 691.05, 41842800],
    // [1617715800, 690.30, 696.55, 681.37, 691.62, 28271800],
    // [1617802200, 687.00, 691.38, 667.84, 670.97, 26309400],
    // [1617888600, 677.38, 689.55, 671.65, 683.80, 23924300],
    // [1617975000, 677.77, 680.97, 669.43, 677.02, 21437100],
    // [1618234200, 685.70, 704.80, 682.09, 701.98, 29135700],
    // [1618320600, 712.70, 763.00, 710.66, 762.32, 44652800],
    // [1618407000, 770.70, 780.79, 728.03, 732.23, 49017400],
    // [1618493400, 743.10, 743.69, 721.31, 738.85, 27848900],
    // [1618579800, 728.65, 749.41, 724.60, 739.78, 27979500],
    // [1618839000, 719.60, 725.40, 691.80, 714.63, 39686200],
    // [1618925400, 717.42, 737.25, 710.69, 718.99, 35609000],
    // [1619011800, 704.77, 744.84, 698.00, 744.12, 31215500],
    // [1619098200, 741.50, 753.77, 718.04, 719.69, 35590300],
    // [1619184600, 719.80, 737.36, 715.46, 729.40, 28370000],
    // [1619443800, 741.00, 749.30, 732.61, 738.20, 31038500],
    // [1619530200, 717.96, 724.00, 703.35, 704.74, 29437000],
    // [1619616600, 696.41, 708.50, 693.60, 694.40, 22271000],
    // [1619703000, 699.51, 702.25, 668.50, 677.00, 28845400],
    // [1619789400, 667.59, 715.47, 666.14, 709.44, 40758700],
    // [1620048600, 703.80, 706.00, 680.50, 684.90, 27043100],
    // [1620135000, 678.94, 683.45, 657.70, 673.60, 29739300],
    // [1620221400, 681.06, 685.30, 667.34, 670.94, 21901900],
    // [1620307800, 680.76, 681.02, 650.00, 663.54, 27784600],
    // [1620394200, 665.80, 690.00, 660.22, 672.37, 23469200],
    // [1620653400, 664.90, 665.05, 627.61, 629.04, 31392400],
    // [1620739800, 599.24, 627.10, 595.60, 617.20, 46503900],
    // [1620826200, 602.49, 620.41, 586.77, 589.89, 33823600],
    // [1620912600, 601.54, 606.46, 559.65, 571.69, 44184900],
    // [1620999000, 583.41, 592.87, 570.46, 589.74, 33370900],
    // [1621258200, 575.55, 589.73, 561.20, 576.83, 32390400],
    // [1621344600, 568.00, 596.25, 563.38, 577.87, 36830600],
    // [1621431000, 552.55, 566.21, 546.98, 563.46, 39578400],
    // [1621517400, 575.00, 588.85, 571.07, 586.78, 30821100],
    // [1621603800, 596.11, 596.68, 580.00, 580.88, 26030600],
    // [1621863000, 581.60, 614.48, 573.65, 606.44, 34558100],
    // [1621949400, 607.31, 613.99, 595.71, 604.69, 28005900],
    // [1622035800, 607.56, 626.17, 601.50, 619.13, 28639300],
    // [1622122200, 620.24, 631.13, 616.21, 630.85, 26370600],
    // [1622208600, 628.50, 635.59, 622.38, 625.22, 22737000],
    // [1622554200, 627.80, 633.80, 620.55, 623.90, 18084900],
    // [1622640600, 620.13, 623.36, 599.14, 605.12, 23302800],
    // [1622727000, 601.80, 604.55, 571.22, 572.84, 30111900],
    // [1622813400, 579.71, 600.61, 577.20, 599.05, 24036900],
    // [1623072600, 591.83, 610.00, 582.88, 605.13, 22543700],
    // [1623159000, 623.01, 623.09, 595.50, 603.59, 26053400],
    // [1623245400, 602.17, 611.79, 597.63, 598.78, 16584600],
    // [1623331800, 603.88, 616.59, 600.50, 610.12, 23919600],
    // [1623418200, 610.23, 612.56, 601.52, 609.89, 16205300],
    // [1623677400, 612.23, 625.49, 609.18, 617.69, 20424000],
    // [1623763800, 616.69, 616.79, 598.23, 599.36, 17764100],
    // [1623850200, 597.54, 608.50, 593.50, 604.87, 22144100],
    // [1623936600, 601.89, 621.47, 601.34, 616.60, 22701400],
    // [1624023000, 613.37, 628.35, 611.80, 623.31, 24560900],
    // [1624282200, 624.48, 631.39, 608.88, 620.83, 24812700],
    // [1624368600, 618.25, 628.57, 615.50, 623.71, 19158900],
    // [1624455000, 632.00, 657.20, 630.04, 656.57, 31099200],
    // [1624541400, 674.99, 697.62, 667.61, 679.82, 45982400],
    // [1624627800, 689.58, 693.81, 668.70, 671.87, 32496700],
    // [1624887000, 671.64, 694.70, 670.32, 688.72, 21628200],
    // [1624973400, 684.65, 687.51, 675.89, 680.76, 17381300],
    // [1625059800, 679.77, 692.81, 678.14, 679.70, 18924900],
    // [1625146200, 683.92, 687.99, 672.80, 677.92, 18634500],
    // [1625232600, 678.98, 700.00, 673.26, 678.90, 27054500],
    // [1625578200, 681.71, 684.00, 651.40, 659.58, 23284500],
    // [1625664600, 664.27, 665.70, 638.32, 644.65, 18792000],
    // [1625751000, 628.37, 654.43, 620.46, 652.81, 22773300],
    // [1625837400, 653.18, 658.91, 644.69, 656.95, 18140500],
    // [1626096600, 662.20, 687.24, 662.16, 685.70, 25927000],
    // [1626183000, 686.32, 693.28, 666.30, 668.54, 20966100],
    // [1626269400, 670.75, 678.61, 652.84, 653.38, 21641200],
    // [1626355800, 658.39, 666.14, 637.88, 650.60, 20209600],
    // [1626442200, 654.68, 656.70, 642.20, 644.22, 16371000],
    // [1626701400, 629.89, 647.20, 621.29, 646.22, 21297100],
    // [1626787800, 651.99, 662.39, 640.50, 660.50, 15487100],
    // [1626874200, 659.61, 664.86, 650.29, 655.29, 13953300],
    // [1626960600, 656.44, 662.17, 644.60, 649.26, 15105700],
    // [1627047000, 646.36, 648.80, 637.30, 643.38, 14604900],
    // [1627306200, 650.97, 668.20, 647.11, 657.62, 25336600],
    // [1627392600, 663.40, 666.50, 627.24, 644.78, 32813300],
    // [1627479000, 647.00, 654.97, 639.40, 646.98, 16006600],
    // [1627565400, 649.79, 683.69, 648.80, 677.35, 30394600],
    // [1627651800, 671.76, 697.53, 669.00, 687.20, 29600500],
    // [1627911000, 700.00, 726.94, 698.40, 709.67, 33615800],
    // [1627997400, 719.00, 722.65, 701.01, 709.74, 21620300],
    // [1628083800, 711.00, 724.90, 708.93, 710.92, 17002600],
    // [1628170200, 716.00, 720.95, 711.41, 714.63, 12919600],
    // [1628256600, 711.90, 716.33, 697.63, 699.10, 15576200],
    // [1628515800, 710.17, 719.03, 705.13, 713.76, 14715300],
    // [1628602200, 713.99, 716.59, 701.88, 709.99, 13432300],
    // [1628688600, 712.71, 715.18, 704.21, 707.82, 9800600],
    // [1628775000, 706.34, 722.80, 699.40, 722.25, 17459100],
    // [1628861400, 723.71, 729.90, 714.34, 717.17, 16698900],
    // [1629120600, 705.07, 709.50, 676.40, 686.17, 22677400],
    // [1629207000, 672.66, 674.58, 648.84, 665.71, 23721300],
    // [1629293400, 669.75, 695.77, 669.35, 688.99, 20349400],
    // [1629379800, 678.21, 686.55, 667.59, 673.47, 14313500],
    // [1629466200, 682.85, 692.13, 673.70, 680.26, 14781800],
    // [1629725400, 685.44, 712.13, 680.75, 706.30, 20264900],
    // [1629811800, 710.68, 715.22, 702.64, 708.49, 13083100],
    // [1629898200, 707.03, 716.97, 704.00, 711.20, 12645600],
    // [1629984600, 708.31, 715.40, 697.62, 701.16, 13214300],
    // [1630071000, 705.00, 715.00, 702.10, 711.92, 13762100],
    // [1630330200, 714.72, 731.00, 712.73, 730.91, 18604200],
    // [1630416600, 733.00, 740.39, 726.44, 735.72, 20855400],
    // [1630503000, 734.08, 741.99, 731.27, 734.09, 13204300],
    // [1630589400, 734.50, 740.97, 730.54, 732.39, 12777300],
    // [1630675800, 732.25, 734.00, 724.20, 733.57, 15246100],
    // [1631021400, 740.00, 760.20, 739.26, 752.92, 20039800],
    // [1631107800, 761.58, 764.45, 740.77, 753.87, 18793000],
    // [1631194200, 753.41, 762.10, 751.63, 754.86, 14077700],
    // [1631280600, 759.60, 762.61, 734.52, 736.27, 15114300],
    // [1631539800, 740.21, 744.78, 708.85, 743.00, 22952500],
    // [1631626200, 742.57, 754.47, 736.40, 744.49, 18524900],
    // [1631712600, 745.00, 756.86, 738.36, 755.83, 15357700],
    // [1631799000, 752.83, 758.91, 747.61, 756.99, 13923400],
    // [1631885400, 757.15, 761.04, 750.00, 759.49, 28204200],
    // [1632144600, 734.56, 742.00, 718.62, 730.17, 24757700],
    // [1632231000, 734.79, 744.74, 730.44, 739.38, 16330700],
    // [1632317400, 743.53, 753.67, 739.12, 751.94, 15126300],
    // [1632403800, 755.00, 758.20, 747.92, 753.64, 11947500],
    // [1632490200, 745.89, 774.80, 744.56, 774.39, 21373000],
    // [1632749400, 773.12, 799.00, 769.31, 791.36, 28070700],
    // [1632835800, 787.20, 795.64, 766.18, 777.56, 25381400],
    // [1632922200, 779.80, 793.50, 770.68, 781.31, 20942900],
    // [1633008600, 781.00, 789.13, 775.00, 775.48, 17956000],
    // [1633095000, 778.40, 780.78, 763.59, 775.22, 17031400],
    // [1633354200, 796.50, 806.97, 776.12, 781.53, 30483300],
    // [1633440600, 784.80, 797.31, 774.20, 780.59, 18432600],
    // [1633527000, 776.20, 786.66, 773.22, 782.75, 14632800],
    // [1633613400, 785.46, 805.00, 783.38, 793.61, 19195800],
    // [1633699800, 796.21, 796.38, 780.91, 785.49, 16711100],
    // [1633959000, 787.65, 801.24, 785.50, 791.94, 14175800],
    // [1634064472, 800.93, 812.32, 796.57, 811.41, 17289281],
  ];
}
