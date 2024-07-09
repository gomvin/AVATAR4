import 'package:avatar4/pages/home_page.dart';
import 'package:avatar4/pages/password_input_page.dart';
import 'package:flutter/material.dart';

import 'calendar_input_page.dart';
import 'captura_valores_input_page.dart';
import 'general_input_page.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputPage SIIII"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ItemComponentWidget(
            title: "General-Inputs",
            toPage: GeneralInputsPage(),
          ),
          ItemComponentWidget(
            title: "Password Inputs",
            toPage: PasswordInputPage(),  // Este debería ser PasswordInputPage
          ),
          ItemComponentWidget(
            title: "Captura valores del Input Page",
            toPage: CapturaValoresdelInputPage(),
          ),
          ItemComponentWidget(
            title: "Calendar Input Page", // Corregido el título de "Calendar Input Rage"
            toPage: CalendarInputPage(),
          ),
        ],
      ),
    );
  }
}
