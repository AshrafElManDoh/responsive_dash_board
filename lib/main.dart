import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_view.dart';

void main() {
  runApp(const ResponsiveDashBoardApp());
}

class ResponsiveDashBoardApp extends StatelessWidget {
  const ResponsiveDashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DashBoardView(),
      theme: ThemeData(fontFamily: "Montserrat"),
    );
  }
}
