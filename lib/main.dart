import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/Core/AppColors.dart';
import 'package:library_app/Features/SplashScreenPage.dart';
import 'Features/Home/presentation/pages/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: primaryColor
  ));
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428,926),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Poppins',scaffoldBackgroundColor: Colors.white,primaryColor: primaryColor,appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.white,
            )
          )),
         home:  const HomePage()
      ),
    );
  }
}