import 'package:flutter/material.dart';
import 'bar_graph_card.dart';
import 'header_widget.dart';
import 'line_chart_card.dart';
import 'pages/home/widgets/activity_details_card.dart';
import 'responsive.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomePage({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    SizedBox _height(BuildContext context) => SizedBox(
          height: Responsive.isDesktop(context) ? 30 : 20,
        );

    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.isMobile(context) ? 15 : 18),
          child: Column(
            children: [
              SizedBox(
                height: Responsive.isMobile(context) ? 5 : 18,
              ),
              Header(scaffoldKey: scaffoldKey),
              _height(context),
              const ActivityDetailsCard(),
              _height(context),
              LineChartCard(),
              _height(context),
              BarGraphCard(),
              _height(context),
            ],
          ),
        )));
  }
}
