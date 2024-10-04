import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hydro/msg/auth_gate.dart';
import 'package:hydro/msg/auth_service.dart';
import 'package:hydro/msg/login_or_register.dart';
import 'package:hydro/msg/login_page.dart';
import 'package:hydro/msg/register_page.dart';
import 'package:hydro/pages/agro.dart';
import 'package:hydro/pages/privacy_policy.dart';
import 'package:hydro/pages/signin.dart';
import 'package:hydro/home.dart';
import 'package:hydro/pages/signup.dart';
import 'package:hydro/pages/chat.dart';
import 'package:hydro/pages/terms_of_privacy.dart';
import 'package:hydro/splash.dart';
import 'package:hydro/todo/todo.dart';
import 'package:hydro/weather/homee.dart';
import 'package:provider/provider.dart';

import 'chat_main.dart';
import 'golpo/story.dart';
import 'help.dart';
import 'package:hydro/todo/hom.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyC06hDxahYF21JmY_6OZsGW7TsqUDrIb44",
          appId: "1:761060578437:android:9ce1667effd9a5ecb285ec",
          messagingSenderId: "761060578437",
          projectId: "hydro-12ea5"));
  // runApp(const MyApp());
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
