import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:swift/helpers/config_size.dart';
import 'package:swift/helpers/theme.dart';
import 'package:swift/providers/navigation_provider/swift_navigation_provider.dart';
import 'package:swift/routes.dart';

main(List<String> args) {
  return runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<SwiftNavigationProvider>(
          create: (_) => SwiftNavigationProvider())
    ],
    child: Swift(),
  ));
}

class Swift extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness
          .dark, //status bar brightness//status barIcon Brightness
    ));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        initialRoute: '/',
        routes: routes);
  }
}
