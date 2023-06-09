import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin SnackbarMixin on GetxController {
  showErrorSnackbar({required String title, required String message}) {
    Flushbar(
      padding: const EdgeInsets.fromLTRB(20, 16, 16, 16),
   
      titleColor: Color(0XFFFF5757),
      messageColor:  Color(0XFFFF5757),
      
      title: title,
      message: message,
      duration: const Duration(seconds: 5),
      backgroundColor: Color(0XFFFFE7E6),
      margin: const EdgeInsets.all(10),
      borderRadius: BorderRadius.circular(10),
      isDismissible: true,
      blockBackgroundInteraction: true,
    ).show(Get.context!);
  }
}