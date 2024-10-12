import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koko_and_dobu_flutter/router/router.dart';

class KotConnectApp extends StatefulWidget {
  const KotConnectApp({super.key});

  @override
  State<KotConnectApp> createState() => _KotConnectAppState();
}

class _KotConnectAppState extends State<KotConnectApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: _router.config(),
      ),
    );
  }
}
