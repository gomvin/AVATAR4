import 'package:flutter/material.dart';

class PasswordInputPage extends StatefulWidget {
  @override
  State<PasswordInputPage> createState() => _PasswordInputsPageState();
}

class _PasswordInputsPageState extends State<PasswordInputPage> {
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password-InputPage"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          obscureText: isInvisible,  // Corregido a isInvisible
          decoration: InputDecoration(
            hintText: "Ingrese la contraseña",
            suffixIcon: IconButton(
              icon: isInvisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
              onPressed: () {
                setState(() {
                  isInvisible = !isInvisible;  // Mover setState para envolver el cambio de estado
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
