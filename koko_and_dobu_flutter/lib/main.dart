import 'package:flutter/material.dart';
import 'package:koko_and_dobu_flutter/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // client = Client('http://$localhost:8080/', authenticationKeyManager: FlutterAuthenticationKeyManager())..connectivityMonitor = FlutterConnectivityMonitor();

  // sessionManager = SessionManager(
  //   caller: client.modules.auth,
  // );
  // await sessionManager.initialize();
  runApp(const KotConnectApp());
}
