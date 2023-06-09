import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/local_storage.dart';
import '../mixin/snackbar_mixin.dart';
import 'homescreen/home_screen.dart';

class LoginController extends GetxController with SnackbarMixin {
  var nameController1 = TextEditingController();
  var passwordController1 = TextEditingController();
    var emailController = TextEditingController();
  var passwordController = TextEditingController();
    var nameController = TextEditingController();
  var phoneController = TextEditingController();

  var dropdownValue="actor";

  onchange(String  newValue){
     dropdownValue = newValue ;
     update();


  }

  onSubmit() async {
    String storedname = await TRSecureStorage().readData('name');
    String storedPassword = await TRSecureStorage().readData('password');

    if (nameController1.value.text == storedname &&
        passwordController1.value.text == storedPassword) {
      Get.to(const HomeScreen());
    }
    else{
   showErrorSnackbar(title: "Error", message: "inavalid credtials");


    }
  }

  
}