import 'package:flutter/material.dart';

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
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: emailController),
          TextField(
            controller: passwordController,
            obscureText: passwordNyala,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter Your Password",
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
              tampilPassword();
              print("email = ${emailController.text}");
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}