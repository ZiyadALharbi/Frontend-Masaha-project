import 'package:get_storage/get_storage.dart';

import '../../views/auth/log_in.dart';
import '../Customer/CustomerNavBar.dart';
import '../home/home_nav.dart';

pageDirection() {
  final box = GetStorage();

  print(box.read("token"));
  print(box.read("UserType"));
  if (box.hasData('token')) {
    if (box.read("UserType").toString().contains("customer")) {
      return const CustomerNavBar();
    } else {
      return const HomeNav();
    }
  } else {
    return const LogIn();
  }
}
