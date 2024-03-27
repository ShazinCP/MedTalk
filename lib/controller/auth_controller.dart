import 'package:api_miniproject/services/auth_services.dart';
import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  

  AuthServices authServices = AuthServices();


  Future<void> loginUser() async{
    authServices.loginUserService(usernameController.text, passwordController.text);
    notifyListeners();
  }
}