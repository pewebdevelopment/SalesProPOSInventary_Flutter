import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../GlobalComponents/Graph/sample_data.dart';
import '../../GlobalComponents/tab_buttons.dart';
import '../../constant.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String posStat = 'Daily';
  String saleStat = 'Weekly';
  bool selected = true;

  List<ChartSampleData> chartData = <ChartSampleData>[
    ChartSampleData(x: 'Jan', y: 3, secondSeriesYValue: 5),
    ChartSampleData(x: 'Feb', y: 5, secondSeriesYValue: 7),
    ChartSampleData(x: 'Mar', y: 3, secondSeriesYValue: 5),
    ChartSampleData(x: 'Apr', y: 5, secondSeriesYValue: 7),
    ChartSampleData(x: 'May', y: 3, secondSeriesYValue: 5),
    ChartSampleData(x: 'Jun', y: 5, secondSeriesYValue: 7),
    ChartSampleData(x: 'Jul', y: 3, secondSeriesYValue: 5),
    ChartSampleData(x: 'Aug', y: 5, secondSeriesYValue: 7),
    ChartSampleData(x: 'Sep', y: 3, secondSeriesYValue: 5),
    ChartSampleData(x: 'Oct', y: 5, secondSeriesYValue: 7),
    ChartSampleData(x: 'Nov', y: 3, secondSeriesYValue: 5),
    ChartSampleData(x: 'Dec', y: 5, secondSeriesYValue: 7),
  ];

  SfCartesianChart _buildDefaultSplineChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      legend: Legend(
        isVisible: true,
        position: LegendPosition.top,
      ),
      primaryXAxis: CategoryAxis(majorGridLines: const MajorGridLines(width: 0), labelPlacement: LabelPlacement.onTicks),
      primaryYAxis: NumericAxis(
        minimum: 00,
        maximum: 12,
        axisLine: const AxisLine(width: 0),
        edgeLabelPlacement: EdgeLabelPlacement.hide,
        labelFormat: '{value}k',
        majorTickLines: const MajorTickLines(size: 0),
      ),
      series: _getDefaultSplineSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  List<SplineSeries<ChartSampleData, String>> _getDefaultSplineSeries() {
    return <SplineSeries<ChartSampleData, String>>[
      SplineSeries<ChartSampleData, String>(
        dataSource: chartData,
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        markerSettings: const MarkerSettings(isVisible: false),
        color: kMainColor,
        name: 'Amount',
      ),
      SplineSeries<ChartSampleData, String>(
        dataSource: chartData,
        name: 'Orders',
        markerSettings: const MarkerSettings(isVisible: false),
        color: Colors.blue,
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.secondSeriesYValue,
      )
    ];
  }

  SfCartesianChart _buildDefaultColumnChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        majorGridLines: const MajorGridLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
          axisLine: const AxisLine(width: 0),
          labelFormat: '{value}%',
          majorTickLines: const MajorTickLines(size: 0)),
      series: _getDefaultColumnSeries(),
    );
  }

  /// Get default column series
  List<ColumnSeries<ChartSampleData, String>> _getDefaultColumnSeries() {
    return <ColumnSeries<ChartSampleData, String>>[
      ColumnSeries<ChartSampleData, String>(
        dataSource: <ChartSampleData>[
          ChartSampleData(x: 'Ibne', y: 0.541),
          ChartSampleData(x: 'Kamal', y: 0.818),
          ChartSampleData(x: 'Jamal', y: 1.51),
          ChartSampleData(x: 'Karim', y: 1.302),
          ChartSampleData(x: 'Rahim', y: 2.017),
        ],
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        dataLabelSettings: const DataLabelSettings(
            isVisible: true, textStyle: TextStyle(fontSize: 10)),
      )
    ];
  }

  SfCartesianChart _buildDefaultColumnChartProduct() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        majorGridLines: const MajorGridLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
          axisLine: const AxisLine(width: 0),
          labelFormat: '{value}%',
          majorTickLines: const MajorTickLines(size: 0)),
      series: _getDefaultColumnSeriesProduct(),
    );
  }

  /// Get default column series
  List<ColumnSeries<ChartSampleData, String>> _getDefaultColumnSeriesProduct() {
    return <ColumnSeries<ChartSampleData, String>>[
      ColumnSeries<ChartSampleData, String>(
        dataSource: <ChartSampleData>[
          ChartSampleData(x: 'Watch', y: 0.541),
          ChartSampleData(x: 'Mobile', y: 0.818),
          ChartSampleData(x: 'Laptop', y: 1.51),
          ChartSampleData(x: 'Table', y: 1.302),
          ChartSampleData(x: 'Glassed', y: 2.017),
        ],
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        dataLabelSettings: const DataLabelSettings(
            isVisible: true, textStyle: TextStyle(fontSize: 10)),
      )
    ];
  }

  DropdownButton<String> getPosStats() {
    List<DropdownMenuItem<String>> posStatistics = [];
    for (String posStats in posStats) {
      var item = DropdownMenuItem(
        value: posStats,
        child: Text(
          posStats,
          style: GoogleFonts.poppins(
            fontSize: 15.0,
          ),
        ),
      );
      posStatistics.add(item);
    }
    return DropdownButton(
      underline: Container(),
      items: posStatistics,
      value: posStat,
      onChanged: (value) {
        setState(() {
          posStat = value!;
        });
      },
    );
  }

  DropdownButton<String> getSaleStats() {
    List<DropdownMenuItem<String>> saleStatistics = [];
    for (String saleStat in saleStats) {
      var item = DropdownMenuItem(
        value: saleStat,
        child: Text(saleStat),
      );
      saleStatistics.add(item);
    }
    return DropdownButton(
      items: saleStatistics,
      value: saleStat,
      underline: Container(),
      onChanged: (value) {
        setState(() {
          saleStat = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'POS Statistics',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), border: Border.all(color: kGreyTextColor.withOpacity(0.2), width: 2.0)),
                      child: getPosStats(),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0), border: Border.all(color: kGreyTextColor.withOpacity(0.2))),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.7,
                          backgroundColor: kGreyTextColor.withOpacity(0.2),
                          center: Text(
                            "\$730",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                          progressColor: const Color(0xFF8E57FF),
                        ),
                        const SizedBox(height: 10.0,),
                        Text(
                          'Total Due',
                          style: GoogleFonts.poppins(
                            color: kGreyTextColor,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0), border: Border.all(color: kGreyTextColor.withOpacity(0.2))),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.6,
                          backgroundColor: kGreyTextColor.withOpacity(0.2),
                          center: Text(
                            "\$680",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                          progressColor: const Color(0xFF22DAA3),
                        ),
                        const SizedBox(height: 10.0,),
                        Text(
                          'Total Due',
                          style: GoogleFonts.poppins(
                            color: kGreyTextColor,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(14.0),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0), border: Border.all(color: kGreyTextColor.withOpacity(0.2))),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 5.0,
                          percent: 0.8,
                          backgroundColor: kGreyTextColor.withOpacity(0.2),
                          center: Text(
                            "\$860",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                          progressColor: const Color(0xFFFF6E16),
                        ),
                        const SizedBox(height: 10.0,),
                        Text(
                          'Total Due',
                          style: GoogleFonts.poppins(
                            color: kGreyTextColor,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0,),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: kGreyTextColor.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Sales Statistics',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), border: Border.all(color: kGreyTextColor.withOpacity(0.2), width: 2.0)),
                            child: getSaleStats(),
                          ),
                        ),
                      ],
                    ),
                    _buildDefaultSplineChart(),
                  ],
                ),
              ),
              const SizedBox(height: 10.0,),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: kGreyTextColor.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Statistics',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), border: Border.all(color: kGreyTextColor.withOpacity(0.2), width: 2.0)),
                            child: getPosStats(),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                    Hero(
                      tag: 'TabButton',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TabButtonBig(
                            background: selected ? kMainColor : kDarkWhite,
                            text: selected ? Colors.white : kMainColor,
                            title: 'Top 5 Customers',
                            press: () {
                              setState(() {
                                selected = true;
                                print(selected);
                              });
                            },
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          TabButtonBig(
                            background: selected ? kDarkWhite : kMainColor,
                            text: selected ? kMainColor : Colors.white,
                            title: 'Top 5 Products',
                            press: () {
                              setState(() {
                                selected = false;
                                print(selected);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    selected ?  _buildDefaultColumnChart() : _buildDefaultColumnChartProduct(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TopCustomer extends StatelessWidget {
  const TopCustomer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 80,
      horizontalMargin: 0,
      headingRowColor: MaterialStateColor.resolveWith((states) => kDarkWhite),
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
          ),
        ),
        DataColumn(
          label: Text(
            'Paid',
          ),
        ),
        DataColumn(
          label: Text(
            'Due',
          ),
        ),
      ],
      rows: <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 3.0),
                    height: 30.0,
                    width: 30.0,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Riead',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DataCell(
              Text('\$325'),
            ),
            const DataCell(
              Text('\$825'),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 3.0),
                    height: 30.0,
                    width: 30.0,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Riead',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DataCell(
              Text('\$325'),
            ),
            const DataCell(
              Text('\$825'),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 3.0),
                    height: 30.0,
                    width: 30.0,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Riead',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DataCell(
              Text('\$325'),
            ),
            const DataCell(
              Text('\$825'),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 3.0),
                    height: 30.0,
                    width: 30.0,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Riead',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DataCell(
              Text('\$325'),
            ),
            const DataCell(
              Text('\$825'),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 3.0),
                    height: 30.0,
                    width: 30.0,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Riead',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DataCell(
              Text('\$325'),
            ),
            const DataCell(
              Text('\$825'),
            ),
          ],
        ),
      ],
    );
  }
}

class TopProducts extends StatelessWidget {
  const TopProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 80,
      horizontalMargin: 0,
      headingRowColor: MaterialStateColor.resolveWith((states) => kDarkWhite),
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
          ),
        ),
        DataColumn(
          label: Text(
            'Sale',
          ),
        ),
        DataColumn(
          label: Text(
            'Income',
          ),
        ),
      ],
      rows: <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 3.0),
                    height: 30.0,
                    width: 30.0,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Watch',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DataCell(
              Text('\$325'),
            ),
            const DataCell(
              Text('\$825'),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 3.0),
                    height: 30.0,
                    width: 30.0,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Shoe',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DataCell(
              Text('\$325'),
            ),
            const DataCell(
              Text('\$825'),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 3.0),
                    height: 30.0,
                    width: 30.0,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Mobile',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DataCell(
              Text('\$325'),
            ),
            const DataCell(
              Text('\$825'),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 3.0),
                    height: 30.0,
                    width: 30.0,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Tab',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DataCell(
              Text('\$325'),
            ),
            const DataCell(
              Text('\$825'),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 3.0),
                    height: 30.0,
                    width: 30.0,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Laptop',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DataCell(
              Text('\$325'),
            ),
            const DataCell(
              Text('\$825'),
            ),
          ],
        ),
      ],
    );
  }
}

class POSData {
  POSData(this.due, this.collection, this.income, this.total);

  late int due, collection, income, total;
}
