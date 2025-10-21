import 'dart:async';
import 'package:flutter/material.dart';

/// this is the entry point of the application
Future<void> bootstrap(
  FutureOr<Widget> Function() builder) async {
  
   WidgetsFlutterBinding.ensureInitialized();


 

  runApp(
    await builder(),
  );
}
