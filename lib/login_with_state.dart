import 'package:flutter/material.dart';
import 'package:flutter_application_6/dashboard_2_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class login2 extends StatefulWidget {
  const login2({super.key});

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

bool passwordNyala = true;
tampilPassword (){
  setState(() {
    passwordNyala = !passwordNyala;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Subkhan Login"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Subkhan Kocak",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              prefixIcon: Icon(Icons.mail),
            ),),
            SizedBox(height: 8),
            TextField(
              controller: passwordController,
              obscureText: passwordNyala,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Yahaha hayukk",
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
                ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: //Icon(passwordNyala ? Icons.visibility : Icons.visibility_off),
                IconButton(onPressed: (){
                  tampilPassword();
                }, 
                icon: Icon(passwordNyala ? Icons.visibility: Icons.visibility_off)
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                final box = GetStorage();
                box.write('sudah_login', true);
                tampilPassword();
                Get.off(() => Dashboard2Screen());

                // Navigator.push(
                //   context, 
                //   MaterialPageRoute(builder:(context) => Dashboard2Screen(),
                //   ),
                //   );
                print("email = ${emailController.text}");
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}