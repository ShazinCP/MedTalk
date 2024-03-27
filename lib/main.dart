import 'package:api_miniproject/controller/auth_controller.dart';
import 'package:api_miniproject/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthController(),)
      ],
      child: const MaterialApp(
        title: 'Mini',
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
