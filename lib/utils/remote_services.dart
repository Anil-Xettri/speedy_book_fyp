import 'package:dio/dio.dart';
import 'package:speedy_book/utils/constants.dart';

class RemoteService {
  Future<Response> login(String email, String password) async {
    String url = "$baseUrl/api/login.php";
    var data = FormData.fromMap(
      {
        "email": email,
        "password": password,
      },
    );
    var response = await Dio().post(url, data: data);
    return response;
  }

  Future<Response> signup(String fullname, String number, String email,
      String password, String confirmpassword) async {
    String url = "$baseUrl/api/signup.php";
    var data = FormData.fromMap(
      {
        "fullname": fullname,
        "number": number,
        "email": email,
        "password": password,
        "confirmpassword": confirmpassword,
      },
    );
    var response = await Dio().post(url, data: data);
    return response;
  }
}
