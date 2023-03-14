import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:speedy_book/utils/remote_services.dart';
import 'package:speedy_book/utils/saveuser.dart';

class LoginController extends GetxController {
  login(String email, String password, BuildContext context) async {
    var navigator = Navigator.of(context);
    RemoteService service = RemoteService();
    var response = await service.login(email, password);
    bool status = response.data['status'];
    if (status == false) {
      Fluttertoast.showToast(msg: response.data['profile']['id']);
    } else {
      log(response.data['profile']['id'].toString());
      Fluttertoast.showToast(msg: response.data['message']);
      SaveUser saveUser = SaveUser();
      saveUser.storeId(response.data['profile']['id']);
      navigator.pushNamedAndRemoveUntil('/homepage', (a) => false);
    }
  }
}
