import 'package:flutter/material.dart';

/// {@template app_life_cycle_listener}
/// The lifecycle watcher for the application.
/// {@endtemplate}
class AppLifeCycleListener extends StatefulWidget {
  /// {@macro app_life_cycle_listener}
  const AppLifeCycleListener({super.key, required this.child});

  /// the child widget to listen to the app life cycle.
  final Widget child;

  @override
  State<AppLifeCycleListener> createState() => _AppLifeCycleListenerState();
}

class _AppLifeCycleListenerState extends State<AppLifeCycleListener>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        // Come back to the foreground → you can refresh tokens or UI
        break;
      case AppLifecycleState.inactive:
        // Brief transition (e.g: incoming call)
        break;
      case AppLifecycleState.paused:
        // Go to the background → you can pause sockets or hide sensitive data
        break;
      case AppLifecycleState.detached:
        // App destroyed → clean resources
        break;
      case AppLifecycleState.hidden:
        // App in the background → clean resources
        break;
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
