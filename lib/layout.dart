import 'package:flutter/material.dart';
import 'package:flutter_getx_template/helpers/responsiveness.dart';
import 'package:flutter_getx_template/widgets/large_screen.dart';
import 'package:flutter_getx_template/widgets/small_screen.dart';
import 'package:flutter_getx_template/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigatorBar(context, scaffoldKey),
      drawer: const Drawer(),
      body: const ResponsiveWidget(
          largeScreen: LargeScreen(), smallScreen: SmallScreen()),
    );
  }
}
