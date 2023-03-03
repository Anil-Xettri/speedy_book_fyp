import 'package:shared_preferences/shared_preferences.dart';
import 'package:speedy_book/utils/constants.dart';

class SaveUser {
  //saving the id of logged in user
  storeId(int id) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt(userkey, id);
  }

  //readig the id of the logged in user
  Future<int?> readId() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getInt(userkey);
  }

  // deletes all the locally save data
  clearId() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(userkey);
  }
}
