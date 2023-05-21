import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs/core/constants/app_constants.dart';
import 'package:ososs/core/navigation/route_generator.dart';
import 'package:ososs/features/more/splash/presentation/screens/splash_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // default iPhone screen size
      designSize: const Size(375, 800),
      builder: (context, child) {
        return MaterialApp(
          title: AppConstants.APP_TITLE,
          initialRoute: '/',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.generateRoute,
          home: const SplashScreen(),
          builder: (context, child) {
            // to prevent the device from scaling the app texts
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.0,
              ),
              child: child!,
            );
          },
        );
      },
    );
  }
}
