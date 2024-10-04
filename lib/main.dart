import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nfl_franchise_information/modules/app.module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'utils/go_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ScreenUtilInit(
      designSize: const Size(392, 783),
      builder: (context, child) {
        return ModularApp(module: AppModule(), child: const NflFranchiseInformation());
      },
      minTextAdapt: true,
      splitScreenMode: true,
    ),
  );
}

class NflFranchiseInformation extends StatelessWidget {
  const NflFranchiseInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'NFL Franchise Information',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerDelegate: routes.routerDelegate,
      routeInformationParser: routes.routeInformationParser,
      routeInformationProvider: routes.routeInformationProvider,
    );
  }
}
