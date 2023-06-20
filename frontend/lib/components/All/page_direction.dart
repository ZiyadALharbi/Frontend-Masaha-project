import 'package:get_storage/get_storage.dart';

import '../../views/auth/log_in.dart';
import '../Customer/CustomerNavBar.dart';
import '../home/home_nav.dart';

pageDirection(){
  final box = GetStorage();
  if(box.hasData('token')){
    if(box.read("UserType").toString().contains("customer")){
      return CustomerNavBar();
    } else if(box.read("UserType").toString().contains("owner")){
      return HomeNav();
    }
  } else{
    return LogIn();
  }
}