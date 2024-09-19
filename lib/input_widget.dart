import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Widget"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
            controller: _name,
            onSubmitted: (value) {
              print('submittted value: $value');
            },
              style: const TextStyle(
                color: Colors.black
                ),
                decoration: const InputDecoration(
                  // icon: Icon(Icons.verified_user),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  prefixIcon: Icon(Icons.supervised_user_circle),
                  // suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Enter your Username",
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.black),
                ),
            ),
            const SizedBox(height: 20,),

            TextField(
            controller: _password,
            onSubmitted: (value) {
              print('submittted value: $value');
            },
              style: const TextStyle(
                color: Colors.black
                ),
                decoration: const InputDecoration(
                  // icon: Icon(Icons.verified_user),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  prefixIcon: Icon(Icons.verified_user),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Enter your password",
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black),
                ),
            ),
            const SizedBox(height: 20,),

            ElevatedButton(onPressed: () {
              setState(() {
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Username : ${_password.text}'),
                        Text('Password : ${_password.text}'),
                      ],

                    ),
                  );});
              });
            },
            child: const Text("Submit")),
          ],),
      ),
    );
  }
}