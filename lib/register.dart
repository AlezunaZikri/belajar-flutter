import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _birthDay = TextEditingController();
  final TextEditingController _Phone = TextEditingController();
  final TextEditingController _password = TextEditingController();
  String? _gender;
  bool? _agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("register.dart"),
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Registration",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 30),

            TextField(
              controller: _fullName,
              onSubmitted: (value) {
                print('Submitted value: $value');
              },
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                prefixIcon: Icon(Icons.person),
                hintText: "Enter your Full Name",
                labelText: "Full Name",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: _birthDay,
              onSubmitted: (value) {
                print('Submitted value: $value');
              },
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                prefixIcon: Icon(Icons.cake),
                hintText: "Enter your Birthday",
                labelText: "Birthday",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: _Phone,
              onSubmitted: (value) {
                print('Submitted value: $value');
              },
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                prefixIcon: Icon(Icons.phone_android),
                hintText: "Enter your Phone Number",
                labelText: "Phone Number",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: _password,
              onSubmitted: (value) {
                print('Submitted value: $value');
              },
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Enter your Password",
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              "Jenis Kelamin",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            MyListTile(context, "Cowok"),
            MyListTile(context, "Cewek"),
            MyListTile(context, "Lainnya"),
            const Text(
              "Persetujuan",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),

            ListTile(
              leading: Checkbox(
                value: _agree,
                onChanged: (value) {
                  setState(() {
                    _agree =
                        value!; // Mengatur nilai _agree berdasarkan nilai dari checkbox
                  });
                },
              ),
              title: const Text("Saya Setuju"),
            ),

            // ListTile(
            //   title: Text("Cewek"),
            //   leading: Radio<String>(
            //     value: "Cewek",
            //     groupValue: _gender,
            //     onChanged: (value) {
            //       setState(() {
            //         _gender = value;
            //       });
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         SnackBar(content: Text("Kamu Memilih $_gender"),
            //         duration: const Duration(milliseconds: 6),
            //         )
            //       );
            //     },
            //   ) ,
            // ),

            Center(
              child: Visibility(
                visible: _agree! ? true : false,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Fullname : ${_fullName.text}'),
                              Text('Date of Birth : ${_birthDay.text}'),
                              Text('Telephone Number : ${_Phone.text}'),
                              Text('Password : ${_password.text}'),
                              Text('Gender : $_gender'),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  key:null,
                  child: const Text("Register"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  ListTile MyListTile(BuildContext context, String data) {
    return ListTile(
      title: Text(data),
      leading: Radio<String>(
        value: data,
        groupValue: _gender,
        onChanged: (value) {
          setState(() {
            _gender = value;
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Kamu Memilih $_gender"),
            duration: const Duration(milliseconds: 6),
          ));
        },
      ),
    );
  }
}
