import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatar4/pages/avatar_page.dart';
import 'package:avatar4/pages/alert_page.dart';
import 'package:avatar4/pages/alert_page2.dart'; // Importación de AlertPage2
import 'package:avatar4/pages/input_page.dart';
import 'package:avatar4/pages/cuenta_bancaria.dart';

import 'drawer_y_stack_page.dart';
import 'package:avatar4/pages/drawer_y_stack_page.dart'; // Cambié la ruta de importación

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(4.0, 4.0),
                      blurRadius: 12.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://images.pexels.com/photos/3767669/pexels-photo-3767669.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.oregano(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 160,
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              // Lista de elementos del componente
              ItemComponentWidget(title: "Avatar", toPage: const AvatarPage()),
              ItemComponentWidget(title: "Alert", toPage: const AlertPage()),
              ItemComponentWidget(title: "Alert2", toPage: const AlertPage2()), // Añadido AlertPage2
              ItemComponentWidget(title: "Inputs", toPage: const InputPage()),
              ItemComponentWidget(title: "Drawer y Stack", toPage: DrawerYStackPage()),
              ItemComponentWidget(title: "Cuenta Bancaria", toPage: CuentaBancariaPage()),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white70,
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  final String title;
  final Widget toPage;

  const ItemComponentWidget({
    Key? key,
    required this.title,
    required this.toPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(4.0, 4.0),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => toPage));
        },
        leading: const Icon(
          Icons.check_circle_outline,
          color: Color(0xff636b7c),
        ),
        title: Text(title),
        subtitle: Text("Ir a detalle de $title"),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
