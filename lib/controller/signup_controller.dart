import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../utils/remote_services.dart';
import '../utils/saveuser.dart';

class SignupController extends GetxController {
  signup(String fullname, String number, String email, String password,
      String confirmpassword, BuildContext context) async {
    var navigator = Navigator.of(context);
    RemoteService service = RemoteService();
    var response = await service.signup(
        fullname, number, email, password, confirmpassword);
    bool status = response.data['status'];
    if (status == false) {
      Fluttertoast.showToast(msg: response.data['profile']['id']);
    } else {
      // log(response.data['profile']['id'].toString());
      Fluttertoast.showToast(msg: response.data['message']);
      SaveUser saveUser = SaveUser();
      // saveUser.storeId(response.data['profile']['id']);
      navigator.pushNamedAndRemoveUntil('/loginpage', (a) => false);
    }
  }
}
