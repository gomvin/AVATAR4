import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CuentaBancariaPage extends StatelessWidget {
  const CuentaBancariaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0A1A2F),
        elevation: 0,
        title: Text(
          "BBVA",
          style: TextStyle(
            fontFamily: 'BBVALogoFont',
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blue, // Fondo azul para el Drawer
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueAccent, // Fondo azul más oscuro para el header
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kevin',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Perfil',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 10,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ],
                ),
              ),
              _createDrawerItem(
                icon: Icons.settings,
                text: 'Configuración',
                textStyle: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              _createDrawerItem(
                icon: Icons.lock,
                text: 'Seguridad y privacidad',
                textStyle: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              _createDrawerItem(
                icon: Icons.security,
                text: 'Token Digital',
                textStyle: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              _createDrawerItem(
                icon: Icons.qr_code,
                text: 'Operar con QR/Plin',
                textStyle: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              _createDrawerItem(
                icon: Icons.location_on,
                text: 'Puntos de atención',
                textStyle: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              _createDrawerItem(
                icon: Icons.phone,
                text: 'Comunícate con nosotros',
                textStyle: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              _createDrawerItem(
                icon: Icons.apps,
                text: 'Aplicaciones',
                textStyle: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              _createDrawerItem(
                icon: Icons.info,
                text: 'Acerca de BBVA',
                textStyle: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff0A1A2F),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/background_pattern.jpeg'), // Asegúrate de agregar una imagen de patrón en assets
            ),
          ),
          child: Column(
            children: [
              Spacer(),
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Color(0xff2E86C1),
                child: Text(
                  "KT",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                "Hola Kevin",
                style: GoogleFonts.adamina(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.0),
              GestureDetector(
                onTap: () {
                  // Acción al presionar "Cambiar usuario"
                },
                child: Text(
                  "Cambiar usuario",
                  style: GoogleFonts.adamina(
                    fontSize: 12.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  "Iniciar Sesión",
                  style: GoogleFonts.adamina(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.security,
                        color: Colors.white,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        "Token Digital",
                        style: GoogleFonts.adamina(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        "Puntos de atención",
                        style: GoogleFonts.adamina(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        "Plin",
                        style: GoogleFonts.adamina(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.business_center,
                        color: Colors.white,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        "Acceder a mi negocio",
                        style: GoogleFonts.adamina(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createDrawerItem({IconData? icon, required String text, TextStyle? textStyle}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(text, style: textStyle),
      onTap: () {
        // Handle menu item tap
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CuentaBancariaPage(),
  ));
}
