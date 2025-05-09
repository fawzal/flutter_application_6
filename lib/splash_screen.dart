import 'package:flutter/material.dart';
import 'package:flutter_application_6/dashboard_2_screen.dart';
import 'package:flutter_application_6/login_with_state.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
       final box = GetStorage();
       final islogin = box.read("sudah_login");
       if (islogin == null){
        Get.off(() => login2());
      //   Navigator.push(
      // context,
      // MaterialPageRoute(
      //   builder: (context) => const login2(),
      //    ), );
       }
       else{
        Get.off(() => Dashboard2Screen());
      //   Navigator.push(
      // context,
      // MaterialPageRoute(
      //   builder: (context) => const Dashboard2Screen(),
      //    ), );
       }
  });

}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}