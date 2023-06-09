import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data/local_storage.dart';

import 'features/homescreen/home_screen.dart';
import 'features/signup/sign_up_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(TRSecureStorage(),permanent: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:  
        // HomeScreen()
       SignUpScreen(),
    );
  }
}


