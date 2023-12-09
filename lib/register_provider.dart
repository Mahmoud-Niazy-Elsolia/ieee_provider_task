import 'package:flutter/foundation.dart';
import 'package:ieee_provider_task/user_model.dart';

class RegisterProvider extends ChangeNotifier{
  UserModel? user ;
  int counter = 0;

  register(UserModel newUser){
    user = newUser;
  }

  increase(){
    counter++;
    notifyListeners();
  }

  decrease(){
    counter--;
    notifyListeners();
  }
}