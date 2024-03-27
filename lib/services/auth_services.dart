import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class AuthServices{
  Future<void> loginUserService(String userName, String password) async{
    final Uri apiUrl = Uri.parse('http://userhub-backend-server.onrender.com/user/login');
    try{
      Map<String, dynamic> requestBody = {
        'userName': userName,
        'password': password,
      };
      String requestBodyJson = jsonEncode(requestBody);

      final http.Response response = await http.post(apiUrl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: requestBodyJson,
      );
      if(response.statusCode == 200){
        Map<String, dynamic> requestBody = jsonDecode(response.body);
        log("Login Successful! Response: $requestBody");
      }else{
        log("Failed to login. Status code: ${response.statusCode}");
        log("Response body: ${response.body}");
      }
    } catch (e) {
      log("Error during login: $e");
    }
  }
}