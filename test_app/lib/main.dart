import 'package:flutter/material.dart';
import 'package:overflown/config.dart';
import 'package:overflown/gateway.dart';
import 'package:overflown/logviewer.dart';
import 'package:overflown/mqtt.dart';
import 'package:overflown/network.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LogViewer();
  }
}
